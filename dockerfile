# Start with the base Python container
# FIXME: Update the version
FROM docker.io/python:3.10.13


# Install packages that are required. 
RUN pip install Django==4.2.9 
RUN pip install psutil
# Copy the Python code into the container
COPY mysite /mysite

# Set environment variables 
ENV PORT=8000 
ENV STUDENT_NAME="Armando"
ENV SITE_NAME="Armando's site"
ENV SECRET_KEY="Password_12348488238823495129519823591"
ENV DEBUG=1
ENV DATA_DIR=/data
RUN command mkdir /data
# Set the working directory
WORKDIR /mysite 

# Default command to execute in the container
CMD python ./manage.py runserver 0.0.0.0:$PORT
