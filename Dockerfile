# Escolhe uma imagem base com Python
FROM python:3.9-slim

# Define a pasta de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de dependências e instala
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia o resto do código para dentro do container
COPY . .

# Comando para rodar a aplicação
CMD ["python", "app.py"]
