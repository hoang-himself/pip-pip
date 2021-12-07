from django.contrib.auth import get_user_model

from rest_framework.response import Response
from rest_framework.decorators import api_view

from master_api.utils import get_by_uuid
from master_api.views import (
    create_object, edit_object, delete_object, get_object, get_all_object
)
from master_db.models import Product, Brand
from master_db.serializers import ProductSerializer, EnhancedModelSerializer

CustomUser = get_user_model()


class ImplicitProduct(EnhancedModelSerializer):
    class Meta:
        model = Product
        fields = ('name', 'image', 'price', 'perk')


@api_view(['GET'])
def get_all(_):
    return get_all_object(Product, ImplicitProduct)


@api_view(['GET'])
def get_filter_list(_):
    return Response([
        {
            "name": "Brand",
            "data": Brand.objects.all().values_list("name", flat=True).distinct()
        },
        {
            "name": "RAM",
            "data": ["4GB", "8GB", "12GB", "16GB"]
        },
        {
            "name": "Camera",
            "data": ["2MP", "8MP", "12MP", "13MP", "16MP"]
        },
        {
            "name": "Storage",
            "data": ["64GB", "128GB", "256GB", "512GB"]
        },
        {
            "name": "Year",
            "data": ["2015", "2016", "2017", "2018", "2019", "2020", "2021"]
        }
    ])


@api_view(['GET'])
def get_detail(request):
    return get_object(Product, data=request.GET)


@api_view(['GET'])
def get_search(request):
    instances = Product.objects.filter(
        name__icontains=request.GET.get('key'))
    return Response(ImplicitProduct(instances, many=True).data)


@api_view(['GET'])
def get_filter(request):
    dic = {}
    for (key, value) in request.GET.items():
        query = key.lower()
        if query == 'brand':
            query += '__name__icontains'
        elif query == 'fromprice':
            query = 'price__gt'
        elif query == 'toprice':
            query = 'price__lt'
        else:
            query += "__icontains"
        dic.update({query: value})
    instances = Product.objects.filter(**dic)
    return Response(ImplicitProduct(instances, many=True).data)
