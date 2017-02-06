# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0006_auto_20170203_1950'),
    ]

    operations = [
        migrations.AlterField(
            model_name='zakaz2',
            name='name',
            field=models.CharField(max_length=120, verbose_name=b'name', error_messages={b'required': b'Enter a login'}),
        ),
    ]
