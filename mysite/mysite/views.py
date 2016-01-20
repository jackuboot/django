from django.shortcuts import render
from django.http import HttpResponse,Http404  
from polls.models import Question  
from django.template import RequestContext,loader  

def index(request):  
    return HttpResponse("You're voting on question " ) 
# Create your views here.
