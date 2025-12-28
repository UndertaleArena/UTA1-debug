###Generated from Nebulagen made By Nebulirion
#11/23/2021, 23:36:21

execute align xyz run summon minecraft:armor_stand ~.5 ~-.3 ~.5 {Tags:[maze_piranha,move,summon],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:cod",count:1b}],CustomName:'{"translate":"mng.piranha"}'}

execute as @e[tag=summon,limit=1] positioned as @s run tp @s ~ ~.6 ~
tag @e[tag=summon,limit=1] remove summon 