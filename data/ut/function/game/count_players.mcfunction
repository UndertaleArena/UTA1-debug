#By Nebulirion

###Info
execute store result score -PlayerCount game if entity @a[team=!]
scoreboard players set -TeamCount game 0
tag @a[team=!] add counting_team
execute as @a[team=!] run function ut:game/count_team
scoreboard players set -TeamMode game 0
execute if score -PlayerCount game > -TeamCount game run scoreboard players set -TeamMode game 1