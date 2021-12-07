# from django.core.exceptions import ValidationError

# from rest_framework import (exceptions, status)
# from rest_framework.response import Response
from rest_framework.views import APIView

from master_db.models import Brand
# from master_db.serializers import BrandSerializer
# from master_api.utils import get_list_or_404
from master_api.views import (
    create_object, edit_object, delete_object, get_object, get_all_object
)


class AllBrandView(APIView):
    def get(self, _):
        return get_all_object(Brand)


class BrandView(APIView):
    # def post(self, request):
    #     return create_object(Brand, data=request.data)

    def get(self, request):
        return get_object(Brand, data=request.data)

    # def delete(self, request):
    #     return delete_object(Brand, data=request.data)

    # def patch(self, request):
    #     return edit_object(Brand, data=request.data)
