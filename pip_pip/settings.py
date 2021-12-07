"""
Django settings for pip_pip project.

Generated by 'django-admin startproject' using Django 3.2.

For more information on this file, see
https://docs.djangoproject.com/en/3.2/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.2/ref/settings/
"""

import os
from pathlib import Path
from datetime import timedelta

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.2/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = os.environ.get('SECRET_KEY')
JWT_KEY = os.environ.get('JWT_KEY')

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = ['*']

# Application definition

INSTALLED_APPS = [
    # Built-in
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',

    # 3rd party
    'corsheaders',
    'django_filters',
    'django_extensions',
    'rest_framework',
    'rest_framework_simplejwt',
    'simple_history',

    # Custom
    'master_api',
    'master_db',
    'v1_account',
    'v1_brand',
    'v1_cart',
    'v1_product',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'corsheaders.middleware.CorsMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'pip_pip.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS':
            {
                'context_processors':
                    [
                        'django.template.context_processors.debug',
                        'django.template.context_processors.request',
                        'django.contrib.auth.context_processors.auth',
                        'django.contrib.messages.context_processors.messages',
                    ],
            },
    },
]

WSGI_APPLICATION = 'pip_pip.wsgi.application'

AUTH_USER_MODEL = 'master_db.CustomUser'

# Database
# https://docs.djangoproject.com/en/3.2/ref/settings/#databases
if 'DATABASE_URL' in os.environ:
    DATABASES = {
        'default': dj_database_url.config(conn_max_age=600, ssl_require=True)
    }
else:
    DATABASES = {
        'default': {
            'ENGINE': 'django.db.backends.postgresql_psycopg2',
            'NAME': os.environ.get('POSTGRES_DB'),
            'USER': os.environ.get('POSTGRES_USER'),
            'PASSWORD': os.environ.get('POSTGRES_PASSWORD'),
            'HOST': os.environ.get('POSTGRES_HOST'),
            'PORT': os.environ.get('POSTGRES_PORT'),
        }
    }

DBBACKUP_STORAGE = 'django.core.files.storage.FileSystemStorage'

DBBACKUP_STORAGE_OPTIONS = {'location': 'backup/'}

# Password validation
# https://docs.djangoproject.com/en/3.2/ref/settings/#auth-password-validators
AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME':
            'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME':
            'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME':
            'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME':
            'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

# Internationalization
# https://docs.djangoproject.com/en/3.2/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'Asia/Ho_Chi_Minh'

USE_I18N = True

USE_L10N = True

USE_TZ = True

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.2/howto/static-files/

STATIC_URL = '/static/'

STATIC_ROOT = os.path.join(BASE_DIR, 'static')

# User-uploaded files
# https://docs.djangoproject.com/en/3.2/ref/settings/#media-root

MEDIA_URL = '/media/'

MEDIA_ROOT = os.path.join(BASE_DIR, 'media')

# Default primary key field type
# https://docs.djangoproject.com/en/3.2/ref/settings/#default-auto-field

DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

# CORS policies
# https://pypi.org/project/django-cors-headers/

CORS_ALLOW_CREDENTIALS = True

CORS_ALLOWED_ORIGINS = [
    #
]

# REST policies

REST_FRAMEWORK = {
    'DEFAULT_AUTHENTICATION_CLASSES':
        ('rest_framework_simplejwt.authentication.JWTAuthentication', ),
    'DEFAULT_PERMISSION_CLASSES':
        ('rest_framework.permissions.IsAuthenticatedOrReadOnly', )
}

# SimpleJWT policies

SIMPLE_JWT = {
    'ACCESS_TOKEN_LIFETIME':
        timedelta(days=1),
    'REFRESH_TOKEN_LIFETIME':
        timedelta(days=1),
    'ROTATE_REFRESH_TOKENS':
        False,
    'BLACKLIST_AFTER_ROTATION':
        True,
    'UPDATE_LAST_LOGIN':
        False,
    'ALGORITHM':
        'HS256',
    'SIGNING_KEY':
        JWT_KEY,
    'VERIFYING_KEY':
        None,
    'AUDIENCE':
        None,
    'ISSUER':
        'TFC_API',
    'AUTH_HEADER_TYPES': ('Bearer', 'JWT'),
    'AUTH_HEADER_NAME':
        'HTTP_AUTHORIZATION',
    'USER_ID_FIELD':
        'uuid',
    'USER_ID_CLAIM':
        'uuid',
    'USER_AUTHENTICATION_RULE':
        'rest_framework_simplejwt.authentication.default_user_authentication_rule',
    'AUTH_TOKEN_CLASSES': ('rest_framework_simplejwt.tokens.AccessToken', ),
    'TOKEN_TYPE_CLAIM':
        'typ',
    'JTI_CLAIM':
        'jti',
    'SLIDING_TOKEN_REFRESH_EXP_CLAIM':
        'refresh_exp',
    'SLIDING_TOKEN_LIFETIME':
        timedelta(minutes=5),
    'SLIDING_TOKEN_REFRESH_LIFETIME':
        timedelta(days=1),
}