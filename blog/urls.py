from django.conf.urls import include, url
from django.contrib import admin

urlpatterns = [
    # Examples:
     url(r'^user/$', 'blog.views.user', name='user'),
     url(r'^video/$', 'blog.views.video', name='video'),
     url(r'^save_tag/$', 'blog.views.save_tag', name='tag'),
     url(r'^$', 'blog.views.home', name='home'),
     url(r'^order/$', 'blog.views.order', name='order'),
     url(r'^about/$', 'blog.views.about', name='about'),
     url(r'^contact/$', 'blog.views.contact', name='contact'),
     url(r'^purse/p01/$', 'blog.views.p01', name='p01'),
     url(r'^purse/p02/$', 'blog.views.p02', name='p02'),
     url(r'^purse/p03/$', 'blog.views.p03', name='p03'),
     url(r'^purse/p04/$', 'blog.views.p04', name='p04'),
     url(r'^purse/p05/$', 'blog.views.p05', name='p05'),
     url(r'^purse/p06/$', 'blog.views.p06', name='p06'),
     url(r'^belt/b01/$', 'blog.views.b01', name='b01'),
     url(r'^belt/b02/$', 'blog.views.b02', name='b02'),
     url(r'^belt/b03/$', 'blog.views.b03', name='b03'),
     url(r'^belt/b04/$', 'blog.views.b04', name='b04'),
     url(r'^belt/b05/$', 'blog.views.b05', name='b05'),
     url(r'^belt/b06/$', 'blog.views.b06', name='b06'),
     url(r'^belt/b01/P1.JPG/$', 'blog.views.beltb01', name='b07'),
     url(r'^belt/P01/$', 'blog.views.P01', name='P07'),
     url(r'^item/(?P<alias>[^/]+)', 'blog.views.item', name='P07'),
     url(r'^(?P<alias>[^/]+)', 'blog.views.get_category', name='P07'),
     url(r'^order/$', 'blog.views.order', name='order'),
     ]