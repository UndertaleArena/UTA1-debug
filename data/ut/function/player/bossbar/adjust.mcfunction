#By Nebulirion

execute as @a[scores={gpid=1..}] if score @s gpid > #max_bossbar store run scoreboard players operation #max_bossbar store = @s gpid
scoreboard players operation #play_bossbar store = #max_bossbar store
execute store result storage ut:macro Bossbar.Current int 1 run scoreboard players get #play_bossbar store
function ut:player/bossbar/macro/loop/reset with storage ut:macro Bossbar

scoreboard players operation #play_bossbar store = #max_bossbar store
execute store result storage ut:macro Bossbar.Current int 1 run scoreboard players get #play_bossbar store
function ut:player/bossbar/macro/loop/setup with storage ut:macro Bossbar

scoreboard players operation #play_bossbar store = #max_bossbar store
execute store result storage ut:macro Bossbar.Current int 1 run scoreboard players get #play_bossbar store
function ut:player/bossbar/macro/loop/display with storage ut:macro Bossbar

execute as @a run function ut:player/bossbar/refresh

execute if score -InGame game matches 1 run scoreboard players add @a bid 0
execute if score -InGame game matches 1 if score -GameMode game matches 4.. run scoreboard players add @a tbid 0

# SPECTATING AND RESPAWNING TEXT DISPLAY
execute if score -GameMode game matches 4 run tag @a[scores={bid=..0}] add bossbar_spectate
execute unless score -GameMode game matches 4 unless score #ended game matches 1 run tag @a[scores={bid=..0},tag=!respawning] add bossbar_spectate
execute unless score -GameMode game matches 4 unless score #ended game matches 1 run tag @a[scores={bid=..0},tag=respawning] add bossbar_respawn
execute unless score -GameMode game matches 4 if score #ended game matches 1 run tag @a[scores={bid=..0}] add bossbar_spectate

# you are spectator
bossbar set p0_line2 players @a[tag=bossbar_spectate]
# you are respawning
bossbar set p0_line3 players @a[tag=bossbar_respawn]

#clear tags
tag @a remove bossbar_spectate
tag @a remove bossbar_respawn
#

bossbar set p0_line1 players @a[scores={bid=..0}]

bossbar set score_a players @a[scores={tbid=..1}]
bossbar set score_b players @a[scores={tbid=2..}]

bossbar set score_a visible false
bossbar set score_b visible false
bossbar set score_a visible true
bossbar set score_b visible true

bossbar set score_a color white
bossbar set score_b color white
execute if score -GameMode game matches 7 run bossbar set score_a color pink
execute if score -GameMode game matches 7 run bossbar set score_b color pink