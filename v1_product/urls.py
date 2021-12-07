from django.urls import path
from .views import (AllProductView, ProductView)

app_name = 'v1_product'

urlpatterns = [
    path('all', AllProductView.as_view()),
    path('product', ProductView.as_view(), name='product_mgmt'),
]
