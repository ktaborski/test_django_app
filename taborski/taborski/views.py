from django.http import HttpResponse
from django.shortcuts import render


def index(request):

    context = {
        'name': "Krzysztof",
        'surname': "Taborski"
    }

    return render(request, 'index.html', context=context)