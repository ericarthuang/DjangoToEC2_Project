FROM python:3.10.8-slim-buster
WORKDIR /app
COPY ./DjangoToEC2_Project ./

RUN pip install --upgrade pip --no-cache-dir && \
    pip install -r /app/requirements.txt --no-cache-dir

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"] 
#CMD ["waitress-serve", "--listen=0.0.0.0:8000", "djangotoec2_main.wsgi:application"]
#CMD ["gunicorn" "djangotoec2_main.wsgi:application", "--bind", "127.0.0.1:8000"]

