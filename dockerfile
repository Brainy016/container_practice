FROM python:3.13.0b1-slim-bookworm

WORKDIR /python-docker


COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]