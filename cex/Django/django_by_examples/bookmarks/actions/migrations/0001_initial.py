# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        ('contenttypes', '0002_remove_content_type_name'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Action',
            fields=[
                ('id', models.AutoField(verbose_name='ID', auto_created=True, primary_key=True, serialize=False)),
                ('verb', models.CharField(max_length=255)),
                ('target_id', models.PositiveIntegerField(db_index=True, blank=True, null=True)),
                ('created', models.DateTimeField(db_index=True, auto_now_add=True)),
                ('target_ct', models.ForeignKey(related_name='target_obj', to='contenttypes.ContentType', blank=True, null=True)),
                ('user', models.ForeignKey(related_name='actions', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'ordering': ('-created',),
            },
        ),
    ]
