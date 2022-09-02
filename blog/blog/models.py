from django.db import models
from django.contrib.auth.models import User
from django.utils.timezone import now


class PostCategory(models.Model):
    name = models.CharField(max_length=255)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name_plural = 'Post Categories'


class PostState(models.Model):
    name = models.CharField(max_length=255)

    def __str__(self):
        return self.name


class Tag(models.Model):
    name = models.CharField(max_length=255, unique=True)

    def __str__(self):
        return self.name


class Post(models.Model):
    name = models.CharField(max_length=255)
    author = models.ForeignKey(to=User, on_delete=models.CASCADE)
    content = models.TextField()
    perex = models.TextField()
    category_id = models.ForeignKey(to=PostCategory, on_delete=models.SET_NULL, null=True)
    state_id = models.ForeignKey(to=PostState, on_delete=models.SET_NULL, null=True)
    image = models.ImageField(default='default.jpg', upload_to='post_images')
    tags = models.ManyToManyField(to=Tag, related_name='posts', blank=True)
    date = models.DateField(default=now)

    def __str__(self):
        return self.name





