from django.shortcuts import render, get_object_or_404
from django.core.files.storage import Storage
# Create your views here.
from .models import news, member, event, eventimage
from django import forms
from django.core.mail import send_mail
from django.contrib import messages

class ContactForm(forms.Form):
    name = forms.CharField(max_length=50)
    message = forms.CharField(min_length=2)
    email = forms.EmailField()

def home(request):
    latest_news = news.objects.filter(display=True)
    context={
        'latest_news': latest_news,
    }
    return render(request, 'EdWebApp/home.html', context)

def crew(request):
    editor_in_chiefs = member.objects.filter(position='editor-in-chief')
    section_chiefs = member.objects.filter(position='section-chief')
    editors = member.objects.filter(position='editor')
    context={
        'editor_in_chiefs': editor_in_chiefs,
        'section_chiefs': section_chiefs,
        'editors': editors,
    }
    return render(request, 'EdWebApp/crew.html', context)

def crew_info(request, id):
    member_details = get_object_or_404(member, pk=id)
    slide_images = member.objects.values('pk','name','thumbnail_image')
    context={
        'member_details': member_details,
        'slide_images': slide_images,
    }
    return render(request, 'EdWebApp/crew_info.html', context)

def shabd_info(request):
    context = {}
    return render(request, 'EdWebApp/shabd.html', context)

def about(request):
    context = {}
    return render(request, 'EdWebApp/about.html', context)

def history(request):
    context = {}
    return render(request, 'EdWebApp/history.html', context)

def event_view(request):
    events = event.objects.all()
    context={'events':events}
    return render(request, 'EdWebApp/events.html', context)

def event_info_view(request, id):
    events = get_object_or_404(event, pk=id)
    photos = eventimage.objects.filter(event=events)
    context= {
        'events':events,
        'photos':photos
    }
    return render(request, 'EdWebApp/event_info.html', context)

def contact(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            name = form.cleaned_data['name']
            message = form.cleaned_data['message']
            email = form.cleaned_data['email']
            #recipients = ['rajath642000@gmail.com']
            #if cc_myself:
            #    recipients.append(sender)
            messages.add_message(request, messages.INFO, 'message sent')
            #send_mail(sub, message, sender, recipients)
    else:
        form = ContactForm()
    context = {
        'form': form,
    }
    return render(request, 'EdWebApp/contact.html', context)
