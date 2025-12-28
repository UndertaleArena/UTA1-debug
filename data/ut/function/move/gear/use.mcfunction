#By Nebulirion

scoreboard players set #reset dt 1
execute if score -Enabled stat matches 1 run scoreboard players add @s st_cdtuse 1

execute anchored eyes run function ut:move/gear/cast

scoreboard players operation #this pid = @s pid
execute as @e[tag=dummy_friend] if score @s sid = #this pid run scoreboard players add @s life 999

scoreboard players set @s unloadtime 20
function ut:player/infight/use