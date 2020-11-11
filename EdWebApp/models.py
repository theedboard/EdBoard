from django.db import models

# Create your models here.

from django.db.models.signals import post_delete, pre_save
from django.dispatch import receiver
from django.utils import timezone
from django.core.validators import MinValueValidator, MaxValueValidator

from datetime import date
import os
import cloudinary.uploader
from cloudinary.models import CloudinaryField

class news(models.Model):
    news_title = models.CharField(max_length=30)
    poster = CloudinaryField("Image", overwrite=True, resource_type="image", use_filename=True, unique_filename=True,
    transformation={"quality": 'auto:low', 'height': 400, 'crop': "scale"},
    format="jpeg", )
    description = models.TextField()
    display = models.BooleanField(default=True)
    def file_fields(self):
        return [self.poster]
    def __str__(self):
        return self.news_title+" "+str(date.today())
    class Meta:
        ordering = ['-pk']

CHOICES = (
    ('editor-in-chief','editor-in-chief'),
    ('section-chief','section-chief'),
    ('editor','editor'),
)

class member(models.Model):
    profile_image = CloudinaryField("Image", overwrite=True, resource_type="image", use_filename=True, unique_filename=True,
    transformation={"quality": 'auto:low', 'width':300, 'height': 300, 'crop': "scale", 'effect': "grayscale"},
    format="jpeg",)
    thumbnail_image = CloudinaryField("Image", overwrite=True, resource_type="image", use_filename=True, unique_filename=True,
    transformation={"quality": 'auto:low', 'height': 400, 'crop': "scale"},
    format="jpeg",)
    name = models.CharField(max_length=40)
    title = models.CharField(max_length=20, default='Editor')
    sections = models.CharField(max_length=25)
    tagline = models.CharField(max_length=100)
    information = models.TextField(default="social media info or any quotes")
    belt = models.TextField()
    stat1 = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100)])
    stat2 = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100)])
    stat3 = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100)])
    stat4 = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100)])
    stat5 = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100)])
    year_of_recruitement = models.IntegerField(validators=[MinValueValidator(2000), MaxValueValidator(2050)])
    current_sem = models.IntegerField(validators=[MinValueValidator(1), MaxValueValidator(8)])
    position = models.CharField(max_length = 20, choices = CHOICES, default = 'editor')
    def file_fields(self):
        return [self.profile_image, self.thumbnail_image]
    def __str__(self):
        return self.name
    class Meta:
        ordering = ['year_of_recruitement','-current_sem']

class event(models.Model):
    title = models.CharField(max_length=50)
    description = models.TextField()
    preview_image = CloudinaryField("Image", overwrite=True, resource_type="image", use_filename=True, unique_filename=True,
    transformation={"quality": 'auto:low', 'height': 400, 'crop': "scale"},
    format="jpeg",)
    #preview_image = models.FileField(upload_to = 'EdWebApp/events')
    def file_fields(self):
        return [self.preview_image]
    def __str__(self):
        return self.title

class eventimage(models.Model):
    event = models.ForeignKey(event, default=None, on_delete=models.CASCADE)
    images = CloudinaryField("Image", overwrite=True, resource_type="image", use_filename=True, unique_filename=True,
    transformation={"quality": 'auto:low', 'height': 400, 'crop': "scale"},
    format="jpeg",)
    #images = models.FileField(upload_to = 'EdWebApp/events')
    def file_fields(self):
        return [self.images]
    def __str__(self):
        return self.event.title

@receiver(post_delete)
def submission_delete(sender, instance, **kwargs):
    try:
        for field in instance.file_fields():
            #field.delete(False)
            cloudinary.uploader.destroy(field.public_id)
    except:
        return False

@receiver(pre_save)
def auto_delete_file_on_change(sender, instance, **kwargs):
    if not instance.pk:
        return False
    try:
        old_files = sender.objects.get(pk=instance.pk).file_fields()
        new_files = instance.file_fields()
        for i in range(len(old_files)):
            if not str(old_files[i]) == str(new_files[i]):
                cloudinary.uploader.destroy(old_files[i].public_id)
                #if os.path.isfile(old_files[i].path):
                #    os.remove(old_files[i].path)
    except:
        return False
