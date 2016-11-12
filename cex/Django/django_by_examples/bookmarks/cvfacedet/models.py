from django.db import models
from django.conf import settings
from django.core.urlresolvers import reverse

from images.models import Image

class CVFaceDet(models.Model):
    orig = models.ForeignKey(Image, related_name='cvfacedet')
    url = models.URLField()
    image = models.ImageField(upload_to='images/%Y/%m/%d/cv_facedet')

    def __str__(self):
        return "cv_facedetion: " + self.orig.title

    def get_absolute_url(self):
        return reverse('cvfacedet:detail', args=[self.orig.id, self.orig.slug])
        
