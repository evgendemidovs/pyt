# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0008_remove_item_name'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='zakaz2',
            name='name',
        ),
        migrations.AddField(
            model_name='item',
            name='name',
            field=models.CharField(default=datetime.datetime(2017, 2, 4, 13, 53, 10, 362900, tzinfo=utc), max_length=255, verbose_name=b'name of project'),
            preserve_default=False,
        ),
    ]
