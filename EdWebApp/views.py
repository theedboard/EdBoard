from django.shortcuts import render, get_object_or_404
from django.core.files.storage import Storage
# Create your views here.
from .models import news, member, event, eventimage
from django import forms
from django.conf import settings
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
        'home': 'active',
    }
    return render(request, 'EdWebApp/home.html', context)

def crew(request):
    editor_in_chiefs = member.objects.only('profile_image','name','title','tagline').filter(position='editor-in-chief')
    section_chiefs = member.objects.only('profile_image','name','title','tagline').filter(position='section-chief')
    editors = member.objects.only('profile_image','name','title','tagline').filter(position='editor')
    context={
        'editor_in_chiefs': editor_in_chiefs,
        'section_chiefs': section_chiefs,
        'editors': editors,
        'crew': 'active',
    }
    return render(request, 'EdWebApp/crew.html', context)

def crew_info(request, id):
    member_details = get_object_or_404(member, pk=id)
    slide_images = member.objects.only('pk','name','profile_image')
    context={
        'member_details': member_details,
        'slide_images': slide_images,
        'crew': 'active',
    }
    return render(request, 'EdWebApp/crew_info.html', context)

def shabd_info(request):
    context = {
        'shabd': 'active',
    }
    return render(request, 'EdWebApp/shabd.html', context)

def about(request):
    context = {
        'about': 'active',
    }
    return render(request, 'EdWebApp/about.html', context)

def history(request):
    context = {
        'about': 'active',
    }
    return render(request, 'EdWebApp/history.html', context)

def jayzine(request):
    context = {
        'jayzine': 'active',
    }
    return render(request, 'EdWebApp/jayzine.html', context)

def event_view(request):
    events = event.objects.only('pk','title','preview_image').all()
    context={
        'events': events,
        'event': 'active',
    }
    return render(request, 'EdWebApp/events.html', context)

def event_info_view(request, id):
    events = get_object_or_404(event, pk=id)
    photos = eventimage.objects.filter(event=events)
    context= {
        'events':events,
        'photos':photos,
        'event': 'active',
    }
    return render(request, 'EdWebApp/event_info.html', context)

def contact(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            name = form.cleaned_data['name']
            message = form.cleaned_data['message']
            email = form.cleaned_data['email']

            subject = 'Message from '+name
            message = 'Name: '+name+'\nemail: '+email+'\nMessage:\n'+message
            email_from = settings.EMAIL_HOST_USER
            recipient_list = ['edboard.assist@gmail.com', ]
            try:
                send_mail( subject, message, email_from, recipient_list )
                messages.add_message(request, messages.INFO, 'Thank you for contacting us. We will reply soon:)')
            except Exception as error:
                messages.add_message(request, messages.INFO, 'There was some problem in sending the message. Please try again.')
                print(error)
        else:
            messages.add_message(request, messages.INFO, 'The form fields are invalid.')
    else:
        form = ContactForm()
    context = {
        'form': form,
        'contact': 'active',
    }
    return render(request, 'EdWebApp/contact.html', context)
