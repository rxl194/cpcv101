from django.contrib import admin
from .models import CVFaceDet

class CVFaceDetAdmin(admin.ModelAdmin):
    list_display = ['orig', 'url', 'image']

admin.site.register(CVFaceDet, CVFaceDetAdmin)
