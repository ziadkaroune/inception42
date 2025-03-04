all:
		up
start:
		@echo "run conatainers"
		@docker-compose start
stop:
		@echo "stop runing conatainers"
		@docker-compose	stop
up	:
		@docker-compose up
down:
		@docker-compose down -v
		@docker rmi -v
		@docker rm
open:
		@open http://localhost:8080  /// a changer
		
