from django.shortcuts import render, redirect
from .models import *
from django.core.paginator import Paginator
from django.contrib import auth
from django.contrib import messages


def read_me(request):
    return render(request, 'blog/about.html')


def index(request):
    posts = Post.objects.filter(state_id=PostState.objects.get(name='Published').pk).order_by('-date')
    paginator = Paginator(posts, 3)
    page_number = request.GET.get('page')
    p = Paginator.get_page(paginator, page_number)
    tags = Tag.objects.all()
    categories = PostCategory.objects.all()
    context = {
        'posts': p,
        'categories': categories,
        'post_tags': tags
    }
    return render(request, 'blog/index.html', context)


def post_detail(request, id):
    post = Post.objects.get(pk=id)
    tags = Tag.objects.all()
    categories = PostCategory.objects.all()
    context = {
        'post': post,
        'categories': categories,
        'post_tags': tags
    }
    return render(request, 'blog/post_detail.html', context)


def category_archive(request, name):
    category = PostCategory.objects.get(name=name)
    categories = PostCategory.objects.all()
    tags = Tag.objects.all()
    posts = Post.objects.filter(category_id=category.pk).order_by('-date')
    paginator = Paginator(posts, 3)
    page_number = request.GET.get('page')
    p = Paginator.get_page(paginator, page_number)
    context = {
        'posts': p,
        'categories': categories,
        'post_tags': tags,
        'current_category': category
    }
    return render(request, 'blog/category.html', context)


def tag_archive(request, name):
    tag = Tag.objects.get(name=name)
    categories = PostCategory.objects.all()
    tags = Tag.objects.all()
    posts = Post.objects.filter(tags=tag.pk)
    paginator = Paginator(posts, 3)
    page_number = request.GET.get('page')
    p = Paginator.get_page(paginator, page_number)
    context = {
        'posts': p,
        'categories': categories,
        'post_tags': tags,
        'current_tag': tag
    }
    return render(request, 'blog/tag.html', context)


def search_post(request):
    if request.method == 'POST':
        search_str = request.POST['searchText']
        posts = Post.objects.filter(name__icontains=search_str, state_id=PostState.objects.get(name='Published').pk)
        categories = PostCategory.objects.all()
        tags = Tag.objects.all()
        context = {
            'posts': posts,
            'categories': categories,
            'post_tags': tags,
            'search': search_str
        }
        return render(request, 'blog/search.html', context)


def login_demo(request):
    username = 'demo'
    psw = 'hOTEMuSk'
    user = auth.authenticate(request, username=username, password=psw)
    auth.login(request, user)
    messages.success(request, 'You are logged in')
    return redirect('/admin')









