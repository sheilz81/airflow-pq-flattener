ARG DE_ECR
#FROM python:3.7
FROM ${DE_ECR}/python:3.9-slim

WORKDIR /pq_flattener

COPY requirements.txt .
COPY pq_flattener.py .
COPY v1 v1

RUN chmod -R 777 .

RUN pip install -r requirements.txt
RUN python -m pip install --upgrade pip


ENTRYPOINT ["python3", "pq_flattener.py"]
