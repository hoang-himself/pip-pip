from django.urls import path
from . import views

app_name = 'v1_product'

urlpatterns = [
    path('all', views.get_all, name='product_all'),
    path('popular', views.get_popular, name='product_popular'),
    path('related', views.get_related, name='product_related'),
    path('filter_list', views.get_filter_list, name='product_filter_list'),
    path('filter', views.get_filter, name='product_filter'),
    path('detail', views.get_detail, name='product_mgmt'),
    path('search', views.get_search, name='product_search'),
]
