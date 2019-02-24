FROM python:3.7-slim

WORKDIR /

COPY . /

RUN pip3 install --upgrade pip
RUN pip3 install --trusted-host pypi.python.org -r requirements.txt
RUN apt-get update
RUN apt-get install -y mongodb vim curl

EXPOSE 27017
EXPOSE 80
EXPOSE 443

VOLUME /data/db

CMD [ "mongod", "--bind_ip", "0.0.0.0" ]
