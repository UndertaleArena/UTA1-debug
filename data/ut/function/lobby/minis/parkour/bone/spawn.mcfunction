#By Nebulirion

scoreboard players reset parkour_timer tutorial

execute positioned ~10 ~ ~ rotated 90 0 run function ut:move/random/cast
tag @e[tag=random_as] add p
execute positioned ~-10 ~ ~ rotated -90 0 run function ut:move/random/cast

kill @e[tag=random_as,limit=1,sort=random]

execute if entity @e[tag=random_as,tag=p] run summon minecraft:armor_stand ~9.5 ~ ~ {Tags:[summon,parkour_bone,parkour_bone_p],NoGravity:1b,Silent:1b,Invisible:0b,Marker:0b,Invulnerable:1b,Rotation:[90.0f,0.0f],DisabledSlots:3620671}
execute unless entity @e[tag=random_as,tag=p] run summon minecraft:armor_stand ~-9.5 ~ ~ {Tags:[summon,parkour_bone,parkour_bone_p],NoGravity:1b,Silent:1b,Invisible:0b,Marker:0b,Invulnerable:1b,Rotation:[-90.0f,0.0f],DisabledSlots:3620671}

kill @e[tag=random_as]

#Z PoS
data remove block 255 0 255 Items
execute store result score loot z_pos run loot insert 255 0 255 loot ut:18
scoreboard players operation c z_pos = mngp z_pos
scoreboard players operation c z_pos += loot z_pos
scoreboard players operation @e[tag=summon,limit=1] z_pos = c z_pos
execute store result entity @e[tag=summon,limit=1] Pos[2] double 1 run scoreboard players get c z_pos

#Y Active
execute as @e[tag=parkour_bone,tag=!summon] if score @s z_pos = c z_pos run function ut:lobby/minis/parkour/bone/ytest
execute if score loot z_pos matches 15..17 as @e[tag=mngp_ypos] if score @s life matches 4..7 run tag @s remove active
execute unless entity @e[tag=mngp_ypos,tag=active] run kill @e[tag=summon,limit=1,type=armor_stand]

#Y Pos
tag @e remove itsme
tag @e[tag=mngp_ypos,tag=active,limit=1,sort=random] add itsme
data modify entity @e[tag=summon,limit=1] Pos[1] set from entity @e[tag=itsme,limit=1] Pos[1]
scoreboard players operation c y_pos = @e[tag=itsme,limit=1] life
scoreboard players operation @e[tag=summon,limit=1,type=armor_stand] y_pos = c y_pos

item replace entity @e[tag=summon,limit=1,type=armor_stand] armor.head with minecraft:ink_sac 1
execute as @e[tag=summon,limit=1] at @s run tp @s ~ ~ ~.5

tag @e[tag=mngp_ypos] add active
tag @e[tag=summon,limit=1,type=armor_stand] remove summon

