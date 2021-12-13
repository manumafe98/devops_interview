
# https://pythonspeed.com/articles/base-image-python-docker-images/
FROM python:3.7-slim-buster

# mostrar stoud y stderr
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt /app/

# instala dependencias
RUN apt update && apt install -y \
    gcc \
    graphviz-dev && \
    pip install -r requirements.txt && \
    apt autoremove -y \
    gcc \
    graphviz-dev && \
    apt autoclean -y

# copia el código
COPY . /app/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
