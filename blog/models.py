from django.db import models
from django.contrib.auth.models import User
from datetime import *
from django import forms
# Create your models here.
class Article(models.Model):
    title = models.CharField(max_length=200)
    text = models.TextField()
    user = models.ForeignKey(User)
def __str__(self):
    return self.title
class Category(models.Model):
    name = models.CharField(max_length=255, verbose_name='name of project')
    alias = models.SlugField(verbose_name='Alias')
    class Meta:
        verbose_name = "Category"
        verbose_name_plural = "Categories"
    def __str__(self):
        return 'Catogory %s' % self.name
class Item(models.Model):
    name = models.CharField(max_length=255, verbose_name='name of project')
    price = models.IntegerField(verbose_name='price')
    image = models.CharField(max_length=255, verbose_name='http')
    image1 = models.CharField(max_length=255, verbose_name='http1')
    image2 = models.CharField(max_length=255, verbose_name='http2')
    image3 = models.CharField(max_length=255, verbose_name='http3')
    alias = models.SlugField(verbose_name='Alias')
    category = models.ForeignKey(Category)

    class Meta:
        verbose_name = "Good"
        verbose_name_plural = "Goods"

    def __str__(self):
        return 'Good %s' % self.name



class Zakaz2(models.Model):
    name = models.CharField(max_length=255, verbose_name='name')
    zakaz = models.CharField(max_length=255, verbose_name='What ordered')
    summa = models.IntegerField(default=0, verbose_name='Sum')
    date = models.DateTimeField(verbose_name="Date")
    delivery = models.CharField(max_length=255, verbose_name='delivery')



    class Meta:
        verbose_name = "Order"
        verbose_name_plural = "Orders"

    def __str__(self):
        return 'Order on %s' % self.summa


class Person(models.Model):
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    date = models.DateTimeField(verbose_name="Date")