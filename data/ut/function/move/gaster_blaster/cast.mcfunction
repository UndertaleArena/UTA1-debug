#By Nebulirion

###playsound 
playsound minecraft:block.enchantment_table.use player @a[distance=..96] ~ ~ ~ 2 0.8 1

summon minecraft:husk ^ ^ ^ {Tags:[prep,move,gb,gb_skull,summon,spc],NoGravity:1b,Invulnerable:1b,NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:bone_meal",count:1b}],Silent:1b,DeathLootTable:"nope",CustomNameVisible:0b,Team:"nocol",Glowing:1b}

scoreboard players set #this damage 50
scoreboard players set #this lifetime 120
scoreboard players operation #this damage *= @s atk
scoreboard players operation #this damage /= #rate atk
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast