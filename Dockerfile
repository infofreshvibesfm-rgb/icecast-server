FROM debian:stable-slim

RUN apt-get update && apt-get install -y icecast2 && apt-get clean

COPY icecast.xml /etc/icecast2/icecast.xml

EXPOSE 8000

CMD ["icecast2", "-n"]
