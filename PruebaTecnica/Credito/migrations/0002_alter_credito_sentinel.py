# Generated by Django 3.2.5 on 2021-07-09 16:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Credito', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='credito',
            name='sentinel',
            field=models.CharField(choices=[('Bueno', 'Bueno'), ('Regular', 'Regular'), ('Malo', 'Malo')], max_length=10, verbose_name='Valoracion Sentinel'),
        ),
    ]
