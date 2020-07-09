From python:3.7.8-slim-stretch

RUN pip install --upgrade pip setuptools

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

ARG discord_token
ENV DISCORD_BOT_TOKEN=${discord_token}

CMD ["python3", "discordbot.py"]
