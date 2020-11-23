FROM python:3.7.9

ENV PYTHONDONTWRITEBYTHECODE 1

ENV PYTHONUNBUFFERED 1

WORKDIR /home/ec-user/admin_server/

COPY requirements.txt ./
COPY . ./

RUN pip install --no-cache-dir -r requirements.txt
#RUN source /home/ec2-user/admin_server/cloud-project/bin/activate
#EXPOSE 8000

#CMD exec gunicorn session_service.wsgi:application --bind 0.0.0.0:8000
