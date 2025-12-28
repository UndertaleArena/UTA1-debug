#By Nebulirion

#say created new HP BAR!

#check on this
execute at @s anchored eyes rotated ~ 0 run summon minecraft:armor_stand ^ ^.5 ^ {Tags:[summon,move,name,spc],Marker:1,CustomName:'""',CustomNameVisible:1b}

scoreboard players set #this damage 0 
scoreboard players set #this lifetime -1
scoreboard players operation @e[tag=summon,limit=1] sid = @s pid
scoreboard players operation #this pid = @s pid
scoreboard players operation #this tid = @s tid
scoreboard players add #aid aid 1

execute as @e[tag=summon,limit=1] positioned as @s run function ut:move/cast