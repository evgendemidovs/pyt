# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings
import blog.models


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Article',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=200)),
                ('text', models.TextField()),
                ('user', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=255, verbose_name=b'name of project')),
                ('alias', models.SlugField(verbose_name=b'Alias')),
            ],
            options={
                'verbose_name': 'Category',
                'verbose_name_plural': 'Categories',
            },
        ),
        migrations.CreateModel(
            name='Item',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=255, verbose_name=b'name of project')),
                ('price', models.IntegerField(verbose_name=b'price')),
                ('image', models.CharField(max_length=255, verbose_name=b'http')),
                ('image1', models.CharField(max_length=255, verbose_name=b'http1')),
                ('image2', models.CharField(max_length=255, verbose_name=b'http2')),
                ('image3', models.CharField(max_length=255, verbose_name=b'http3')),
                ('alias', models.SlugField(verbose_name=b'Alias')),
                ('category', models.ForeignKey(to='blog.Category')),
            ],
            options={
                'verbose_name': 'Good',
                'verbose_name_plural': 'Goods',
            },
        ),
        migrations.CreateModel(
            name='Person',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('first_name', models.CharField(max_length=30)),
                ('last_name', models.CharField(max_length=30)),
                ('date', models.DateTimeField(verbose_name=b'Date')),
            ],
        ),
        migrations.CreateModel(
            name='Zakaz2',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=120, verbose_name=b'name', validators=[blog.models.validate_even])),
                ('zakaz', models.CharField(max_length=255, verbose_name=b'What ordered')),
                ('summa', models.IntegerField(default=0, verbose_name=b'Sum')),
                ('date', models.DateTimeField(verbose_name=b'Date')),
                ('delivery', models.CharField(max_length=255, verbose_name=b'delivery')),
                ('number', models.IntegerField(default=0, verbose_name=b'Number', validators=[blog.models.validate_even])),
            ],
            options={
                'verbose_name': 'Order',
                'verbose_name_plural': 'Orders',
            },
        ),
    ]
