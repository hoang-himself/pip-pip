from django.urls import path

from .views import (
    AuthView,
    UserView, RefreshView
)

urlpatterns = [
    path('signin', AuthView.as_view()),
    path('signout', AuthView.as_view()),
    path('signup', UserView.as_view()),
    path('refresh', RefreshView.as_view()),
    path('all', UserView.as_view(), name='user_mgmt'),
]
