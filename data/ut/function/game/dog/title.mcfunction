
execute as @a at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 2 1

title @a title {"translate":"gamemode.6","color":"yellow"}
title @a subtitle {"translate":"gamemode.6.dsc","color":"white"}
title @a times 10 40 10
scoreboard players set @a title_timer 50

function ut:game/title_basic