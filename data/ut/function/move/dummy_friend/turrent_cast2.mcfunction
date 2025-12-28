###Generated from Nebulagen made By Nebulirion
#06/21/2021, 20:19:29

###MOVEMENT
scoreboard players set @s range 720
scoreboard players set @s speed 24
scoreboard players set @s offset 150
scoreboard players operation @s speed *= #player prj_speed
scoreboard players operation @s speed /= 100 const
execute if score @s speed matches 64.. run scoreboard players set @s speed 63
###DAMAGE
scoreboard players set @s damage 200
scoreboard players operation @s damage *= #player damage
scoreboard players operation @s damage /= 100 const
###IDENTITY
scoreboard players operation @s pid = #player pid
scoreboard players operation @s tid = #player tid
scoreboard players operation @s aid = #aid aid
###FINISH
tp @s ~ ~ ~ ~ ~
tag @s remove summon
###EXTRA
scoreboard players operation @s sid = #player pid

scoreboard players operation @s prj_speed = #player prj_speed
scoreboard players operation @s atk = #player damage
particle poof ~ ~.1 ~ .08 .2 .08 0.02 4 normal @a[scores={Q=2..}]
playsound minecraft:block.dispenser.launch player @a ~ ~ ~ .9 1.6

execute unless block ~ ~ ~ #ut:trans run tp @s ^ ^ ^-.4
execute positioned as @s unless block ~ ~ ~ #ut:trans run tp @s ^ ^ ^-.4