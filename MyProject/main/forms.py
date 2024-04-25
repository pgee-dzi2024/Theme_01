from django import forms
from .models import  *


class BookNowForm(forms.Form):
    book_date = forms.DateField(label='Дата: ', widget=forms.DateInput(attrs={'type': 'date', 'class': 'form-control'}))

    book_time = forms.ModelChoiceField(queryset=BookHour.objects.all(), label='Час: ', empty_label='Не е посочен',
                                       widget=forms.Select(attrs={'class': 'form-control'}))

    book_service = forms.ModelChoiceField(queryset=Service.objects.all(), label='Услуга: ',
                                          empty_label='Не е избрана услуга',
                                          widget=forms.Select(attrs={'class': 'form-control'}))

    book_name = forms.CharField(max_length=60, label='Вашето име:',
                                widget=forms.TextInput(attrs={'class': 'form-control'}))

    book_phone = forms.CharField(max_length=14, label='телефон за връзка:',
                                 widget=forms.TextInput(attrs={'class': 'form-control'}))

