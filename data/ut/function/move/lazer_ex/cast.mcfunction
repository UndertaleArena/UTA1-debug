#By Nebulirion

#check on this
execute rotated ~ 0 positioned ^ ^ ^.5 run function ut:move/rot/12husk
data merge entity @e[tag=summon,limit=1] {Tags:[summon,move,prj_sp,metta_soul],NoGravity:1b,Invulnerable:1b,Silent:1b,NoAI:1b,ArmorItems:[{},{},{},{id:"minecraft:leather",count:1b,components:{custom_model_data:1}}],Team:"nocol",IsBaby:1b}

scoreboard players set #this lifetime 40
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players operation @e[tag=summon,limit=1] sid = @s pid

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast