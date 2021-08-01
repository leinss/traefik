prod: prod-traefik prod-multi $\
	prod-ghost prod-ghost-jonas prod-ghost-ulrich
	@echo "running prod"
	
prod-traefik:
	@echo "prod traefik"
	@cd traefik && make prod

prod-multi: 
	@echo "prod multi"
	@cd multi-container && make prod

prod-ghost:
	@echo "prod ghost"
	@cd ghost && make prod

prod-ghost-jonas:
	@echo "prod ghost-jonas"
	@cd ghost_jonas && make prod

prod-ghost-ulrich:
	@echo "prod ghost-ulrich"
	@cd ghost_ulrich && make prod

prod-wordpress:
	@echo "prod wordpress"
	@cd wordpress && make prod

dev:
	@echo "running dev"
	@cd multi-container && make dev
	@cd traefik && make dev
	@cd ghost && make dev

stop: 
	@echo "stop containers"
	@docker stop $$(docker ps -a -q)
