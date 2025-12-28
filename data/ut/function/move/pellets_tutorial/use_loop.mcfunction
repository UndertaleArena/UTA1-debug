#By Nebulirion

scoreboard players add @s life 1

scoreboard players remove @e[tag=summon] life 2

summon minecraft:armor_stand ^ ^ ^3 {Tags:[pellet_tut,spc,summon,move,summon_rotate],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,ArmorItems:[{},{},{},{}],Pose:{Head:[0f,0f,0f]},CustomName:'{"translate":"chr.flowey.mpn"}'}

tp @e[tag=summon_rotate] ^ ^ ^5 ~ ~
tag @e[tag=summon_rotate] remove summon_rotate

execute if score @s life matches ..4 rotated ~10 ~ run function ut:move/pellets_tutorial/use_loop