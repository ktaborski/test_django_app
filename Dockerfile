FROM python:3.9-slim

COPY requirements.txt /

RUN pip install --no-cache-dir -r requirements.txt

ENV APP_DJANGO_PORT=80

EXPOSE ${APP_DJANGO_PORT}

COPY taborski /app
WORKDIR /app

HEALTHCHECK --interval=5m --timeout=3s CMD curl -f http://localhost/ || false

CMD python manage.py runserver 0:${APP_DJANGO_PORT}
