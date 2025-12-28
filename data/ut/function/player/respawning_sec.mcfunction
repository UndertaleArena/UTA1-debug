#By Nebulirion

scoreboard players operation #sec respawnTimer = @s respawnTimer
scoreboard players operation #sec respawnTimer /= 20 const

title @s title [{"score": {"objective": "respawnTimer", "name": "#sec"}}]
title @s subtitle {"translate":"ttl.rsp0"}
execute if score #sec respawnTimer matches 0 run title @s title {"translate":"ttl.rsp1"}
execute if score #sec respawnTimer matches 0 run title @s subtitle ""
title @s times 5 10 5
scoreboard players set @s title_timer 15

scoreboard players reset @s respawnTimerSec