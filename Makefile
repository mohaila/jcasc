.PHONY: build clean up

TAG:=jenkins:jcasc

clean:
	docker rmi $(TAG)

build:
	docker build -t $(TAG) .

up:
	docker compose up -d

down:
	docker compose down

logs:
	docker compose logs