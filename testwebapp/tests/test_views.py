from django.test import TestCase, Client
from django.urls import reverse
import json

class TestViews(TestCase):
    def test_view(self):
        client = Client()
        response = client.get(reverse('index'))
        self.assertEquals(response.status_code, 200)
        self.assertTemplateUsed(response,'testwebapp/index.html')