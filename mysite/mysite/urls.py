
from django.conf.urls import patterns, include, url  
  
  
from mysite.views import index
  
urlpatterns = patterns('',  
    # Examples:  
    # url(r'^$', 'mysites.views.home', name='home'),  
    # url(r'^blog/', include('blog.urls')),  
  
  
    url(r'^$', index),  
)
