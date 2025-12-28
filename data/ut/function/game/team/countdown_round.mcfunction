
execute as @a at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 2 1

title @a title {"translate":"cht.gm11p","with":[{"score":{"name": "#round","objective": "game"}}],"color":"yellow"}
title @a subtitle ""
title @a times 10 20 10
scoreboard players set @a title_timer 30

function ut:game/title_basic
