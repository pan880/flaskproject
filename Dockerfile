FROM python:3.8.9-alpine3.13
RUN apt-get update
COPY pom.xml /tmp/
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
CMD ["python","assistant.py"]
