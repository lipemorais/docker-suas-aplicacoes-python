FROM python
WORKDIR /app
COPY requirements.txt /app
COPY app.py app.py
RUN pip install -r requirements.txt
ENV FLASK_APP=app.py
CMD ["flask",  "run", "--host", "0.0.0.0"]
