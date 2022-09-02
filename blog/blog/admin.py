from django.contrib import admin
from . import models


class PostAdmin(admin.ModelAdmin):
    list_display = ['name', 'author', 'perex', 'category_id', 'state_id']


admin.site.register(models.Post, PostAdmin)
admin.site.register(models.PostCategory)
admin.site.register(models.PostState)
admin.site.register(models.Tag)
