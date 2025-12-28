#By Nebulirion

execute if score -tid tid matches 1 store result score @r[scores={tid=0},tag=player] tid run data get storage minecraft:soul RandomTeamList[0]
execute if score -tid tid matches 2 store result score @r[scores={tid=0},tag=player] tid run data get storage minecraft:soul RandomTeamList[1]
execute if score -tid tid matches 3 store result score @r[scores={tid=0},tag=player] tid run data get storage minecraft:soul RandomTeamList[2]
execute if score -tid tid matches 4 store result score @r[scores={tid=0},tag=player] tid run data get storage minecraft:soul RandomTeamList[3]
execute if score -tid tid matches 5 store result score @r[scores={tid=0},tag=player] tid run data get storage minecraft:soul RandomTeamList[4]
execute if score -tid tid matches 6 store result score @r[scores={tid=0},tag=player] tid run data get storage minecraft:soul RandomTeamList[5]
execute if score -tid tid matches 7 store result score @r[scores={tid=0},tag=player] tid run data get storage minecraft:soul RandomTeamList[6]
execute if score -tid tid matches 8 store result score @r[scores={tid=0},tag=player] tid run data get storage minecraft:soul RandomTeamList[7]

scoreboard players add -tid tid 1
execute if score -tid tid > tl store run scoreboard players set -tid tid 1

scoreboard players remove pl store 1
execute if score pl store matches 1.. if entity @a[scores={tid=0},tag=player] run function ut:system/give_tid_loop