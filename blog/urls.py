from django.conf.urls import include, url
from django.contrib import admin

urlpatterns = [
    # Examples:
     url(r'^purse/$', 'blog.views.purse', name='purse'),
     url(r'^order/thanks/$', 'blog.views.orderthanks', name='order'),
     url(r'^user/$', 'blog.views.user', name='user'),
     url(r'^video/$', 'blog.views.video', name='video'),
     url(r'^save_tag/$', 'blog.views.save_tag', name='tag'),
     url(r'^$', 'blog.views.home', name='home'),
     url(r'^order/$', 'blog.views.order', name='order'),
     url(r'^about/$', 'blog.views.about', name='about'),
     url(r'^contact/$', 'blog.views.contact', name='contact'),
     url(r'^item/(?P<alias>[^/]+)', 'blog.views.item', name='P07'),
     url(r'^(?P<alias>[^/]+)', 'blog.views.get_category', name='P07'),
     url(r'^order/$', 'blog.views.order', name='order'),

     ]
