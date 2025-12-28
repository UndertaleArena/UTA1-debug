#By Nebulirion

scoreboard players reset @s plt2

###PLAYER
function ut:move/dash/end_tp
execute positioned as @s if block ~ ~ ~ #ut:ray_trans if block ~ ~1 ~ #ut:ray_trans run scoreboard players set -dash_fail store 0

###DAMAGE
summon minecraft:marker ~ ~ ~ {Tags:[atker,knife,killonhit],CustomName:'{"translate":"chr.chara.ch"}'}

scoreboard players set #damage damage 200
scoreboard players operation #damage damage *= @s atk
scoreboard players operation #damage damage /= #rate atk

execute as @a[tag=dash_target] at @s run function ut:move/dash/hitcheck

kill @e[type=marker,tag=atker,limit=1]

#function ut:move/effect/untargetable/give
#scoreboard players set @s untarget_timer 1