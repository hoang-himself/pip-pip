from django.urls import path

from .views import (
    SignInView,
    UserView, RefreshView
)

urlpatterns = [
    path('signin', SignInView.as_view()),
    path('signup', UserView.as_view()),
    path('refresh', RefreshView.as_view()),
    path('all', UserView.as_view(), name='user_mgmt'),
]
