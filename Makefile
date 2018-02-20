all:
	http http://$(shell docker exec habitat_bastion_init_1 hostname -i):9631/butterfly | jq '.member.health'
