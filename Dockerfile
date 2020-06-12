FROM python:3.7.7-slim

WORKDIR /opt/myapp

COPY . . 

RUN pip install --trusted-host pypi.python.org --trusted-host files.pythonhosted.org --trusted-host pypi.org -r requirements.txt

EXPOSE 5000

CMD ["python", "src/app.py"]
