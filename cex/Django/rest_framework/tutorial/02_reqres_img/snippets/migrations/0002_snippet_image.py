# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('snippets', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='snippet',
            name='image',
            field=models.ImageField(max_length=254, default=datetime.datetime(2016, 10, 26, 17, 49, 57, 947840, tzinfo=utc), upload_to='images/%Y/%m/%d'),
            preserve_default=False,
        ),
    ]
