FROM ubuntu:20.04
LABEL maintainer="RanElbling@DevopsTask"
RUN apt-get update -y && \
    apt-get install -y python3-pip python-dev  && \
    pip install flask

COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]