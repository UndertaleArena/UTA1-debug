#By Nebulirion

scoreboard players set @a store 0
scoreboard players add @r[scores={store=0}] store 1
scoreboard players add @r[scores={store=0}] store 2

scoreboard players operation -rdm store = @r[scores={store=1..}] store
scoreboard players operation -rdm store %= 2 const

execute if score -rdm store matches 1 run data modify storage minecraft:soul Temp append from storage minecraft:soul RandomTeamList[0]
execute unless score -rdm store matches 1 run data modify storage minecraft:soul Temp prepend from storage minecraft:soul RandomTeamList[0]

data remove storage minecraft:soul RandomTeamList[0]
execute if data storage minecraft:soul RandomTeamList[0] run function ut:system/team/shuffle_data_loop