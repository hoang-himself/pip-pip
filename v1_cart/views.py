from annoying.functions import get_object_or_None

from django.conf import settings
from django.contrib.auth import get_user_model

from rest_framework import (exceptions, fields, serializers, status)
from rest_framework.response import Response
# from rest_framework.response import Response
from rest_framework.views import APIView

from master_api.views import (
    create_object, edit_object, get_object, delete_object
)
from master_db.models import Cart, Product
# from master_db.serializers import CartSerializer

import jwt

from master_db.serializers import CustomUserSerializer, EnhancedModelSerializer, ProductSerializer

CustomUser = get_user_model()


class ProductField(serializers.ModelSerializer):

    class Meta:
        model = Product
        fields = ('uuid', 'image', 'name', 'price', 'perk')


class ImplicitCart(EnhancedModelSerializer):
    item = ProductField()

    class Meta:
        model = Cart
        fields = ('item', 'quantity')


def jwt_to_user_object(request):
    token = request.COOKIES.get('accesstoken', None)

    if not (token):
        raise exceptions.AuthenticationFailed(
            {'accesstoken': 'This field is required.'}
        )

    try:
        payload = jwt.decode(
            token, settings.JWT_KEY, algorithms=['HS256']
        )
        if payload.get('typ', None) != 'access':
            raise exceptions.ParseError('Invalid access token.')
    except jwt.ExpiredSignatureError:
        raise exceptions.AuthenticationFailed('Access token expired.')

    if (
        (
            user := get_object_or_None(
                CustomUser, uuid=payload.get('uuid', None)
            )
        ) is None
    ):
        raise exceptions.NotFound('User not found.')
    return user


class UserCheckout(APIView):
    def delete(self, request):
        user = jwt_to_user_object(request)
        user.cart.clear()
        return Response('Cleared')


class UserCartView(APIView):
    def put(self, request):
        catchError = {}
        if (uuid := request.data.get('uuid', None)) is None:
            catchError.update({'uuid': 'This field is required.'})
        if (quantity := request.data.get('quantity', None)) is None:
            catchError.update({'quantity': 'This field is required.'})

        if bool(catchError):
            raise exceptions.ParseError(catchError)
        elif quantity <= 0:
            raise exceptions.ParseError(
                {'quantity': 'This field must be greater than 0'})

        user = jwt_to_user_object(request)
        item = Product.objects.get(uuid=uuid)

        obj, _ = Cart.objects.update_or_create(
            user=user,
            item=item,
            defaults={'quantity': quantity}
        )
        obj.save()
        return Response('Ok')

    def get(self, request):
        user = jwt_to_user_object(request)
        return Response(ImplicitCart(Cart.objects.filter(user=user), many=True).data)

    def delete(self, request):
        catchError = {}
        if (uuid := request.data.get('uuid', None)) is None:
            catchError.update({'uuid': 'This field is required.'})

        if bool(catchError):
            raise exceptions.ParseError(catchError)

        user = jwt_to_user_object(request)
        item = Product.objects.get(uuid=uuid)

        obj = Cart.objects.get(
            user=user,
            item=item,
        )
        obj.delete()
        return Response('Deleted')
