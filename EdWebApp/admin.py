from django.contrib import admin

# Register your models here.

from .models import  news, member, event, eventimage,registration, faq, alumni, kr_registration

admin.site.register(news)
admin.site.register(member)
admin.site.register(registration)
admin.site.register(faq)
admin.site.register(alumni)
admin.site.register(kr_registration)

class EventImageAdmin(admin.StackedInline):
    model = eventimage

@admin.register(event)
class EventAdmin(admin.ModelAdmin):
    inlines = [EventImageAdmin]

    class Meta:
       model = event

@admin.register(eventimage)
class EventImageAdmin(admin.ModelAdmin):
    pass
