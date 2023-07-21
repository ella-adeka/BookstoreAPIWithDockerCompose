# Download official python image from docker hub
FROM python:3.11.3-alpine

# Set the working directory
WORKDIR /usr/src/app

# Set the environment variables (important for python)
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# install psycopg2 dependencies (for postgresql)
RUN apt-get update && \
    apt-get install -y python-3 musl-dev libpq-dev gcc dev

# install dependencies
RUN pip install --upgrade pip
COPY requirements.txt /usr/src/app
RUN pip install -r --no-cache requirements.txt

# Copy project
COPY . /app

# Expose port
EXPOSE 8000

# run server
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]