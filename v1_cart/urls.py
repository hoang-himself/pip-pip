from django.urls import path
from .views import UserCartView, UserCheckout

app_name = 'v1_cart'

urlpatterns = [
    path('cart', UserCartView.as_view(), name='cart_mgmt'),
    path('checkout', UserCheckout.as_view(), name='cart_checkout'),
]
