FROM python:3.11.4-slim-buster 

WORKDIR /usr/src/app 

ENV PYTHONDONTWRITEBYTECODE     1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

COPY requirments.txt .
RUN pip install -r requirments.txt

COPY ./entrypoint.sh .
#Convert windows line ending to "\r" to unox line ending
RUN sed -i 's/\r$//g' /usr/src/app/entrypoint.sh

RUN apt update -y && apt -y install netcat
RUN chmod +x /usr/src/app/entrypoint.sh

COPY .  . 
ENTRYPOINT [ "/usr/src/app/entrypoint.sh" ]