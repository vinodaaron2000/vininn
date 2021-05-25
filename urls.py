from django.urls import path,include
from .import views

urlpatterns = [
    path('', views.index,name ='index'),
    path ('members/', include ('django.contrib.auth.urls')),
    path('members/', include ('members.urls')),
    
    
]