run: run-multi
	@echo "running"
	
run-multi: 
	@echo "run multi"
	@cd multi-container && make prod

stop: 
	@echo "stop containers"
	@docker stop $$(docker ps -a -q)
