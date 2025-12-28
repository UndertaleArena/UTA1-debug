#By Nebulirion

tellraw @a[scores={tbid=1}] [{"translate":"pfx.game"},{"translate":"cht.gms.1a","with":[{"selector":"@a[tag=inpoint_p,scores={tbid=1}]"}]}]
tellraw @a[scores={tbid=2}] [{"translate":"pfx.game"},{"translate":"cht.gms.1b","with":[{"selector":"@a[tag=inpoint_p,scores={tbid=1}]"}]}]

execute as @a[scores={tbid=1}] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 2 1
execute as @a[scores={tbid=2}] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 2 0.8

scoreboard players set #silentcap store 1
execute as @e[scores={maplock=1},tag=arena_point_a] at @s run function ut:game/siege/point/capture_a
scoreboard players set #silentcap store 0

scoreboard players operation @s gamescore = -GoalB gamescore

#####BOSSBAR
function ut:game/siege/bossbar_style_fullcap2
scoreboard players set -ProgB gamescore 100

function ut:game/siege/bossbar_style_arrow
data modify storage bossbar Arrow3 set from storage bossbar ArrowColored
execute if score -SiegeAttack tid matches 1 run data modify storage bossbar HeartA set value '["§c ⚑ "]'
execute if score -SiegeAttack tid matches 2 run data modify storage bossbar HeartA set value '["§b ⚑ "]'
execute if score -SiegeAttack tid matches 3 run data modify storage bossbar HeartA set value '["§6 ⚑ "]'
execute if score -SiegeAttack tid matches 4 run data modify storage bossbar HeartA set value '["§9 ⚑ "]'
execute if score -SiegeAttack tid matches 5 run data modify storage bossbar HeartA set value '["§e ⚑ "]'
execute if score -SiegeAttack tid matches 6 run data modify storage bossbar HeartA set value '["§d ⚑ "]'
execute if score -SiegeAttack tid matches 7 run data modify storage bossbar HeartA set value '["§a ⚑ "]'
execute if score -SiegeAttack tid matches 8 run data modify storage bossbar HeartA set value '["§f ⚑ "]'
function ut:game/siege/bossbar_update

function ut:game/siege/point/capture
execute unless score #ended game matches 1 run function ut:game/siege/attacker_win