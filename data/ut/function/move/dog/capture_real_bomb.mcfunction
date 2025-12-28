#By Nebulirion

tag @s add captured

playsound block.note_block.pling player @a ~ ~ ~ 1 1.3

playsound entity.wolf.growl player @a[tag=dog_capturer,limit=1] ~ ~ ~ 2 2
tellraw @a[tag=dog_capturer,limit=1] [{"translate":"pfx.warning"},{"translate":"cht.gmd.1.itsabomb"}]


tag @s add dog_bomb

scoreboard players operation @s pid = @a[tag=dog_capturer,limit=1] pid
scoreboard players operation @s tid = @a[tag=dog_capturer,limit=1] tid
scoreboard players operation #color tid = @a[tag=dog_capturer,limit=1] tid

scoreboard players set @s life 0

scoreboard players operation #this aid = @s aid
execute as @e[tag=dog_model] if score @s aid = #this aid run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 3
execute as @e[tag=dog_model] if score @s aid = #this aid run function ut:move/dog/capture_color

tag @a[tag=dog_capturer,limit=1] add dog_owner
tag @a remove dog_capturer

scoreboard players set -IsDogCap dog_timer 1
scoreboard players set -IsDogCapBomb dog_timer 1
scoreboard players operation -IsDogCapTeam dog_timer = #color tid

