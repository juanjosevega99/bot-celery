FROM python:3.8.1
ADD requirements.txt /app/requirements.txt
# ADD ./test_celery/ /app/
WORKDIR /app/
RUN pip install -r requirements.txt
ENTRYPOINT celery -A test_celery worker --loglevel=info
#ENTRYPOINT ['celery','-A','test_celery', 'worker', '--loglevel=info']