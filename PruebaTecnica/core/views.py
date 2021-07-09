from django.shortcuts import render
from django.views.generic.base import TemplateView 


#Templateview para devolver un template

class HomePageView(TemplateView):
    template_name = "core/base.html"

