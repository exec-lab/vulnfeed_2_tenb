FROM python:3.8-slim-buster

RUN pip install pytenable feedparser python-decouple requests

COPY vulnfeed_2_tenb.py /
RUN chmod +x /vulnfeed_2_tenb.py
ENTRYPOINT ["/vulnfeed_2_tenb.py"]
