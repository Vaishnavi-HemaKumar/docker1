FROM python:3.8
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install flask
#RUN pip install -r requirements.txt
RUN pip install Markup
RUN pip install jinja2
COPY . .
EXPOSE 7777
CMD ["python", "./app.py"]