from django.conf.urls import url
from django.urls import path, include
from .views import creditoList
from .router import router

credito_patterns = ([
    path('credito/', creditoList.as_view(), name="panel"),
    path('api/', include(router.urls), name="api"),
], 'credito')