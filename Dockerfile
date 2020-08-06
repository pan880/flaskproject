FROM python
RUN apt-get all
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
CMD ["python","assistant.py"]
