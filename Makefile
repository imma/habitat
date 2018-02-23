build:
	-hab studio clone run build

upload:
	-hab studio clone run hab pkg upload $(pkg)

export:
	-hab studio clone run hab pkg export docker $(pkg)

up:
	docker-compose build
	docker-compose up $(compose)

down:
	docker-compose down

health:
	http http://$(shell docker exec habitat_hello_init_1 hostname -i):9631/butterfly | jq '.member.health'

quickly:
	$(MAKE) build 
	$(MAKE) quickly_

quickly_:
	$(MAKE) export pkg=$(shell ls -thd results/*hart | head -1)
