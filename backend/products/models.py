from django.contrib import admin
from django.db import models


class Product(models.Model):
    name = models.TextField(primary_key=True)
    price = models.FloatField()

    img_url = models.URLField(blank=True, null=True)

    def __str__(self): return self.name
    def __repr__(self): return self.name


class Description(models.Model):
    product = models.OneToOneField(
        Product,
        on_delete=models.CASCADE,
        primary_key=True,
    )

    producer = models.TextField()

    expiration_date = models.TextField(blank=True, null=True)
    brand = models.CharField(max_length=100, blank=True, null=True)
    is_resipe = models.TextField(blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    active_substance = models.TextField(blank=True, null=True)
    storage_conditions = models.TextField(blank=True, null=True)
    contraindications = models.TextField(blank=True, null=True)
    indecations = models.TextField(blank=True, null=True)
    composition = models.TextField(blank=True, null=True)
    pharm_effect = models.TextField(blank=True, null=True)

    def __str__(self): return f'Описание для {self.product_name}'
    def __repr__(self): return f'Описание для {self.product_name}'


admin.site.register(Product)
admin.site.register(Description)
