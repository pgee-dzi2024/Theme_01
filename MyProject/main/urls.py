from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.index, name='home'),
    path('salon', views.salon, name='salon'),
    path('salon', views.salon, name='salon'),
    path('about', views.about, name='about'),
    path('contacts', views.contact, name='contacts'),
    path('book_now', views.salon, name='book_now'),
]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)