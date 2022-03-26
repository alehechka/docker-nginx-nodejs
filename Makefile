all: build run

build:
	docker build -t docker-nginx-nodejs .
	
run:
	docker run -d -p 8080:80 docker-nginx-nodejs 