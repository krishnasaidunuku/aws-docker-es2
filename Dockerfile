FROM python:3
# ENV PYTHONUNBUFFERD = 1

RUN mkdir /app

WORKDIR /app

# RUN apt-get update --fix-missing && apt-get upgrade

# RUN python -m pip install --upgrade pip

COPY ./requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

# # Copy our configurations over
# COPY ./docker/etc /etc

# COPY the application
# COPY ./apps /app
# COPY ./scripts /app
# COPY ./scripts /app
# COPY ./supervisor /app
COPY . /app

EXPOSE 8000

CMD = ['python', 'manage.py', 'runserver', "0.0.0.0:8000"]








