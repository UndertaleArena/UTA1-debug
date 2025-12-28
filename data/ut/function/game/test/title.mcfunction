
execute as @a at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 2 1

function ut:game/title_basic

execute as @a[tag=playing] at @s run function ut:player/effect

title @a title {"translate":"gamemode.0","color":"yellow"}
title @a subtitle {"translate":"gamemode.0.dsc"}
title @a times 10 40 10
scoreboard players set @a title_timer 50