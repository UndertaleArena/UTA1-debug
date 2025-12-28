###Generated from Nebulagen made By Nebulirion
#06/12/2024, 16:37:49

###EXTRA
data merge entity @e[tag=atker,limit=1] {CustomName:'{"translate":"chr.maddummy.chn1"}'}
playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 0.6 2
scoreboard players operation #target pid = @s pid
execute as @e[tag=atker,limit=1] run function ut:move/hit_list/register
###PARTICLE
execute positioned as @s positioned ~ ~1 ~ run particle item{item:popped_chorus_fruit} ^ ^ ^-1 0.05 0 0.05 0.01 8 normal @a[scores={Q=2..}]
###MAIN
function ut:move/hit/main