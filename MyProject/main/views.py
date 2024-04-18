from django.shortcuts import render
from.models import *

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
