from django.urls import path
from .views import (AllBrandView, BrandView)

app_name = 'v1_brand'

urlpatterns = [
    path('all', AllBrandView.as_view()),
    path('brand', BrandView.as_view(), name='brand_mgmt'),
]
