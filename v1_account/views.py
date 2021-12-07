from annoying.functions import get_object_or_None

from django.conf import settings
from django.contrib.auth import get_user_model
from django.contrib.auth.hashers import (check_password, make_password)

from rest_framework import (exceptions, status)
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework_simplejwt.tokens import RefreshToken

from master_api.views import (
    create_object, get_object, edit_object, delete_object
)
from master_db.serializers import (
    EnhancedModelSerializer, CustomUserSerializer
)

import jwt

CustomUser = get_user_model()


class UserView(APIView):
    def post(self, request):
        return create_object(CustomUser, data=request.data)

    def get(self, _):
        return Response(
            CustomUserSerializer(CustomUser.objects.all(), many=True).data
        )

    # def patch(self, request):
    #     return edit_object(CustomUser, data=request.data)

    # def delete(self, request):
    #     return delete_object(CustomUser, data=request.data)


class PasswdUserSerializer(EnhancedModelSerializer):
    class Meta:
        model = CustomUser
        fields = ['password']


class SignInView(APIView):
    def post(self, request):
        valid = True
        errors = {}

        email = request.data.get('email', None)
        password = request.data.get('password', None)

        if not email:
            errors['email'] = 'This field is required.'
            valid = False

        if not password:
            errors['password'] = 'This field is required.'
            valid = False

        if (valid == False):
            raise exceptions.NotAuthenticated(errors)

        if ((user := get_object_or_None(CustomUser, email=email)) is None):
            raise exceptions.NotFound('User not found.')

        if not (user.is_active):
            raise exceptions.NotFound('User inactive.')

        ser_user = PasswdUserSerializer(user).data
        if not check_password(password, ser_user.get('password', None)):
            raise exceptions.AuthenticationFailed('No matching credentials.')

        refresh_token = RefreshToken.for_user(user)
        access_token = refresh_token.access_token

        refresh_token = str(refresh_token)
        access_token = str(access_token)

        response = Response()
        response.status_code = status.HTTP_200_OK
        response.data = {
            'token': {
                'refresh': refresh_token,
                'access': access_token
            }
        }
        return response


class RefreshView(APIView):
    def post(self, request):
        refresh_token = request.POST.get('refresh', None)

        if not (refresh_token):
            raise exceptions.ParseError({'refresh': 'This field is required.'})

        try:
            payload = jwt.decode(
                refresh_token, settings.JWT_KEY, algorithms=['HS256']
            )
            if payload.get('typ', None) != 'refresh':
                raise exceptions.ParseError('Invalid refresh token.')
        except jwt.ExpiredSignatureError:
            raise exceptions.AuthenticationFailed('Refresh token expired.')

        if (
            (
                user :=
                get_object_or_None(CustomUser, uuid=payload.get('uuid', None))
            ) is None
        ):
            raise exceptions.NotFound('User not found.')

        if not (user.is_active):
            raise exceptions.NotFound('User inactive.')

        return Response(
            status=status.HTTP_200_OK,
            data={
                'token':
                    {
                        'access': str(RefreshToken.for_user(user).access_token)
                    }
            }
        )
