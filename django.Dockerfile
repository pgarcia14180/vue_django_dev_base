FROM python:3.8-alpine
# collectstatic needs the secret key to be set. We store that in this environment variable.
# Set this value in this project's .env file
RUN apk update 
RUN apk add postgresql-dev gcc python3-dev musl-dev
RUN pip install --upgrade pip
RUN mkdir -p /usr/src/app

COPY ./backend /usr/src/app
WORKDIR /usr/src/app

RUN pip install -r requirements.txt
RUN pip freeze

#ENTRYPOINT [ "python", "manage.py" ]
