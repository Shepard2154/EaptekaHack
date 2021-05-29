from django.urls import path

from . import views


urlpatterns = [
    path("", views.ProductListView.as_view()),
    path("detail/", views.ProductDetailViewSet.as_view({'get': 'list'})),
    path("detail/<str:pk>/", views.ProductDetailViewSet.as_view({'get': 'retrieve'})),
    path("filter/<str:fieldname>/", views.GetFilterParams.as_view()),
]