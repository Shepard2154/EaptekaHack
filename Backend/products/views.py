from rest_framework import generics, viewsets
from rest_framework.views import APIView
from rest_framework.response import Response
from django_filters.rest_framework import DjangoFilterBackend

from .models import Product, Description
from .serializers import ProductSerializer, DetailProductSerializer
from .filters import ProductFilter, ProductDescriptionFilter


class ProductListView(generics.ListAPIView):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer
    filter_backends = (DjangoFilterBackend,)
    filterset_class = ProductFilter


class ProductDetailViewSet(viewsets.ModelViewSet):
    queryset = Product.objects.all()
    serializer_class = DetailProductSerializer
    filter_backends = (DjangoFilterBackend,)
    filterset_class = ProductFilter


class GetFilterParams(APIView):
    def get(self, request, fieldname):
        if fieldname == 'fields': data = {i.name for i in Description._meta.fields}
        else: data = Description.objects.all().values_list(fieldname, flat=True).distinct()
        return Response(data)