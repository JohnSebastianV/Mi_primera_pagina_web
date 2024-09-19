# Usar la imagen oficial de Nginx
FROM nginx:latest

# Establecer el directorio de trabajo
WORKDIR /var/www/html

# Copiar los archivos HTML desde el directorio local hacia la ubicación predeterminada de Nginx
COPY ./index.html /var/www/html

# Exponer el puerto 8082 para el contenedor
EXPOSE 8082

# Comando para ejecutar Nginx en modo foreground
CMD ["nginx", "-g", "daemon off;"]
