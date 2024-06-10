# Usar una imagen base de Python
FROM python:3.12.4

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo requirements.txt y luego instalar las dependencias
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el contenido del directorio actual al contenedor
COPY . /app

# Exponer el puerto que la aplicación va a usar
EXPOSE 5000

# Definir el comando para correr la aplicación
CMD ["python", "app.py"]
