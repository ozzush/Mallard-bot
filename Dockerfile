FROM python:3.8

WORKDIR /app

COPY requirements.txt requirements.txt

RUN apt-get update
RUN apt install ffmpeg -y
RUN apt install python3-opencv -y
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "app.py"]