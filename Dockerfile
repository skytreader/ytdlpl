FROM python:3.8.2-alpine
RUN mkdir -p /root/Videos/ytdlpl
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY ./ ./ytdlpl
WORKDIR ./ytdlpl
ENTRYPOINT python ytdlpl.py
