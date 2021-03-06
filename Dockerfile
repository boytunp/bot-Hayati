FROM python:3

WORKDIR /usr/src/app
ENV PORT 8080

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./init.py" ]
