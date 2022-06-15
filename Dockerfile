from python:3.10

RUN pip3 install --upgrade pip

COPY . /opt/app

WORKDIR /opt/app

RUN pip3 install -r requirements.txt
