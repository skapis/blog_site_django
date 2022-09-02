from django import template
from .models import PostCategory, Tag

register = template.Library()


@register.inclusion_tag('partials/sidebar.html')
def show_lists():
    categories = PostCategory.objects.all()
    tags = Tag.objects.all()
    return {
        'categories': categories,
        'post_tags': tags
    }
