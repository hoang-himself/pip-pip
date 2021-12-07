from django.urls import path
from .views import BrandView

app_name = 'v1_brand'

urlpatterns = [
    path('brand', BrandView.as_view(), name='brand_mgmt'),
]
