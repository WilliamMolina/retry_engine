FROM python:3.7
RUN pip install celery
COPY retry.py retry.py
CMD ["celery","-A","retry","worker","--loglevel=info"]