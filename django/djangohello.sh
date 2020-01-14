django-admin startproject hellodjango

cd /django/hellodjango
python manage.py startapp helloworld

echo from django.http import HttpResponse >> /django/hellodjango/helloworld/views.py
echo "def index(request):" >> /django/hellodjango/helloworld/views.py
echo "return HttpResponse("Hello, World!")" >> /django/hellodjango/helloworld/views.py

touch /django/hellodjango/helloworld/urls.py
echo from django.conf.urls import url >> /django/hellodjango/helloworld/urls.py
echo from . import views >> /django/hellodjango/helloworld/urls.py
echo "urlpatterns = [url(r'^$' views.index, name='index'),]" >> /django/hellodjango/helloworld/urls.py
