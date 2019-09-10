FROM gorialis/discord.py:3.7-alpine

WORKDIR /app/src

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . ../

CMD ["python", "./discord_front.py"]