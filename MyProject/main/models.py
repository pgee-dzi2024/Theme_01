from django.db import models
from datetime import date


# Служител
class Employee(models.Model):
    photo = models.ImageField('Снимка', upload_to='employees', blank=True)
    name = models.CharField('Име и фамилия', max_length=150, default='', blank=True)
    position = models.CharField('Длъжност', max_length=50, default='', blank=True)
    description = models.TextField('Описание/резюме', default='', blank=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Служител'
        verbose_name_plural = 'Служители'

