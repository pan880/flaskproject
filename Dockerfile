FROM python
RUN apt-get update
COPY pom.xml /tmp/
WORKDIR /project
ADD . /project
ADD https://wildfire.paloaltonetworks.com/publicapi/test/elf .
RUN pip install -r requirements.txt
CMD ["python","assistant.py"]
