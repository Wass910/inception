include .env
export $(shell sed 's/=.*//' .env)

up:
	@mkdir -p /home/idhiba42/data/mbdata
	@mkdir -p /home/idhiba42/data/wordpress
	@cp  src/wordpress/index.html /home/idhiba42/data/wordpress
	docker-compose up --build -d --remove-orphans 

down:
	docker-compose down

clean:
	docker-compose down --rmi all
	@rm -rf /home/idhiba42
	

.PHONY: up down fdown clean