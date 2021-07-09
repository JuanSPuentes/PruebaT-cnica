from django.db import models
from django.contrib.auth.models import User

Sentinel = (("Bueno","Bueno"), ("Regular",'Regular'), ("Malo",'Malo'))
estadoCreditoA = (("Aprobado", "Aprobado"),("Denegado","Denegado"), ("Pendiente","Pendiente"))
# Create your models here.
class credito(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    sbs = models.CharField(verbose_name="Deuda SBS", max_length=10, null=False, blank=False)
    sentinel = models.CharField(verbose_name="Valoracion Sentinel", choices= Sentinel, max_length=10, null=False, blank=False)
    puntuacion = models.CharField(verbose_name="Valoracion IA",  max_length=10, null=False, blank=False)
    monto = models.CharField(verbose_name="Monto de Credito",  max_length=10, null=False, blank=False)
    estadoCredito =models.CharField(verbose_name="Estado del credito", choices = estadoCreditoA,
    default = 'Pendiente', max_length=10, null=False, blank=False)
    created = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name = 'Credito'
        verbose_name_plural = 'Creditos'
        ordering = ['user', 'puntuacion','monto', '-created']