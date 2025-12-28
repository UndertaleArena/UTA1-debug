#By Nebulirion

summon slime ~ ~ ~ {Size:3,NoAI:1b,Silent:1b,Invulnerable:1b,Tags:[move,spc,kb_slime,summon]}
summon slime ~ ~ ~ {Size:3,NoAI:1b,Silent:1b,Invulnerable:1b,Tags:[move,spc,kb_slime,summon]}

execute if entity @s[team=t1] run team join t1 @e[tag=summon,type=slime]
execute if entity @s[team=t2] run team join t2 @e[tag=summon,type=slime]
execute if entity @s[team=t3] run team join t3 @e[tag=summon,type=slime]
execute if entity @s[team=t4] run team join t4 @e[tag=summon,type=slime]
execute if entity @s[team=t5] run team join t5 @e[tag=summon,type=slime]
execute if entity @s[team=t6] run team join t6 @e[tag=summon,type=slime]
execute if entity @s[team=t7] run team join t7 @e[tag=summon,type=slime]
execute if entity @s[team=t8] run team join t8 @e[tag=summon,type=slime]
execute if entity @s[team=nosoul] run team join nosoul @e[tag=summon,type=slime]
execute if entity @s[team=boss] run team join boss @e[tag=summon,type=slime]

tag @e[tag=summon,type=slime] remove summon