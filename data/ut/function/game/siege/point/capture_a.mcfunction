#By Nebulirion

execute unless score #silentcap store matches 1 run tellraw @a[scores={tbid=1}] [{"translate":"pfx.game"},{"translate":"cht.gms.2a","with":[{"selector":"@a[tag=inpoint_p,scores={tbid=1}]"}]}]
execute unless score #silentcap store matches 1 run tellraw @a[scores={tbid=2}] [{"translate":"pfx.game"},{"translate":"cht.gms.2b","with":[{"selector":"@a[tag=inpoint_p,scores={tbid=1}]"}]}]
execute unless score #silentcap store matches 1 run tellraw @a [{"translate":"pfx.game"},{"translate":"cht.gms.3"}]

execute unless score #silentcap store matches 1 as @a[scores={tbid=1}] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 2 1
execute unless score #silentcap store matches 1 as @a[scores={tbid=2}] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 2 0.8

scoreboard players operation @s gamescore = -GoalA gamescore

scoreboard players add -Timer gamescore 300

#####MAP
function ut:map/s_ruins/rock/end_p
function ut:map/s_ruins/spike/disable

#####BOSSBAR
function ut:game/siege/bossbar_style_fullcap
scoreboard players set -ProgA gamescore 100

function ut:game/siege/bossbar_style_arrow
data modify storage bossbar Arrow2 set from storage bossbar ArrowColored

function ut:game/siege/bossbar_update

#####FINIT
function ut:game/siege/point/capture
