from rest_framework import routers
from .views import credito_viewset

router= routers.DefaultRouter()
router.register('usuario' , credito_viewset)