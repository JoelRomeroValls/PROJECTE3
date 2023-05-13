FROM ubuntu:latest

# Actualizar e instalar MySQL Server
RUN apt-get update && \
	DEBIAN_FRONTEND="noninteractive" apt-get install -y mysql-server mysql-client && \
	rm -rf /var/lib/apt/lists/*

# Copiar archivo de inicialización de la base de datos
COPY init.sql /docker-entrypoint-initdb.d/

# Establecer permisos y propietario del archivo de inicialización
RUN chown -R mysql:mysql /docker-entrypoint-initdb.d && \
	chmod -R 755 /docker-entrypoint-initdb.d

# Exponer el puerto 3306
EXPOSE 3306

# Iniciar el servidor MySQL y ejecutar el script SQL durante la construcción de la imagen
RUN service mysql start && \
	mysql -u root < /docker-entrypoint-initdb.d/init.sql
    

# Configurar el comando de inicio del servidor MySQL
CMD ["mysqld", "--datadir=/var/lib/mysql", "--socket=/var/run/mysqld/mysqld.sock", "--port=3306"]


