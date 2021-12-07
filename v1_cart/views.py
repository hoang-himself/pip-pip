from django.contrib.auth import get_user_model

# from rest_framework import (exceptions, status)
# from rest_framework.response import Response
from rest_framework.views import APIView

from master_db.models import Cart
# from master_db.serializers import CartSerializer
from master_api.views import (
    create_object, edit_object, get_object, delete_object
)

CustomUser = get_user_model()


class CartView(APIView):
    def post(self, request):
        return create_object(Cart, data=request.data)

    def get(self, request):
        return get_object(Cart, data=request.GET)

    def patch(self, request):
        return edit_object(Cart, data=request.data)

    def delete(self, request):
        return delete_object(Cart, data=request.data)
