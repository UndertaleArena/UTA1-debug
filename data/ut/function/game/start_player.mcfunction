#By Nebulirion

#function ut:lobby/tutorial/leave
#function ut:lobby/credit/leave
scoreboard players set @s dog 0
scoreboard players set @s advancement 0
scoreboard players set @s advancement_c 0

#####Character
execute if score -Enabled stat matches 1 run function ut:stats/start_player

scoreboard players set @s istobychr 0
execute if items entity @s armor.chest *[custom_data~{passive:"random"}] run scoreboard players set @s istobychr 1
#forceChoose
execute if data entity @s equipment.chest.components."minecraft:custom_data".passive run function ut:choose/force
#forceRandom
execute unless data entity @s equipment.chest.components."minecraft:custom_data".passive run tellraw @s ["",{"translate":"pfx.info"},{"translate":"cht.chr2"}]
execute unless data entity @s equipment.chest.components."minecraft:custom_data".passive run function ut:choose/_tobyfox
#Random
execute if items entity @s armor.chest *[custom_data~{passive:"random"}] run function ut:choose/random
#Score

#hpDisplay
execute if score hpDisplay gamerule matches 2 run function ut:move/name/cast

#####Setup
gamemode adventure @s
tag @s add playing
scoreboard players reset @s gamesec
function ut:player/setup
#
scoreboard players operation @s L = L gamerule
scoreboard players set @s unloadtime 500
scoreboard players reset @s respawnTimer
#
execute unless score @s tutorial matches 1.. run scoreboard players set @s tutorial 1

##Swap
execute if score swapCharacter gamerule matches 1 if score -GameMode game matches 4..7 run function ut:system/chrswitch/inventory

#tags
tag @s remove boss
tag @s remove respawning
tag @s remove untargetable
tag @s remove no_mc_dmg
tag @a remove void_immune
tag @s remove play_game

#####Effects
#Extra
function ut:game/title_effect