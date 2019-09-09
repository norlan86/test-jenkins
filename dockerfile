FROM ubuntu:16.04
RUN apt update
RUN apt install python python-pip -y
RUN pip install pytest
RUN pip install flask
RUN mkdir -p /opt/app
COPY src/main.py /opt/app/
COPY docker-entrypoint.sh /
EXPOSE 5000
ENTRYPOINT  "/docker-entrypoint.sh"
