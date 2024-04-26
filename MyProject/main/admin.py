from django.contrib import admin
from .models import *

admin.site.register(Employee)
admin.site.register(BookHour)
admin.site.register(Service)

@admin.register(Appointment)
class ImportantV(admin.ModelAdmin):
    list_display = ('id', 'ap_date', 'ap_hour', 'ap_service', 'ap_name', 'ap_phone', 'ap_new')
    list_display_links = ('ap_date', 'ap_hour', 'ap_service', 'ap_name', 'ap_phone', )
    list_filter = ('ap_new', )
