#By Nebulirion

tag @s add captured

playsound entity.wolf.ambient player @a[tag=dog_capturer,limit=1] ~ ~ ~ 2 2
tellraw @a[tag=dog_capturer,limit=1] [{"translate":"pfx.info"},{"translate":"cht.gmd.1"}]

execute as @a[tag=dog_capturer,limit=1] at @s run function ut:move/dog/capture_bonus

scoreboard players operation @s pid = @a[tag=dog_capturer,limit=1] pid
scoreboard players operation @s tid = @a[tag=dog_capturer,limit=1] tid
scoreboard players operation #color tid = @a[tag=dog_capturer,limit=1] tid

scoreboard players set @s life 0

scoreboard players operation #this aid = @s aid
execute as @e[tag=dog_model] if score @s aid = #this aid run function ut:move/dog/capture_color

tag @a[tag=dog_capturer,limit=1] add dog_owner
tag @a remove dog_capturer

scoreboard players set -IsDogCap dog_timer 1
scoreboard players set -IsDogCapBomb dog_timer 0
scoreboard players operation -IsDogCapTeam dog_timer = #color tid

