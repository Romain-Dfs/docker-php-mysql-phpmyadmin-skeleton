# 📦️ Skeleton of Docker, PHP and Mysql application with PhpMyAdmin 📦️

📝 This repository contains the beginning of a PHP application with a **Docker**

## 🗃️ Docker containers

The application contains :
- A **PHP** container with Apache. You already have **Composer** installed
- A **MySQL** container
- **PhpMyAdmin** already connect to **MySQL**

## 🔧 Installation

1. Pull the repository 
2. Install dependencies 
```sh
make install
```
3. Launch the application
```sh
make start
```
4. Stop the application
```sh
make stop
```

## 🧑‍💻 Commands to simplify your life
- Connect to MySql
```sh
make mysql-connect
```
- Install Composer Packages
```sh
docker-compose run --rm php-apache-environment composer require package_name
```


