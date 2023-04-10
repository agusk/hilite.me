FROM python:3.8-slim-buster

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000
ENV FLASK_APP=main.py

ENTRYPOINT [ "flask"]
CMD [ "run", "--host", "0.0.0.0" ]
