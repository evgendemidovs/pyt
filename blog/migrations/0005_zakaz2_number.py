# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0004_auto_20170124_2037'),
    ]

    operations = [
        migrations.AddField(
            model_name='zakaz2',
            name='number',
            field=models.IntegerField(default=0, verbose_name=b'Sum'),
        ),
    ]
