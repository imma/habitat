build:
	hab studio clone run build

upload:
	hab studio clone hab pkg upload $(pkg)

health:
	http http://$(shell docker exec habitat_bastion_init_1 hostname -i):9631/butterfly | jq '.member.health'
