FROM tljh-base:latest
ENV PATH /opt/tljh/user/bin:$PATH
RUN mkdir -p /srv/app
WORKDIR /srv/app
ADD . /srv/app
RUN pip install -r requirements.txt
