#By Nebulirion

scoreboard players operation -this pid = @s pid
scoreboard players operation -this tid = @s tid
execute as @a[tag=dog_owner] if score @s pid = -this pid run tag @s add this_owner

execute positioned as @a[tag=this_owner,limit=1] run tp @s ~ ~2.5 ~ ~10 0
function ut:move/dog/display/strict

execute if entity @s[tag=!dog_bomb] run function ut:move/dog/loop_cap_real
execute if entity @s[tag=dog_bomb] run function ut:move/dog/loop_cap_bomb

tag @a remove this_owner
