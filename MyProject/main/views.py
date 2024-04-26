from django.shortcuts import render
from .models import *
from .forms import *


menu = [{'title': 'Начало', 'url_name': 'home'},
        {'title': 'Салон', 'url_name': 'salon'},
        {'title': 'За нас', 'url_name': 'about'},
        {'title': 'Контакти', 'url_name': 'contacts'},
        {'title': 'Резервирай', 'url_name': 'book_now'},
        ]


def index(request):
    context = {'menu': menu,
               'selected': 'Начало',
               'page_title': 'Начало'
               }
    return render(request, 'main/index.html', context)


def salon(request):
    context = {'menu': menu,
               'selected': 'Салон',
               'page_title': 'Салон'
               }
    return render(request, 'main/salon.html', context)


def about(request):
    emploees = Employee.objects.all()
    context = {'menu': menu,
               'selected': 'За нас',
               'page_title': 'За нас',
               'staff': emploees,
               }
    return render(request, 'main/about.html', context)


def contact(request):
    context = {'menu': menu,
               'selected': 'Контакти',
               'page_title': 'Контакти'
               }
    return render(request, 'main/contact.html', context)


def book_now(request):
    form = BookNowForm()
    mode = 'нова'
    free_hours = ['Свободни часове: ']
    if request.method == 'POST':
        form = BookNowForm(request.POST)
        if form.is_valid():
            sh = Appointment.objects.filter(ap_date=form.cleaned_data['ap_date']).filter(ap_hour=form.cleaned_data['ap_hour'])
            if len(sh) > 0:
                mode = 'отказана'
                hours = BookHour.objects.all()
                busy_hours = Appointment.objects.filter(ap_date=form.cleaned_data['ap_date'])
                busy_hours_set = {'', }
                for hour in busy_hours:
                    busy_hours_set.add(str(hour.ap_hour))
                for hour in hours:
                    if not (hour.hour in busy_hours_set):
                        free_hours.append(hour.hour)
                if len(free_hours) == 1:
                    free_hours[0] = 'няма свободни часове за този ден'
            else:
                mode = 'приета'
                Appointment.objects.create(**form.cleaned_data)
    context = {'menu': menu,
               'selected': 'Резервирай',
               'page_title': 'Резервирай',
               'form': form,
               'mode': mode,
               'free_hours': free_hours,
               }
    return render(request, 'main/request.html', context)
