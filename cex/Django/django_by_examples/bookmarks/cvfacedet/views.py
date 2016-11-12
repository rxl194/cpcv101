from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages

from .models import Image
from .forms import CVFaceDetCreateForm, CVFaceDetUploadForm

#@login_required
def cvfacedet_create(request, orig_id):
    image = get_object_or_404(Image, id=orig_id)
    if request.method == 'POST':
        # form is sent
        form = CVFaceDetCreateForm(data=request.POST)
        import pdb; pdb.set_trace()
        if form.is_valid():
            # form data is valid
            new_item = form.save(commit=False, orig_image=image)
            new_item.save();

            messages.success(request, 'CVFaceDet image added successfully')

            # redirect to new created item detail view
            return redirect(new_item.get_absolute_url())
    else:
        # build form with data provided by the bookmarklet via GET
        form = CVFaceDetCreateForm(data=request.GET)

    return render(request,
                  'cvfacedet/create.html',
                  {'section': 'cvfacedet',
                   'image': image,
                   'form': form})


