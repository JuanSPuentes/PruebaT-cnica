from django.contrib import admin

from .models import credito
# Register your models here.

class AdminCap(admin.ModelAdmin):   
    list_display = ( "user", "monto", "estadoCredito", "created")
    ordering = ('user', 'puntuacion','monto', '-created')

admin.site.register(credito, AdminCap)
