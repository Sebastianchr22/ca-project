FROM ubuntu:latest

ADD . .

RUN apt-get update && apt-get install -y \
    python \ 
    python-dev \
    python-pip \
    build-essential

RUN pip install -r requirements.txt
CMD python run.py
