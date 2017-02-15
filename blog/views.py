from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from blog.models import *
import random
import string
from django.core.mail import EmailMessage
from django.core.mail import send_mail

# Create your views here.
def custom_send_email(to_list, subject, message, sender="evgendemidovs@gmail.com>"):
    msg = EmailMessage(subject, message, sender, to_list)
    msg.content_subtype = "html"  # Main content is now text/html
    return msg.send()
def home(request):
    return render(request, 'blog/home.html')
def about(request):
    return render(request, 'blog/about.html')
def contact(request):
    return render(request, 'blog/contact.html')
def purse(request):
    return render(request, 'blog/purse.html')
def belt(request):
    tovars = Item.objects.all()
    context = {
        'title': 'Helloworld',
        'tovars': tovars,
}

    return render(request, 'blog/belt.html',context)

def homes(request):
    category = Category.objects.all()
    context = {
        'title': 'Helloworld',
        'tovars': tovars,
}

    return render(request, 'blog/homes.html',context)

def item(request, alias):
    try:
        tovar = Item.objects.get(alias=alias)
    except:
        return Http404
    context = {
        'tovar': tovar,
}

    return render(request, 'blog/item.html',context)
def order (request) :
    return render (u'order.html', locals() )
def save_tag(request):

    return render (request, 'blog/tag_save.html')

def get_category(request, alias):
    try:
        category = Category.objects.get(alias=alias)
        tovars = Item.objects.filter(category=category)
    except:
        return Http404
    context = {
        'tovars': tovars,
        'category': category,
}

    return render(request, 'blog/belt.html',context)
def order(request):
    return render(request, 'blog/order.html')
def video(request):
    return render(request, 'blog/video.html')
def p02(request):
    return render(request, 'blog/purse/p02.html')
def p03(request):
    return render(request, 'blog/purse/p03.html')
def p04(request):
    return render(request, 'blog/purse/p04.html')
def p05(request):
    return render(request, 'blog/purse/p05.html')
def p06(request):
    return render(request, 'blog/purse/p06.html')
def b03(request):
    return render(request, 'blog/belt/b03.html')
def b04(request):
    return render(request, 'blog/belt/b04.html')
def b05(request):
    return render(request, 'blog/belt/b05.html')
def b06(request):
    return render(request, 'blog/belt/b06.html')
def beltb01(request):
    return render(request, 'blog/belt/b01/P1.JPG')
def orderthanks(request):
    return render(request, 'blog/interdiction.html')
def user(request):

    if request.method == 'POST':

        name = request.POST['name']
        summa = request.POST['summa']
        delivery = request.POST['delivery']
        zakaz = request.POST['zakaz']
        number = request.POST['number']

        Zakaz2.objects.create(
            date = datetime.now(),
            name = name,
            delivery = delivery,
            summa = summa,
            zakaz = zakaz,
            number = number
        )
        send_mail('Subject', 'request.POST.name', 'evgendemidovs@gmail.com',     ['evgen_demidov@ukr.net'], fail_silently=False)
        return  HttpResponse('')
