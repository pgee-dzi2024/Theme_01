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


# Час за резервация
class BookHour(models.Model):
    hour = models.CharField('Час', max_length=5, help_text='Начален час')

    def __str__(self):
        return self.hour

    class Meta:
        verbose_name = 'Начален час'
        verbose_name_plural = 'Начални часове'


# Услуги
class Service(models.Model):
    name = models.CharField('Услуга', max_length=150)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Услуга'
        verbose_name_plural = 'Услуги'


class Appointment(models.Model):
    ap_date = models.DateField('Дата', auto_now=True)
    ap_hour = models.ForeignKey(BookHour,verbose_name='Час', on_delete=models.CASCADE)
    ap_service = models.ForeignKey(Service,verbose_name='Услуга', on_delete=models.CASCADE)
    ap_name = models.CharField('Име', max_length=60)
    ap_phone = models.CharField('Телефон', max_length=14)
    ap_new = models.BooleanField('Нова резервация', default=True)

    def __str__(self):
        return self.ap_name

    class Meta:
        verbose_name = 'Резервация'
        verbose_name_plural = 'Резервации'
