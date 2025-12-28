#By Nebulirion

scoreboard players add @s unloadtime 1

particle dust{color:[0.663,0.761,0.765],scale:1.5} ~ ~1 ~ 0.25 0.5 0.25 0 8 normal @a[scores={Q=1..}]

execute unless data entity @s SelectedItem.components."minecraft:custom_data".ghost run function ut:move/ghost/stop

scoreboard players operation #this pid = @s pid
execute as @e[tag=ghost_model,type=armor_stand] if score @s sid = #this pid rotated ~ 0 run tp @s ^ ^ ^.5 ~ ~

#scoreboard players operation #temp plt2 = @s plt2
#scoreboard players operation #temp plt2 %= 4 const
#execute if score #temp plt2 matches 0 run function ut:move/ghost/will_lose

#scoreboard players operation #atker tid = @s tid
#execute as @a[tag=playing,tag=!untargetable,distance=..2.5] unless score @s tid = #atker tid positioned ~ ~-0.2 ~ run function ut:move/ghost/hitbox_sad

scoreboard players remove @s plt2 1
execute if score @s plt2 matches 38 run function ut:move/ghost/clear_armor
execute if score @s plt2 matches ..0 run function ut:move/ghost/stop