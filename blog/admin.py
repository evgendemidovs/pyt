from django.contrib import admin
from blog.models import Article
from blog.models import *
# Register your models here.
admin.site.register(Article)
class ItemAdmin(admin.ModelAdmin):
    list_display = ('name', 'price')
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('id', 'name')
class Zakaz2Admin(admin.ModelAdmin):
    list_display = ('name', 'zakaz')
admin.site.register (Item, ItemAdmin)
admin.site.register (Category, CategoryAdmin)
admin.site.register (Zakaz2, Zakaz2Admin)

