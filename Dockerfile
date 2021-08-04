FROM python:alpine3.7

ENV apikey=

RUN pip install --upgrade pip

COPY files/* /app/
COPY config/* /app/
WORKDIR /app
RUN pip install -r requirements.txt

CMD python ./openweathermap-logger.py
