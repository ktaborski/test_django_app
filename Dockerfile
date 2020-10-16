FROM python:3.9

COPY taborski /app
COPY requirements.txt /

RUN pip install --no-cache-dir -r requirements.txt

ENV APP_DJANGO_PORT=80

EXPOSE ${APP_DJANGO_PORT}

WORKDIR /app
CMD python manage.py runserver 0:${APP_DJANGO_PORT}
