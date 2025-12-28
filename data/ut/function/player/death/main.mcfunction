#By Nebulirion
#triggers when a player is about to get removed from the battle.
#spare/melt/die

gamemode spectator @s

##################################
tag @s add deader

scoreboard players set #killingBlow damage 1

scoreboard players operation #deader pid = @s pid
scoreboard players operation #killer pid = @s kid

execute as @a if score @s pid = #killer pid run tag @s add killer_p

execute if entity @a[tag=spare_p] run tag @a remove killer_p

tag @a[tag=killer_p] add cause_p
tag @a[tag=spare_p] add cause_p

scoreboard players set #selfKill damage 0
execute if entity @s[tag=cause_p] run scoreboard players set #selfKill damage 1
##############
#TYPES + DEATH MSG
execute if entity @s[tag=spared] run function ut:player/death/spare
execute if entity @s[tag=melted] run function ut:player/death/melt
execute if entity @s[tag=!melted,tag=!spared,tag=!recon_void] run function ut:player/death/kill

##############
#KILLER
execute if entity @s[tag=!amalgamate] unless score #selfKill damage matches 1 as @a[tag=cause_p,limit=1] at @s run function ut:player/death/killer

##############
#GAMEMODE
execute if entity @s[tag=dog_owner] run function ut:move/dog/free_p
execute if score dropSoul gamerule matches 1.. run function ut:player/death/dropsoul

#BORDER
execute if score -hasBorder gamerule matches 1 if score -final border matches 0 run scoreboard players operation -starttime border -= #extratime border

##############
#VOID
execute if entity @s[tag=void] run tp @s @e[type=marker,limit=1,tag=arena_mid,scores={maplock=1}]

##############
#STAT
execute if entity @s[tag=!amalgamate] if score -Enabled stat matches 1 run function ut:player/death/stats

#ADVANCEMENTS
execute if score -Enabled stat matches 1 run function ut:player/death/advancement

###Clear Sticking Moves
execute as @e[tag=move] if score @s sid = #deader pid run tag @s add move_stick
execute if entity @s[tag=void] if entity @e[tag=move_stick,tag=web_adv] if score -Enabled stat matches 1 as @a[tag=killer_p,scores={chr=7}] run function ut:stats/advancement_secret
execute as @e[tag=move_stick] run function ut:void
tag @e remove move_stick
###

###Stop every thing, clear the moves
scoreboard players set @s hpdisplay 0
function ut:move/player_loop/fullstop
scoreboard players remove @s L 1
execute if score @s L matches 1.. run function ut:player/death/respawn
execute unless score @s L matches 1.. run function ut:player/death/remove

###RESTORE
function ut:player/restore

##################################
#BOSSBAR
title @s actionbar ""

scoreboard players operation @s bid -= #max_bossbar store
function ut:player/bossbar/adjust

##############Clean Up

tag @a[tag=killer_p] remove killer_p
tag @a[tag=cause_p] remove cause_p

tag @s remove deader
##############
#Win Detection
schedule function ut:game/win_detection 1t