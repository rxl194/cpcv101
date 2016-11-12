# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('images', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='CVFaceDet',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, auto_created=True, verbose_name='ID')),
                ('url', models.URLField()),
                ('image', models.ImageField(upload_to='images/%Y/%m/%d/cv_facedet')),
                ('orig', models.ForeignKey(related_name='cvfacedet', to='images.Image')),
            ],
        ),
    ]
