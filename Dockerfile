FROM python
LABEL "flask"
RUN apt-get update
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
CMD ["python","assistant.py"]
