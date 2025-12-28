#Original By Nebulirion, SY edited

#say assist summon

#summon assist point
execute at @s anchored eyes rotated ~ 0 run summon minecraft:marker ^ ^ ^ {Tags:[summon,move,hand_assist,spc,your_assist],CustomName:'"hand_assist"',Rotation:[360.0f,0.0f]}

scoreboard players set #this damage 0
scoreboard players set #this lifetime -1
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast