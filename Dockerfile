FROM python:stretch

COPY . /
WORKDIR /

RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]