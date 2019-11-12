from django.test import SimpleTestCase
from django.urls import reverse,resolve
from testwebapp.views import home

class TestUrls(SimpleTestCase):
    def test_url_is_resolved(self):
        url = reverse('index')
        print(resolve(url))
        self.assertEquals(resolve(url).func, home)