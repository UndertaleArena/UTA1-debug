#By Nebulirion

scoreboard players reset @s king_timer

#effect clear @s minecraft:absorption
#scoreboard players add @s def 50
execute unless entity @s[tag=passive_muffet] run scoreboard players set @s shield 0
execute if entity @s[tag=passive_muffet,tag=!passive_muffet_shield] run scoreboard players set @s shield 0
execute if entity @s[tag=passive_muffet,tag=passive_muffet_shield] unless score @s shield matches ..200 run scoreboard players set @s shield 200

function ut:player/bossbar/refresh

scoreboard players remove @s[tag=effect_king] move_loop 1
tag @s remove effect_king
tag @s remove king_fall
# incase still falling
attribute @s minecraft:gravity modifier remove ut:kingfall

function ut:move/head/change