build: 
	@echo "Start building containers"
	docker-compose build

dev: 
	@echo "Start dev mode"
	docker-compose --env-file ./config/.env.env -f docker-compose.yaml -f docker-compose.dev.yaml up

prod: 
	@echo "Start prod mode"
	docker-compose --env-file ./config/.env.prod -f docker-compose.yaml -f docker-compose.prod.yaml up

stop: 
	@echo "stop containers"
	@docker stop $$(docker ps -a -q)

deploy: 
	docker-compose -H "ssh://user@domain" --env-file ./config/.env.prod -f docker-compose.yaml -f docker-compose.prod.yaml up -d

logs: 
	@docker-compose logs -f
