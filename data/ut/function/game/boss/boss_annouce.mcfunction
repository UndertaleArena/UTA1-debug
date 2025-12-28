#By Nebulirion

scoreboard players set #animation game 0

execute as @a[tag=playing] at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 2 1 
title @a[tag=!boss] title {"translate": "boss.0","with": [{"selector": "@s"}]}
title @a[tag=!boss] subtitle {"translate": "boss.1"}
title @s title {"translate": "boss.2"}
title @s subtitle {"translate": "boss.3"}
title @a times 10 40 10
scoreboard players set @a title_timer 50

kill @e[tag=soul_animation]

scoreboard players set @s untarget_timer 60
scoreboard players set @s unloadtime 0
effect clear @s slowness
effect clear @s weakness
effect clear @s glowing

execute as @a[tag=boss] at @s run function ut:system/soul/uncan/main