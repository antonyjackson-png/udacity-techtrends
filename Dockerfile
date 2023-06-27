# set the base image
FROM python:3.8
# set a key-value label for the Docker image
LABEL maintainer="Antony Jackson"
# copy files from the host to the container filesystem
copy ./techtrends /app
# defines the working directory in the container
WORKDIR /app
# run commands within the container
RUN pip install -r requirements.txt && python init_db.py
# set application port
EXPOSE 3111
# start the application
CMD ["python", "app.py"]
