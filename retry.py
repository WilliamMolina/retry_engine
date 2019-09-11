from celery import Celery

app = Celery('tasks', broker='amqp://localhost')

@app.task
def add(message):
    print(message.get('key'))
    return message