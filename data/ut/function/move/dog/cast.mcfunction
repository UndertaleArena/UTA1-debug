#By Nebulirion

summon minecraft:husk ~ ~0.4 ~ {Tags:[dog_model,summon,move],NoGravity:1b,Silent:1b,IsBaby:1b,Invulnerable:1b,NoAI:1b,ArmorItems:[{},{},{},{id:"quartz",Count:1,components:{custom_model_data:1}}],HandItems:[{},{}],Glowing:1b,PersistenceRequired:1b,Team:"nocol"}
summon minecraft:marker ~ ~1 ~ {Tags:[annoying_dog,summon,move,spc],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomName:'{"translate":"dog.dog"}'}

scoreboard players set #this pid 0
scoreboard players set #this tid 0
scoreboard players add #aid aid 1

team join c0 @e[type=husk,tag=summon]

particle cloud ~ ~.2 ~ .3 .3 .3 0.1 50 normal @a[scores={Q=2..}]

scoreboard players set @e[tag=summon] life 20

execute as @e[tag=summon] positioned as @s run function ut:move/cast