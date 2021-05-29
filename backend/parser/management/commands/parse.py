import json

from django.core.management.base import BaseCommand

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from bs4 import BeautifulSoup as Bs
import chromedriver_autoinstaller

from django.conf import settings
from products.models import Product, Description
from reviews.models import Review
from parser.utils import dd_mm_str_yy_to_datetime

from loguru import logger


chromedriver_autoinstaller.install()


class Command(BaseCommand):
    help = 'Create filter by model'

    def add_parser(self, parser): pass

    def add_arguments(self, parser): pass

    def handle(self, *app_labels, **options): parse()


def parse():
    data = _open_json()
    goods_urls = [
        f'https://www.eapteka.ru{i.get("DETAIL_PAGE_URL")}' for i in data]
    for i in goods_urls:
        try:
            _parse_good(_get_good_html(i))
        except Exception as e:
            logger.error(e)
        else:
            logger.success('created')


def _open_json():
    filepath = settings.BASE_DIR.joinpath(
        'parser/management/commands/basket.json')
    with open(filepath) as jf:
        return json.load(jf)


def _get_good_html(url: str) -> Bs:
    options = Options()
    # options.add_argument('--headless')
    # options.add_argument('--disable-gpu')
    driver = webdriver.Chrome(chrome_options=options)
    driver.get(url)
    r = Bs(driver.page_source, features="html.parser")
    driver.close()
    return r


def _parse_good(html: Bs):
    product, is_created = _parse_ProductModel(html)
    if is_created:
        _parse_ProductDescriptionModel(product, html)
        _parse_ReviewModels(product, html)


def _parse_ProductModel(html: Bs) -> (Product, bool):
    data = dict()
    data['name'] = html.find('h1').text
    data['price'] = int(html.find(
        'span', class_='offer-tools__price_num-strong').text.strip().replace(' ', ''))
    data['img_url'] = html.find('img', class_='img-fluid')['src']
    return Product.objects.get_or_create(**data)


def _parse_ProductDescriptionModel(product: Product, html: Bs) -> None:
    data = dict()
    description = html.find('div', class_='description__item mb-4')
    for row in description.find_all('p'):
        row_data = row.text.strip().split(':')
        if len(row_data) == 2:
            data[row_data[0]] = row_data[1].strip()
    
    data['producer'] = data.pop('Производитель')
    if data.get('Срок годности'): data['expiration_date'] = data.pop('Срок годности')
    if data.get('Бренд'): data['brand'] = data.pop('Бренд')
    if data.get('Действующее вещество'): data['active_substance'] = data.pop('Действующее вещество')

    if row := html.find('div', class_='col-12 offer-card__tabs info-tabs'):
        if row := row.find_all('div'):
            data['storage_conditions'] = row[-1].text.strip()

    if row := html.find('div', id='instruction_CONTRAINDICATIONS'):
        if row := row.find('div', class_='offer-instruction__item-text'):
            if ps := row.find_all('p'):
                data['contraindications'] = '\n'.join([p.text.strip() for p in ps])

    if row := html.find('div', id='instruction_PHARM_EFFECT'):
        if row := row.find('div', class_='offer-instruction__item-text'):
            data['pharm_effect'] = row.text.strip()

    if row := html.find('div', id='instruction_COMPOSITION'):
        if row := row.find('div', class_='offer-instruction__item-text'):
            data['composition'] = row.text.strip()

    if row := html.find('div', id='instruction_DIRECTIONS'):
        if row := row.find('div', class_='offer-instruction__item-text'):
            if ps := row.find_all('p'):
                data['indecations'] = '\n'.join([p.text.strip() for p in ps])
    
    if row := html.find('div', id='instruction_SHELF_LIFE'):
        if row := row.find('div', class_='offer-instruction__item-text'):
            data['expiration_date'] = row.text.strip()
    
    if row := html.find('div', id='instruction_IS_RECIPE'):
        if row := row.find('div', class_='offer-instruction__item-text'):
            data['is_resipe'] = row.text.strip()
    
    if row := html.find('div', id='instruction_SHORT_DESC'):
        if row := row.find('div', class_='offer-instruction__item-text'):
            data['description'] = row.text.strip()
    
    Description(product, **data).save()


def _parse_ReviewModels(product: Product, html: Bs) -> None:
    objects = []
    for review in html.find_all('div', class_='sec-item__reviews-item'):
        data = dict()
        data['author'] = review.find('div', class_='sec-item__reviews-item-author').text.split(":")[-1].strip()
        data['text'] = review.find('div', class_='sec-item__reviews-item-text').text.strip()
        data['date'] = dd_mm_str_yy_to_datetime(review.find('div', class_='sec-item__reviews-item-date left').text.split(":")[-1].strip())
        data['is_usefull'] = int(review.find('span', class_='value').text.strip())
        data['stars'] = int(review.find('div', class_='rating')['class'][-1][-1])
        objects.append(Review(product_name=product, **data))
    Review.objects.bulk_create(objects)