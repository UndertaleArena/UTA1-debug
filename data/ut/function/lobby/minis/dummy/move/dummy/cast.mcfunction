#Originally made by Nebulirion, edited by SY91419

#summon
summon armor_stand ~ ~ ~ {Marker:0b,Tags:[active,ray_target,ray_shoot_dummy,summon,mini_dummy,mini_move,mngd_as],Invulnerable:1b,NoGravity:1b,DisabledSlots:3620671}

#initial
execute as @e[tag=summon,type=armor_stand,limit=1] at @s run function ut:lobby/minis/dummy/move/dummy/init

#remove tag
tag @e[tag=summon,type=armor_stand,limit=1] remove summon