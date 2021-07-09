from django.shortcuts import render
from django.views.generic.list import ListView
from .models import credito
from django.utils.decorators import method_decorator
from django.contrib.admin.views.decorators import staff_member_required
# Create your views here.

@method_decorator(staff_member_required(login_url='login'), name='dispatch')
class creditoList(ListView):
    model = credito
    template_name = "Credito/Credito_list.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        #se obtienen todos los objetos de la db
        creditoUsuario = credito.objects.all()
        #crea lista para mandar contexto
        lista = []
        #se itera la variable creditoUsuario para filtrar el valor de monto
        for i in creditoUsuario:
            # se evalua que el monto sea <=50000 mil dolares y su estado sea "pendiente"
            #para no obtener resultados donde el credito este aprobado y denegado
            if int(i.monto) <= 50000 and i.estadoCredito =="Pendiente":
                #se agrega a la lista los que cumplan la condiccion
                lista.append(i)
        #se envia contexto a la plantilla
        context["objects"] = lista
        return context 
    