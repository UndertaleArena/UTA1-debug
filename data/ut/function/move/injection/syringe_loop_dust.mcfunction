#By Nebulirion

tp @s ~0.0002 ~-0.004 ~0.0003

particle minecraft:sneeze ~-.1 ~-.2 ~-.15 0 0 0 0.05 1 normal @a[scores={Q=3..}]

execute store result score cmd store run data get entity @s ArmorItems[3].components."minecraft:custom_model_data"
scoreboard players add cmd store 1
execute store result entity @s ArmorItems[3].components."minecraft:custom_model_data" int 1 run scoreboard players get cmd store 

scoreboard players add @s life 1

scoreboard players operation #this aid = @s aid

execute if score @s life matches 36.. as @e[tag=dust_pile,tag=!dust_pile_norevive] if score @s aid = #this aid run function ut:move/injection/use_suc_revive
execute if score @s life matches 36.. run function ut:void