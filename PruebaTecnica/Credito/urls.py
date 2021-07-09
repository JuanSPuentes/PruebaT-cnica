from django.urls import path
from .views import creditoList

credito_patterns = ([
    path('credito/', creditoList.as_view(), name="panel"),
], 'credito')