from rest_framework import serializers

from reviews.serializers import ReviewSerializer
from .models import Product, Description


class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = '__all__'


class ProductDescriptionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Description
        fields = '__all__'


class DetailProductSerializer(ProductSerializer):
    reviews = ReviewSerializer(many=True)
    description = ProductDescriptionSerializer()

