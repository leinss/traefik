prod: prod-multi prod-traefik prod-ghost
	@echo "running prod"
	
prod-multi: 
	@echo "prod multi"
	@cd multi-container && make prod

prod-traefik:
	@echo "prod traefik"
	@cd traefik && make prod

prod-ghost:
	@echo "prod ghost"
	@cd ghost && make prod

dev:
	@echo "running dev"
	@cd multi-container && make dev
	@cd traefik && make dev
	@cd ghost && make dev

stop: 
	@echo "stop containers"
	@docker stop $$(docker ps -a -q)
