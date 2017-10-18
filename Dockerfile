FROM python:3.6
# install pipenv
RUN pip install pipenv --upgrade

# copy and install app
WORKDIR /app
COPY . /app
RUN pipenv install --deploy --system

CMD ["python", "main.py"]
