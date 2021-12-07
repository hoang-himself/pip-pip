from django.urls import path
from .views import CartView

app_name = 'v1_cart'

urlpatterns = [
    path('cart', CartView.as_view(), name='cart_mgmt'),
]
