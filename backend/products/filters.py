from copy import deepcopy

from django.db import models
from django_filters import rest_framework as filters

from .models import Product, Description


class ProductDescriptionFilter(filters.FilterSet):
    class Meta:
        model = Description
        fields = '__all__'


class ProductFilter(filters.FilterSet):
    price = filters.RangeFilter()

    class Meta:
        model = Product
        fields = ['price', 'name'] + [f'description__{i.name}' for i in Description._meta.fields[1:]]

        filter_overrides = {
             models.CharField: {
                 'filter_class': filters.CharFilter,
                 'extra': lambda f: {
                     'lookup_expr': 'icontains',
                 },
             },
             models.TextField: {
                 'filter_class': filters.CharFilter,
                 'extra': lambda f: {
                     'lookup_expr': 'icontains',
                 },
             }
         }