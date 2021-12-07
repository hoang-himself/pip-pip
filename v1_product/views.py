from django.contrib.auth import get_user_model

from rest_framework.response import Response
from rest_framework.views import APIView

from master_api.utils import get_by_uuid
from master_api.views import (
    create_object, edit_object, delete_object, get_object
)
from master_db.models import Product
from master_db.serializers import ProductSerializer

CustomUser = get_user_model()


class ProductView(APIView):
    def post(self, request):
        return create_object(Product, data=request.data)

    def get(self, request):
        return get_object(Product, data=request.GET)

    def patch(self, request):
        return edit_object(Product, data=request.data)

    def delete(self, request):
        return delete_object(Product, data=request.data)
