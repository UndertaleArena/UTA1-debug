#By Nebulirion

###Actionbar
execute if score flowey tutorial matches 7.. run function ut:lobby/tutorial/actionbar

execute if score @s move_loop matches 1.. run function ut:move/player_loop/main

###Movement
function ut:player/movetest
scoreboard players reset @s shift

execute if score @s title_timer matches 1.. run scoreboard players remove @s title_timer 1

###inFight
scoreboard players add @s last_use 1
scoreboard players add @s last_damaged 1
scoreboard players add @s last_damage 1
execute if score @s last_use >= #out last_infight if score @s last_damaged >= #out last_infight run scoreboard players add @s last_infight 1
execute if score @s last_damaged >= #clear kid run scoreboard players reset @s kid

###Status
#hp
execute if score @s last_infight matches 1.. if score @s hp < @s hpmax run function ut:player/hp/regenerate
#mp
scoreboard players remove @s[scores={mpcooldown=1..}] mpcooldown 1
execute if score flowey tutorial matches 7.. unless score @s mpcooldown matches 1.. if score @s mp < @s mpmax run function ut:player/mp/regenerate
#cd
scoreboard players remove @s[scores={cdcooldown=1..}] cdcooldown 1
execute if score flowey tutorial matches 9.. unless score @s cdcooldown matches 1.. if score @s cd < @s cdmax run function ut:player/cd/regenerate
#dt
execute if score flowey tutorial matches 15.. if entity @s[tag=!dt_ready] if score @s will > #dtLim will run function ut:player/dt/regenerate

###Right Click
#scoreboard players remove @s[scores={unloadtime=1..}] unloadtime 1
execute if score flowey tutorial matches 7.. if data entity @s SelectedItem.components."minecraft:custom_data".sp_move if score @s rc matches 1.. at @s run function ut:player/rc_cond
execute if score flowey tutorial matches 7.. if data entity @s SelectedItem.components."minecraft:custom_data".mp_move if score @s rc matches 1.. at @s run function ut:player/rc_cond
execute if score flowey tutorial matches 9.. if data entity @s SelectedItem.components."minecraft:custom_data".cd_move if score @s rc matches 1.. at @s run function ut:player/rc_cond
execute if score flowey tutorial matches 13.. if data entity @s SelectedItem.components."minecraft:custom_data".dt_move if score @s rc matches 1.. at @s run function ut:player/rc_cond

#vanillaDamage
execute if score @s damage_resisted matches 0.. run function ut:player/damage_resisted

###Particle
#!Teammate/Enemy Particle
function ut:player/particle_dt