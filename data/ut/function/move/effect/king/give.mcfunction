#By Nebulirion

function ut:move/effect/immunity/give
scoreboard players set @s immune_timer 160

scoreboard players set @s king_timer 160
scoreboard players add @s[tag=!effect_king] move_loop 1
tag @s add effect_king

scoreboard players remove @s def 50

function ut:move/head/change