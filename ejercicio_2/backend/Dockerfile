
FROM python:3.7-slim-buster

ENV PYTHONUNBUFFERED 1

#Create the workdir
WORKDIR /app

#Copy the requirements to install
COPY requirements.txt /app/

#Install the dependencies of the app
RUN apt update && apt install -y \
    gcc \
    graphviz-dev && \
    pip install -r requirements.txt && \
    apt autoremove -y \
    gcc \
    graphviz-dev && \
    apt autoclean -y

#Copy the code to the container
COPY . /app/

EXPOSE 8000

#Run the app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
