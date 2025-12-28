#By Nebulirion

#召喚實體
summon minecraft:armor_stand ^ ^.5 ^ {Tags:[summon2,ak_bullet,credit_as,cmove,axeblock,summon],Motion:[0.0d,0.0d,0.0d],NoGravity:0b,CustomName:'{"translate":"chr.ak.chn2"}',ArmorItems:[{},{},{},{id:"minecraft:grass_block",count:1b}],DisabledSlots:3620671,Marker:0b}

#Motion
execute store result score x1 x_pos run data get entity @e[tag=summon,limit=1] Pos[0] 1000
execute store result score z1 x_pos run data get entity @e[tag=summon,limit=1] Pos[2] 1000

execute store result score x2 x_pos run data get entity @s Pos[0] 1000
execute store result score z2 x_pos run data get entity @s Pos[2] 1000

scoreboard players operation x2 x_pos -= x1 x_pos
scoreboard players set y2 x_pos 25000
scoreboard players operation z2 x_pos -= z1 x_pos

execute store result entity @e[tag=summon,limit=1] Motion[0] double 0.0001 run scoreboard players get x2 x_pos
execute store result entity @e[tag=summon,limit=1] Motion[1] double 0.00003 run scoreboard players get y2 x_pos
execute store result entity @e[tag=summon,limit=1] Motion[2] double 0.0001 run scoreboard players get z2 x_pos

scoreboard players set @e[tag=summon,limit=1,type=armor_stand] life 0
scoreboard players set @e[tag=summon,limit=1,type=armor_stand] lifetime 100

tag @e[tag=summon,limit=1,type=armor_stand] remove summon

tag @s remove axe_target