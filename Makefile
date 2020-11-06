build: 
	@echo "start building containers"
	docker-compose build

dev: 
	@echo "start dev mode"
	docker-compose --env-file ./config/.env.env -f docker-compose.yaml -f docker-compose.dev.yaml up

prod: 
	@echo "start prod mode"
	docker-compose --env-file ./config/.env.prod -f docker-compose.yaml -f docker-compose.prod.yaml up

stop: 
	@echo "stop containers"
	@docker stop $$(docker ps -a -q)

include ./config/.env.prod
deploy: 
	@echo "deploy containers"
	@docker-compose -H "ssh://$(DOMAIN_USER)@$(DOMAIN_URL)" --env-file ./config/.env.prod -f docker-compose.yaml -f docker-compose.prod.yaml up -d

logs: 
	@echo $(ACME_EMAIL)
	@docker-compose logs -f
