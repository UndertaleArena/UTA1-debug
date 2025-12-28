#Original By Nebulirion, SY edited

#summon hand
execute at @s anchored eyes rotated ~ 0 run summon minecraft:armor_stand ^ ^ ^ {Tags:[summon,move,hand,spc,select_hand],Marker:1,CustomName:'{"text":"\\u0054\\u0048\\u0045 \\u0048\\u0041\\u004e\\u0044","font":"minecraft:wingdings"}',ArmorItems:[{},{},{},{id:"bone_meal",count:1b,components:{custom_model_data:0}}]}

scoreboard players set #this damage 200
scoreboard players set #this lifetime -1
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/hand/cast/set