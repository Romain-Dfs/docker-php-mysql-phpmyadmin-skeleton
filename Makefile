install:
	docker-compose run --rm composer install

start:
	docker-compose up --build -d

stop:
	docker-compose down

mysql-connect:
	docker exec -it mysql-skeleton mysql -u skeleton -p

composer:
