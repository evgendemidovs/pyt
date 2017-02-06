# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0007_auto_20170204_1548'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='item',
            name='name',
        ),
    ]
