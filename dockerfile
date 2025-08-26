#imagen
FROM python:3.10

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

COPY requirements.txt requirements.txt
COPY app.py app.py

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

#habilita para ver en terminal lo que esta dando print
ENV PYTHONHUNBUFFERED=1

#puerto que se va a exponer
EXPOSE 5000

#comando para ejecutar
CMD ["python", "app.py"]