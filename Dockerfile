# Usar a imagem oficial do Nginx
FROM nginx:latest

# Definir diretório de trabalho
WORKDIR /usr/share/nginx/html

# Remover arquivos padrão do Nginx
RUN rm -rf ./*

# Copiar os arquivos do projeto para o contêiner
COPY src/ /usr/share/nginx/html

# Expor a porta 80
EXPOSE 80

# Comando padrão para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
