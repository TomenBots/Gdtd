FROM python:3.9

WORKDIR /root/bot
RUN apt-get -qq update
RUN apt-get -qq install -y git python3 python3-pip \
    locales python3-lxml aria2 \
    curl pv jq nginx npm
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
