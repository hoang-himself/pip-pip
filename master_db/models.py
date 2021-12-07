from django.contrib.auth.models import AbstractUser
from django.db import models

from .managers import CustomUserManager

import os

PRODUCT_IMAGE_PATH = 'products/'


#
class Brand(models.Model):
    name = models.TextField()
    desc = models.TextField()

    class Meta:
        verbose_name = 'brand'
        verbose_name_plural = 'brands'

    # def __str__(self):
    #     return self.desc


def upload_image(instance, filename):
    file_ext = os.path.splitext(filename)[1]
    return '%s/%s/%s' % (PRODUCT_IMAGE_PATH, instance.uuid, 'product' + file_ext)


#
class Product(models.Model):
    name = models.TextField(unique=True)
    image = models.ImageField(upload_to=upload_image, null=True, blank=True)
    brand = models.ForeignKey(
        Brand,
        on_delete=models.CASCADE,
    )
    color = models.JSONField()
    storage = models.JSONField()
    ram = models.TextField()
    year = models.IntegerField()
    camera = models.TextField()
    price = models.IntegerField()
    material = models.TextField()
    battery = models.TextField()
    screen = models.TextField()
    perk = models.JSONField()

    class Meta:
        verbose_name = 'product'
        verbose_name_plural = 'products'

    def __str__(self):
        return f'{self.name}'


class CustomUser(AbstractUser):
    username = None
    email = models.EmailField(unique=True)
    mobile = models.TextField(unique=True)

    date_joined = models.DateTimeField(
        'date joined', auto_now_add=True, editable=False
    )
    date_updated = models.DateTimeField(
        'date updated', auto_now=True
    )  # Auto update for every save()

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []
    objects = CustomUserManager()

    class Meta:
        verbose_name = 'user'
        verbose_name_plural = 'users'

    # def __str__(self):
    #     return self.first_name + ' ' + self.last_name


class Cart(models.Model):
    users = models.ManyToManyField(
        CustomUser,
        related_name='user_carts',
        blank=True,
    )
    items = models.ManyToManyField(
        Product,
        related_name='cart_items',
        blank=True,
    )
    quantity = models.IntegerField()

    class Meta:
        verbose_name = 'cart'
        verbose_name_plural = 'carts'
