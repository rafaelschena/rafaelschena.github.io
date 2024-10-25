# Dockerfile para rodar o stlite com Node.js
FROM node:18

# Atualiza o npm e instala o stlite e o http-server globalmente
RUN npm install -g npm@latest && \
    npm install -g stlite http-server

# Define o diretório de trabalho
WORKDIR /app

# Copia o código do app para o container
COPY . .

# Gera a versão estática do app com o stlite
RUN stlite app.py --output-dir dist

# Exponha a porta usada pelo http-server
EXPOSE 8080

# Comando para rodar o http-server e servir o app estático
CMD ["http-server", "dist", "-p", "8080"]
