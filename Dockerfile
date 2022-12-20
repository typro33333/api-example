FROM python:3.8.2-alpine
WORKDIR /workspace/app
COPY . /workspace/app
RUN pip install --no-cache-dir --upgrade -r requirements.txt
EXPOSE 8080
CMD ["uvicorn","main:app","--host","0.0.0.0","--port","8080"]