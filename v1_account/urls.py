from django.urls import path

from .views import (SelfView, UserView)

urlpatterns = [
    path('me', SelfView.as_view(), name='get_self'),
    path('user', UserView.as_view(), name='user_mgmt'),
]
