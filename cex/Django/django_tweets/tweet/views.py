from django.views.generic import View
from django.shortcuts import render
from django.http import HttpResponseRedirect

from user_profile.models import User
from models import Tweet, HashTag
from tweet.forms import TweetForm, SearchForm, SearchHashTagForm

class Index(View):
  def get(self, request): 
    params = {}
    params["name"] = "Django"
    return render(request, 'base.html', params)

class Profile(View):
  """User Profile page reachable from /user/<username> URL"""
  def get(self, request, username):
    params = dict()
    user = User.objects.get(username=username)
    tweets = Tweet.objects.filter(user=user)
    form = TweetForm(initial={'country': 'Global'})
    params["tweets"] = tweets
    params["user"] = user
    params["form"] = form
    return render(request, 'profile.html', params)
 
class PostTweet(View):
  """Tweet Post form available on page /user/<username> URL"""
  def post(self, request, username):
    form = TweetForm(self.request.POST)
    if form.is_valid():
      user = User.objects.get(username=username)
      tweet = Tweet( text=form.cleaned_data['text'],
                     user=user,
                     country=form.cleaned_data['country'])
      tweet.save()
      words = form.cleaned_data['text'].split(" ")
      for word in words:
        if word[0] == "#":
          hashtag, created = HashTag.objects.get_or_create(name=word[1:])
          hashtag.tweet.add(tweet)
    return HttpResponseRedirect('/user/'+username) 
    
class HashTagCloud(View):
  """Hash Tag  page reachable from /hashTag/<hashtag> URL"""
  def get(self, request, hashtag):
    params = dict()
    hashtag = HashTag.objects.get(name=hashtag)
    params["tweets"] = hashtag.tweet
    return render(request, 'hashtag.html', params)
    

        