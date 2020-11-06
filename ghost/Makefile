build: 
	@echo "start building containers"
	docker-compose build

dev: 
	@echo "start dev mode"
	docker-compose -f docker-compose.dev.yaml up -d

prod: 
	@echo "start prod mode"
	docker-compose up -d

stop: 
	@echo "stop containers"
	@docker stop $$(docker ps -a -q)

include ./config/.env
deploy: 
	@echo "deploy containers"
	@docker-compose -H "ssh://$(DOMAIN_USER)@$(DOMAIN_URL)" up -d

logs: 
	@echo $(ACME_EMAIL)
	@docker-compose logs -f
