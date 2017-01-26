# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_zakaz2_date'),
    ]

    operations = [
        migrations.RenameField(
            model_name='zakaz2',
            old_name='date',
            new_name='date2',
        ),
    ]
