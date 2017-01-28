# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='zakaz2',
            name='date',
            field=models.DateTimeField(default=datetime.datetime(2017, 1, 24, 18, 34, 10, 64549, tzinfo=utc), verbose_name=b'Date'),
            preserve_default=False,
        ),
    ]
