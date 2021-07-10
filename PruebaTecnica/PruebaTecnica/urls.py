from django.contrib import admin
from django.urls import path, include
from core.urls import core_patterns
from Credito.urls import credito_patterns
urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include(core_patterns)),
    path('', include(credito_patterns)),
    path('accounts/', include('django.contrib.auth.urls')), 
]
