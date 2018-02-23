build:
	hab studio clone run build

upload:
	hab studio clone run hab pkg upload $(pkg)

export:
	hab studio clone run hab pkg export docker $(pkg)

health:
	http http://$(shell docker exec habitat_hello_init_1 hostname -i):9631/butterfly | jq '.member.health'
