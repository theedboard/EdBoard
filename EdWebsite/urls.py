"""EdWebsite URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.http import HttpResponse

def read_file(request):
    file_content ='''D0579034E71B64EE99F7C3402ACE73C8B814E65B85A2253357F280A0F0014EE7
comodoca.com
1073a2388cbdcdc'''
    return HttpResponse(file_content, content_type="text/plain")

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include(('EdWebApp.urls','EdWebApp'), namespace='EdWebApp')),
    path('.well-known/pki-validation/77A6E7A5FD08652FE1A237DE0C63C9DD.txt', read_file),
]
