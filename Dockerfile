FROM python
RUN apt-get update
COPY pom.xml /tmp/
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
CMD ["python","assistant.py"]
