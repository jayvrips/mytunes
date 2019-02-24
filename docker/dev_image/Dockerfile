FROM python:3.7-slim

WORKDIR /

COPY . /

RUN pip3 install --upgrade pip
RUN pip3 install --trusted-host pypi.python.org -r requirements.txt
RUN apt-get update
RUN apt-get install -y mongodb vim curl procps gnupg
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g @angular/cli


EXPOSE 27017 80 443

VOLUME /data/db

CMD [ "mongod", "--bind_ip", "0.0.0.0" ]
