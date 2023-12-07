FROM python:3.8

COPY ./requirements.txt /mainapp/requirements.txt

WORKDIR /mainapp

RUN pip install -r requirements.txt

COPY mainapp/* /mainapp

EXPOSE 8000

ENTRYPOINT [ "uvicorn" ]

CMD [ "--host", "0.0.0.0", "main:app" ]