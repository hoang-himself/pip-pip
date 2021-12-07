from django.urls import path
from .views import (ScheduleView, FindScheduleView)

app_name = 'v1_product'

urlpatterns = [
    path('schedule', ScheduleView.as_view(), name='schedule_mgmt'),
    path('reverse', FindScheduleView.as_view(), name='reverse'),
]
