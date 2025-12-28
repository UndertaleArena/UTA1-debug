#By Nebulirion#By Nebulirion

scoreboard players operation @s gamescore += #psoul gamescore
function ut:game/soul/bossbar_update

execute if score @s gamescore >= -Goal gamescore unless score #ended game matches 1 as @a if score @s tid = #this tid run tag @s add winner
execute if entity @a[tag=winner] run function ut:game/win
tag @a remove winner