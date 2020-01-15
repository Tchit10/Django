cd /django
django-admin startproject hellodjango

cd /django/hellodjango
python manage.py startapp helloworld

echo from django.http import HttpResponse >> /django/hellodjango/helloworld/views.py
echo "def index(request):" >> /django/hellodjango/helloworld/views.py
echo "  return HttpResponse('Hello, World! by Gigi')" >> /django/hellodjango/helloworld/views.py

sed -i 's/from django.urls import path/from django.urls import path\nfrom helloworld import views/g' /django/hellodjango/hellodjango/urls.py
sed -i "s/admin.site.urls),/admin.site.urls), path('', views.index, name='index')/g" /django/hellodjango/hellodjango/urls.py

python manage.py migrate
python manage.py runserver 0.0.0.0:8000
