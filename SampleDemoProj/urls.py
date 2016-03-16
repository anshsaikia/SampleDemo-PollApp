from django.conf.urls import patterns, include, url
from django.contrib import admin
from pollsApp.views import index
urlpatterns = patterns('',
    # Examples:
    #url(r'^$', include('pollsApp.urls', namespace="polls")),
    # url(r'^blog/', include('blog.urls')),
    url(r'^polls/', include('pollsApp.urls', namespace="polls")),
    url(r'^admin/', include(admin.site.urls)),
)
