FROM python:3.10-alpine
COPY . /usr/src/app
WORKDIR /usr/src/app
ENV LINK http://www.meetup.com/cloudyuga/
ENV TEXT1 CloudYuga
ENV TEXT2 Garage RSVP!
ENV LOGO https://raw.githubusercontent.com/cloudyuga/rsvpapp/master/static/cloudyuga.png
ENV COMPANY CloudYuga Technology Pvt. Ltd.1
RUN pip3 install --trusted-host pypi.python.org flask
RUN pip3 install --trusted-host pypi.python.org pymongo
RUN pip3 install --trusted-host pypi.python.org mongomock
RUN pip3 install -r requirements.txt
CMD python rsvp.py
