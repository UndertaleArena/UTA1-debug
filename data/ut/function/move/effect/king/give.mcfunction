#By Nebulirion

function ut:move/effect/immunity/give
scoreboard players set @s immune_timer 160

scoreboard players set @s king_timer 160
scoreboard players add @s[tag=!effect_king] move_loop 1
tag @s add effect_king

execute if entity @s[tag=passive_muffet,tag=passive_muffet_shield] run scoreboard players set @s plt4 -1

# update shield value
scoreboard players add @s shield 300
# reload bossbar display
function ut:player/bossbar/refresh

#scoreboard players remove @s def 50

function ut:move/head/change