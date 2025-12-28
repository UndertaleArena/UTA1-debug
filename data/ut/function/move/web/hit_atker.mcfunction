#By Nebulirion


function ut:move/rot/12
data merge entity @e[tag=summon,limit=1] {Tags:[summon,move,web,stickonhit,web_hit,prj,prj_sp],NoGravity:1b,Invulnerable:1b,Silent:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:string",components:{custom_model_data:1},count:1b}]}

#####
scoreboard players set #this damage 0
scoreboard players set #this lifetime 140
scoreboard players operation #this damage *= @s atk
scoreboard players operation #this damage /= #rate atk
scoreboard players operation #this pid = #atker pid
scoreboard players operation #this tid = #atker tid
scoreboard players add #aid aid 1

execute if score -web advancement matches 1 run tag @e[tag=summon,limit=1] add web_adv

scoreboard players operation @e[tag=summon,limit=1] sid = #target pid

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast