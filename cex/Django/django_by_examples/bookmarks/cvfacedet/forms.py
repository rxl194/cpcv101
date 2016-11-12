from urllib import request
from django.core.files import File
from django.core.files.base import ContentFile
from django.utils.text import slugify
from django import forms
from django.conf import settings
from .models import CVFaceDet

import os
import cv2

# define the path to the face detector
FACE_DETECTOR_PATH = "{base_path}/cascades/haarcascade_frontalface_default.xml".format(
	base_path=os.path.abspath(os.path.dirname(__file__)))


class CVFaceDetCreateForm(forms.ModelForm):
    orig_id = forms.IntegerField(min_value=0)

    class Meta:
        model = CVFaceDet
        fields = ('orig_id',)
        widgets = {
            'orig_id': forms.HiddenInput,
        }

    def save(self, orig_image, force_insert=False, force_update=False, commit=True):
        cvfacedet = super(CVFaceDetCreateForm, self).save(commit=False)
        cvfacedet.orig = orig_image
        image_path = orig_image.image.path
        image_name = 'CVFaceDet_{}'.format(slugify(orig_image.title))

        # load the image from path
        cv2img = cv2.imread(image_path)
        cv2gray = cv2.cvtColor(cv2img, cv2.COLOR_BGR2GRAY)
        face_cascade = cv2.CascadeClassifier(FACE_DETECTOR_PATH)
        faceRects = face_cascade.detectMultiScale(cv2gray, scaleFactor=1.1, minNeighbors=5,
          minSize=(30, 30))

        # construct a list of bounding boxes from the detection
        num_faces = len(faceRects)
        # loop over the faces and draw a rectangle around each
        for (x, y, w, h) in faceRects:
            cv2.rectangle(cv2img, (x, y), (x + w, y + h), (0, 255, 0), 2)

        import pdb; pdb.set_trace()

        full_path = settings.MEDIA_ROOT + "cvtmp/" + image_name + ".png"
        cv2.imwrite(full_path, cv2img)
        cv_f = open(full_path,"rb")

        # save the tmp file to its locations
        cvfacedet.image.save(image_name,
                         File(cv_f),
                         save=False)

        if commit:
            cvfacedet.save()
        return cvfacedet

class CVFaceDetUploadForm(forms.ModelForm):

    class Meta:
        model = CVFaceDet
        fields = ('url',)

            
