#By Nebulirion

particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.2 0.2 0.2 0.01 2 force @a[scores={Q=2..}]

execute if block ~ ~-.5 ~ #ut:trans run tp @a[tag=jumppad_p,limit=1] ~ ~ ~
execute if entity @s[scores={life=5..}] unless block ~ ~-.5 ~ #ut:trans run scoreboard players set @s life 60
execute if entity @s[nbt={OnGround:1b},scores={life=5..}] run scoreboard players set @s life 60

scoreboard players add @s life 1
execute if score @s life matches 60.. as @a[tag=jumppad_p,tag=jumppad_user,limit=1] run function ut:move/jumppad/stop