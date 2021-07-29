# Base Image 
FROM python:3.7

EXPOSE 80

COPY ./app /app

# Setup working dir in container
WORKDIR /app

# Installing required package 
RUN pip install -r requirements.txt 

# Run Server 
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]