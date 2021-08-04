FROM python:alpine3.7

ENV apikey=

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY files/* /app/
COPY config/* /app/
WORKDIR /app

CMD python ./openweathermap-logger.py
