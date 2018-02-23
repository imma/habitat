build:
	hab studio clone run build

upload:
	hab studio clone run hab pkg upload $(pkg)

export:
	hab studio clone run hab pkg export docker $(pkg)

up:
	docker-compose up --scale hello_init=1 --scale hello=0
	docker-compose up --scale hello_init=1 --scale hello=4

down:
	docker-compose down

health:
	http http://$(shell docker exec habitat_hello_init_1 hostname -i):9631/butterfly | jq '.member.health'
