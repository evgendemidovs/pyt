# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0009_auto_20170204_1553'),
    ]

    operations = [
        migrations.AddField(
            model_name='zakaz2',
            name='name',
            field=models.CharField(default=datetime.datetime(2017, 2, 4, 13, 55, 45, 669830, tzinfo=utc), max_length=120, verbose_name=b'name', error_messages={b'required': b'Enter a login'}),
            preserve_default=False,
        ),
    ]
