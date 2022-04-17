include .env
export $(shell sed 's/=.*//' .env)

up:
	cd src && docker-compose up --build -d --remove-orphans && cd ..

down:
	cd src && docker-compose down -t 2 && cd ..
	@rm -rf ~/data/mariadb

fdown:
	cd src && docker-compose down -t 2 -v && cd ..
	@rm -rf ~/data

clean:
	docker-compose down --rmi all
	

.PHONY: up down fdown clean