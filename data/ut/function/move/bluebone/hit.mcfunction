###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
scoreboard players operation #target pid = @s pid
execute as @e[type=armor_stand,tag=bluebone] if score @s aid = @e[type=armor_stand,tag=atker,limit=1] aid at @s run function ut:move/hit_list/register
###PARTICLE
execute positioned as @s positioned ~ ~1 ~ run particle item{item:light_blue_concrete} ^ ^ ^-1 0.05 0 0.05 0.1 10 normal @a[scores={Q=2..}]
###MAIN
function ut:move/hit/main