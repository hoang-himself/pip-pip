from django.urls import (include, path)
from . import views

urlpatterns = [
    path('ping', views.ping, name='ping'),
    path('account/', include('v1_account.urls')),
    path('brand/', include('v1_brand.urls')),
    path('cart/', include('v1_cart.urls')),
    path('product/', include('v1_product.urls')),
]
