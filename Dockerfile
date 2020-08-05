FROM python:3.6.1
RUN apt-get all
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
CMD ["python","assistant.py"]
