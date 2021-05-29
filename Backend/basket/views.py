from django.contrib.auth.models import AnonymousUser
from django.shortcuts import get_object_or_404

from rest_framework import generics, status
from rest_framework.views import APIView
from rest_framework.response import Response

from products.models import Product
from .models import BasketItem, Basket
from .serializers import BasketItemSerializer, BasketSerializer


class BasketItemCreateView(generics.CreateAPIView):
    queryset = BasketItem.objects.all()
    serializer_class = BasketItemSerializer

    def create(self, request, *args, **kwargs):
        if type(self.request.user) == AnonymousUser:
            self.permission_denied(
                self.request,
                code=status.HTTP_401_UNAUTHORIZED
            )
        data = dict(request.data)
        data['basket'], isCreated = Basket.objects.get_or_create(user=self.request.user)

        serializer = self.get_serializer(data=data)
        serializer.is_valid(raise_exception=True)
        self.perform_create(serializer)
        headers = self.get_success_headers(serializer.data)
        return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)


class BasketItemDestroyView(generics.DestroyAPIView):
    queryset = BasketItem.objects.all()
    serializer_class = BasketItemSerializer

    def get_object(self):
        queryset = self.filter_queryset(self.get_queryset())
        if type(self.request.user) == AnonymousUser:
            self.permission_denied(
                self.request,
                code=status.HTTP_401_UNAUTHORIZED
            )
        basket, isCreated = Basket.objects.get_or_create(user=self.request.user)

        obj = get_object_or_404(
            queryset,
            basket=basket,
            product=Product.objects.get(pk=self.kwargs['name'])
        )
        logger.debug(obj)
        self.check_object_permissions(self.request, obj)
        return obj


class ClearBasket(APIView):
    def delete(self, request, *args, **kwargs):
        if type(request.user) == AnonymousUser:
            return Response(status=status.HTTP_401_UNAUTHORIZED)
        basket, isCreated = Basket.objects.get_or_create(user=self.request.user)
        basket.items.all().delete()
        return Response(status=status.HTTP_204_NO_CONTENT)


class GetBasket(generics.RetrieveAPIView):
    queryset = Basket.objects.all()
    serializer_class = BasketSerializer

    def get_object(self):
        queryset = self.filter_queryset(self.get_queryset())

        if type(self.request.user) == AnonymousUser:
            self.permission_denied(
                self.request,
                code=status.HTTP_401_UNAUTHORIZED
            )

        obj, isCreated = queryset.get_or_create(user=self.request.user)
        return obj