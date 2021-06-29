from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

app_name='EdWebApp'
urlpatterns = [
    path('',views.home, name="home"),
    path('home/',views.home, name="home"),
    path('crew/',views.crew, name="crew"),
    path('crew/<int:id>/',views.crew_info, name="crew_info"),
    path('shabd/',views.shabd_info, name="shabd_info"),
    path('about/',views.about, name="about"),
    path('history/',views.history, name="history"),
    path('events/',views.event_view, name="event_view"),
    path('events/<int:id>/',views.event_info_view, name="event_info_view"),
    path('contact/',views.contact, name="contact"),
    path('jayzine/',views.jayzine, name="jayzine"),
    #path('shabd/2021/',views.shabdevents, name="shabdevents"),
    #path('shabd/2021/faq',views.faqs, name="faq"),
]+ static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
