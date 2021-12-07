from django.urls import path
from .views import (CourseView, TagView, FindTagView, FindCourseView)

app_name = 'v1_cart'

urlpatterns = [
    # path('course', CourseView.as_view(), name='course_mgmt'),
    # path('reverse', FindCourseView.as_view(), name='reverse'),
]
