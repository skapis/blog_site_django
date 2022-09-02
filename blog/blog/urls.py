from django.urls import path
from . import views
from django.views.decorators.csrf import csrf_exempt

urlpatterns = [
    path('', views.index, name='blog-home'),
    path('about', views.read_me, name='about_blog'),
    path('post/<int:id>', views.post_detail, name='detail'),
    path('category/<str:name>', views.category_archive, name='category'),
    path('tag/<str:name>', views.tag_archive, name='tag'),
    path('search', csrf_exempt(views.search_post), name='search'),
    path('login', csrf_exempt(views.login_demo), name='login')
]
