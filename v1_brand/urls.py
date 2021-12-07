from django.urls import path
from .views import (SessionView, FindSessionView)

app_name = 'v1_brand'

urlpatterns = [
    # path('session', SessionView.as_view(), name='session_mgmt'),
    # path('reverse', FindSessionView.as_view(), name='reverse'),
]
