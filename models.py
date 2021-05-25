from django.db import models
from django.contrib.auth.models import User
from django.urls import reverse
from datetime import datetime, date


class Video(models.Model):
     caption=models.CharField(max_length=500)
     video=models.FileField(upload_to="video/%y")
     videodescription =models.TextField(null=True, blank=True)
     def __str__(self):
       return self.caption

class Onahillfaraway(models.Model):
     caption1=models.CharField(max_length=500)
     video1=models.FileField(upload_to="video/%y",default='one')
     def __str__(self):
       return self.caption1

class koifishtank(models.Model):
     caption2=models.CharField(max_length=500)
     video2=models.FileField(upload_to="video/%y",default='one')
     def __str__(self):
       return self.caption2

class flowers(models.Model):
      description=models.CharField(max_length=2000)
      flowpic=models.ImageField(upload_to="pics/%y",default='one')
      def __str__(self):
       return self.description

class flowerone(models.Model):
      descriptionone=models.CharField(max_length=2000)
      flowpicone=models.ImageField(upload_to="pics/%y",default='one')
      def __str__(self):
       return self.descriptionone

class flowertwo(models.Model):
      descriptiontwo=models.CharField(max_length=2000)
      flowpictwo=models.ImageField(upload_to="pics/%y",default='one')
      def __str__(self):
       return self.descriptiontwo

class flowerthree(models.Model):
      descriptionthree=models.CharField(max_length=2000)
      flowpicthree=models.ImageField(upload_to="pics/%y",default='one')
      def __str__(self):
       return self.descriptionthree

class flowerfour(models.Model):
      descriptionfour=models.CharField(max_length=2000)
      flowpicfour=models.ImageField(upload_to="pics/%y",default='one')
      def __str__(self):
       return self.descriptionfour

class flowerfive(models.Model):
      descriptionfive=models.CharField(max_length=2000)
      flowpicfive=models.ImageField(upload_to="pics/%y",default='one')
      def __str__(self):
       return self.descriptionfive

class flowersix(models.Model):
      descriptionsix=models.CharField(max_length=2000)
      flowpicsix=models.ImageField(upload_to="pics/%y",default='one')
      def __str__(self):
       return self.descriptionsix

class flowerseven(models.Model):
      descriptionseven=models.CharField(max_length=2000)
      flowpicseven=models.ImageField(upload_to="pics/%y",default='one')
      def __str__(self):
       return self.descriptionseven

class Category (models.Model):
    name = models.CharField(max_length=255)

def __str__(self):
        return self.name
      
def get_absolute_url(self):
        return reverse('article-detail',  args=(str(self.id)))


class Post(models.Model):
      title =models.CharField(max_length=255)
      title_tag =models.CharField(max_length=255,default="vininn blog section")
      author =models.ForeignKey(User, on_delete=models.CASCADE)
      body =models.TextField()
      post_date= models.DateField(auto_now_add=True)
      category=models.CharField(max_length=255, default='coding')

      def __str__(self):
          return self.title
      
      def get_absolute_url(self):
          return reverse('article-detail', args=(str(self.id)))
          #return reverse('index')
