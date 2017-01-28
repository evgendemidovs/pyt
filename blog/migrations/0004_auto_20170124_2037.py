# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0003_auto_20170124_2034'),
    ]

    operations = [
        migrations.RenameField(
            model_name='zakaz2',
            old_name='date2',
            new_name='date',
        ),
    ]
