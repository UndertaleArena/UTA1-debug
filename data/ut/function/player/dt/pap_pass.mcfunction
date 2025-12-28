#By ANTHINY609
# USED TO SETUP BOSSBAR For Papyrus Extension

# Check Bossbar status
scoreboard players operation #dt dtmath = @s dt
execute if score @s dt > @s dthalf run scoreboard players set #bossbar store 1
execute if score @s dt <= @s dthalf run scoreboard players set #bossbar store 0
# Hide all visibility not matched
execute unless score #bossbar store = @s passive_timer run bossbar set score_a visible false
execute unless score #bossbar store = @s passive_timer run bossbar set score_b visible false
# Visual Calculation Macros
$execute if score @s dt <= @s dthalf run bossbar set p$(Current)_dt color red
$execute if score @s dt <= @s dthalf run bossbar set p$(Current)_dt players @s
$execute if score @s dt <= @s dthalf run bossbar set p$(Current)_dt_passive players
$execute if score @s dt > @s dthalf run bossbar set p$(Current)_dt_passive value 0
$execute if score @s dt > @s dthalf run bossbar set p$(Current)_dt_passive color blue
$execute if score @s dt > @s dthalf run bossbar set p$(Current)_dt_passive players @s
$execute if score @s dt > @s dthalf run bossbar set p$(Current)_dt players
$execute if entity @s[scores={bid=$(Current)}] store result bossbar p$(Current)_dt max run scoreboard players get @s dthalf
$execute if entity @s[scores={bid=$(Current)}] store result bossbar p$(Current)_dt_passive max run scoreboard players get @s dthalf
$execute if entity @s[scores={bid=$(Current)}] if score @s dt >= @s dthalf store result bossbar p$(Current)_dt_passive value run scoreboard players operation #dt dtmath -= @s dthalf
# Bossbar visibility
execute unless score #bossbar store = @s passive_timer run bossbar set score_a visible true
execute unless score #bossbar store = @s passive_timer run bossbar set score_b visible true
# State score setup
execute if score @s dt > @s dthalf run scoreboard players set @s passive_timer 1
execute if score @s dt <= @s dthalf run scoreboard players set @s passive_timer 0