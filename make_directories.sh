#!/bin/bash

rm -rf project

mkdir -p project/srcs/requirements/nginx/conf
mkdir -p project/srcs/requirements/bonus
mkdir -p project/srcs/requirements/tools
mkdir -p project/srcs/requirements/mariadb/conf
mkdir -p project/srcs/requirements/mariadb/tools
mkdir -p project/srcs/requirements/nginx/tools
mkdir -p project/srcs/requirements/wordpress/tools
mkdir -p project/srcs/requirements/wordpress/conf

touch project/Makefile

touch project/srcs/docker-compose.yml
touch project/srcs/.env

touch project/srcs/requirements/mariadb/conf/create-db.sh
touch project/srcs/requirements/mariadb/Dockerfile
touch project/srcs/requirements/mariadb/.dockerignore

touch project/srcs/requirements/nginx/conf/nginx.conf
touch project/srcs/requirements/nginx/Dockerfile
touch project/srcs/requirements/nginx/.dockerignore

touch project/srcs/requirements/wordpress/conf/wp-config-create.sh
touch project/srcs/requirements/wordpress/Dockerfile
touch project/srcs/requirements/wordpress/.dockerignore

echo "DOMAIN_NAME=tgalyaut.42.fr" > project/srcs/.env
echo "CERTS_=./requirements/tools/tgalyaut.42.fr.crt" >> project/srcs/.env
echo "KEY_=./requirements/tools/tgalyaut.42.fr.key" >> project/srcs/.env
echo "DB_NAME=wordpress" >> project/srcs/.env
echo "DB_ROOT=rootpass" >> project/srcs/.env
echo "DB_USER=wpuser" >> project/srcs/.env
echo "DB_PASS=wppass" >> project/srcs/.env

echo "" > project/srcs/requirements/nginx/tools/.gitkeep
echo ".git" > project/srcs/requirements/nginx/.dockerignore
echo ".env" >> project/srcs/requirements/nginx/.dockerignore

echo "" > project/srcs/requirements/wordpress/tools/.gitkeep
echo ".git" > project/srcs/requirements/wordpress/.dockerignore
echo ".env" >> project/srcs/requirements/wordpress/.dockerignore

echo "" > project/srcs/requirements/mariadb/tools/.gitkeep
echo ".git" > project/srcs/requirements/mariadb/.dockerignore
echo ".env" >> project/srcs/requirements/mariadb/.dockerignore
