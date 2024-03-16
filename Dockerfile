FROM python:3.8
WORKDIR /app
COPY . /app
RUN pip install --no-cache -r requirements.txt
EXPOSE 5000
CMD [ "gunicorn", "--bind", "0.0.0.0:5000", "app:app"]