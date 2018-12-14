FROM python:3.6
MAINTAINER hoominkani

WORKDIR /usr/src/app
COPY ./scrapyd.conf ./requirements.txt ./start.sh ./
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 6800

CMD ["./start.sh"]
