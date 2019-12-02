# Python support can be specified down to the minor or micro version
# (e.g. 3.6 or 3.6.3).
# OS Support also exists for jessie & stretch (slim and full).
# See https://hub.docker.com/r/library/python/ for all supported Python
# tags from Docker Hub.
FROM tranphillip/pb-dev:1.0

# If you prefer miniconda:
#FROM continuumio/miniconda3

LABEL Name=python Version=0.0.1
EXPOSE 8000

WORKDIR /app
ADD mysite /app

# Using pip:
RUN pip3 install -r requirements.txt
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
