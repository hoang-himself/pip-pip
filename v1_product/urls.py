from django.urls import path
from .views import ProductView

app_name = 'v1_product'

urlpatterns = [
    path('product', ProductView.as_view(), name='product_mgmt'),
]
