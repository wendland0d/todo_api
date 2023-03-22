FROM python:3.9-slim-buster

WORKDIR /app

COPY . /app

RUN sudo apt-get install nano
RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 3000

CMD ["python", "app.py"]