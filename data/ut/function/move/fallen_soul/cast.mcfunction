#By Nebulirion

summon minecraft:armor_stand ~ ~50 ~ {Tags:[fallen_soul,summon,move,spc],NoGravity:1b,NoBasePlate:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"carrot_on_a_stick",Count:1,components:{custom_model_data:1010}}],HandItems:[{},{}],CustomName:'"Falling Soul"',Small:1b}

#scoreboard players set cmd store 1001
#scoreboard players operation cmd store += #empty tid
#execute store result entity @e[limit=1,tag=summon] ArmorItems[3].components."minecraft:custom_model_data" int 1 run scoreboard players get cmd store

scoreboard players set #this lifetime 101
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast