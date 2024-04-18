# Start with the base Python container
# FIXME: Update the version
FROM docker.io/python:3.10.13


# Install packages that are required. 
RUN pip install Django==4.2.9 psycopg2
RUN pip install psutil
# Copy the Python code into the container
COPY mysite /mysite
# Note: Remove DATA_DIR and add POSTGRES_env
# Set environment variables 
ENV PORT=8000 
ENV STUDENT_NAME="Armando"
ENV SITE_NAME="Armando's site"
ENV SECRET_KEY="Password_12348488238823495129519823591"
ENV DEBUG=1
ENV DATA_DIR=/data


ENV POSTGRES_DB="mysite"
ENV POSTGRES_USER="mysiteuser"
ENV POSTGRES_PASSWORD="this-is-a-bad-password"
ENV POSTGRES_HOSTNAME="localhost"
# Set the working directory
WORKDIR /mysite 

# Default command to execute in the container
CMD python ./manage.py runserver 0.0.0.0:$PORT
