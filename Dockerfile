# Usar uma imagem base do Nginx para servir HTML
FROM nginx:latest

# Copiar o conteúdo da sua pasta local para a pasta de arquivos estáticos do Nginx
COPY . /usr/share/nginx/html

# Expor a porta 80 para acessar o servidor Nginx
EXPOSE 80
