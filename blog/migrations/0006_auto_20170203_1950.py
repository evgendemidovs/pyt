# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0005_zakaz2_number'),
    ]

    operations = [
        migrations.AlterField(
            model_name='zakaz2',
            name='name',
            field=models.CharField(max_length=255, verbose_name=b'name', error_messages={b'required': b'Enter a login'}),
        ),
        migrations.AlterField(
            model_name='zakaz2',
            name='number',
            field=models.IntegerField(default=0, verbose_name=b'Number'),
        ),
    ]
