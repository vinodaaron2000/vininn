from django.shortcuts import render
from django.views.generic import ListView,DetailView,CreateView,UpdateView,DeleteView
from .models import Video
from .models import Onahillfaraway
from .models import koifishtank
from .models import flowers
from .models import flowerone
from .models import flowertwo
from .models import flowerthree
from .models import flowerfour
from .models import flowerfive
from .models import flowersix
from .models import flowerseven
from .models import Post,Category
from.forms import PostForm
from django.urls import reverse_lazy



def index(request):
    video=Video.objects.all()
    vid=Onahillfaraway.objects.all()
    fish=koifishtank.objects.all()
    singapore=flowers.objects.all()
    singaporeone=flowerone.objects.all()
    singaporetwo=flowertwo.objects.all()
    singaporethree=flowerthree.objects.all()
    singaporefour=flowerfour.objects.all()
    singaporefive=flowerfive.objects.all()
    singaporesix=flowersix.objects.all()
    singaporeseven=flowerseven.objects.all()
    blog=Post.objects.all()
    
   
     
    context = {
           'videos':video,
           'second':vid,
           'third':fish,
           'picone':singapore,
           'pictwo':singaporeone,
           'picthree':singaporetwo,
           'picfour':singaporethree,
           'picfive':singaporefour,
           'picsix':singaporefive,
           'picseven':singaporesix,
           'piceight':singaporeseven,
           'object_list':blog,
           
    }

    return render(request,'index.html',context)

def CategoryView(request,cats):
    category_posts =Post.objects.filter(category=cats)
    return render (request, 'categories.html',{'cats':cats,'category_posts':category_posts})

#class Home():
   #template_name ='index.html'

class HomeView(DetailView):
      model= Post
      template_name ='detailblog.html'
      fields= '__all__'
      

class VideoView(DetailView):
      model= Video
      template_name ='viddetail.html'
      fields=('caption','video','videodescription')
      context_object_name='video'

class PictureView(DetailView):
      model= flowers
      template_name='picdetail.html'
      fields=('flowpic','description')
      context_object_name='picture'

class AddPostView(CreateView):
      model=Post
      form_class= PostForm
      template_name='add_post.html'
      #fields= '__all__'

class AddCategoryView(CreateView):
      model=Category
      #form_class= PostForm
      template_name='add_category.html'
      fields= '__all__'
    

class UpdatePostView(UpdateView):
      model=Post
      template_name ='update_post.html'
      fields =['title','title_tag','body']

class DeletePostView(DeleteView):
       model=Post
       template_name ='delete_post.html'
       success_url=reverse_lazy(index)







