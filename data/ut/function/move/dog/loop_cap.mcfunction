#By Nebulirion

scoreboard players operation -this pid = @s pid
scoreboard players operation -this tid = @s tid
execute as @a[tag=dog_owner] if score @s pid = -this pid run tag @s add this_owner

execute unless entity @a[tag=this_owner] run function ut:move/dog/free
execute if entity @a[tag=this_owner] run function ut:move/dog/loop_cap_owned

tag @a remove this_owner
