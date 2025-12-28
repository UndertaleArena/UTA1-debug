# By Ds_Squid

scoreboard players set -Overtime gamescore 1

execute as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ .8 1.4

title @a title {"translate":"cht.gms.5a","color":"yellow"}
title @a subtitle ""

title @a times 10 40 10
scoreboard players set @a title_timer 50
