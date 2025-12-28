###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
scoreboard players reset @e[tag=atker,limit=1] life2
scoreboard players operation #this aid = @e[tag=atker,limit=1] aid
scoreboard players operation #this nid = @s pid
execute as @e[tag=firehand_ball] if score @s aid = #this aid run scoreboard players operation @s nid = #this nid
###PARTICLE
execute positioned as @s positioned ~ ~1 ~ run particle block{block_state:lava} ^ ^ ^-1 0.1 0.05 0.1 0.1 40 normal @a[scores={Q=2..}]
###MAIN
function ut:move/hit/main