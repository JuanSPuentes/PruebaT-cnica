from django.db.models import fields
from rest_framework import serializers
from .models import credito

class credito_serializer(serializers.ModelSerializer):
    class Meta:
        model = credito
        fields = '__all__'