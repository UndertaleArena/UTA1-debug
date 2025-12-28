#By Nebulirion

###TrackTime
scoreboard players add @s st_gametime 1

###actionBar
function ut:player/actionbar/main

###Movement
#scoreboard players add @s move 1
function ut:player/movetest
#execute if predicate ut:effects/blue run particle end_rod ~ ~2 ~

###inFight
function ut:player/infight/loop

###Status
#hp
execute if score willHealing gamerule matches 1 if score @s[tag=!hp_lock] last_infight matches 1.. if score @s hp < @s hpmax run function ut:player/hp/regenerate
#mp
scoreboard players remove @s[scores={mpcooldown=1..}] mpcooldown 1
execute unless score @s mpcooldown matches 1.. if score @s mp < @s mpmax run function ut:player/mp/regenerate
#melee
execute unless score @s[tag=!effect_stun,tag=!effect_flirt] mpcooldown matches 1.. if score @s ml < @s mlmax run function ut:player/melee/regenerate
#cd
scoreboard players remove @s[scores={cdcooldown=1..}] cdcooldown 1
execute unless score @s cdcooldown matches 1.. if score @s cd < @s cdmax run function ut:player/cd/regenerate
#dt
execute unless score dtRule gamerule matches 0 unless score dtRule gamerule matches 2 if entity @s[tag=!dt_ready,tag=!dt_shield] if score @s will > #dtLim will run function ut:player/dt/regenerate

#vanillaDamage
execute if score @s eaid matches 1.. run function ut:move/melee/attacker
execute if score @s damage_resisted matches 0.. run function ut:player/damage_resisted

#move
execute if data entity @s SelectedItem.components."minecraft:custom_data".dig if score @s cd >= @s cdmax positioned ~ ~1.5 ~ run function ut:move/dig/ray
execute if data entity @s[tag=dt_ready] SelectedItem.components."minecraft:custom_data".injection run function ut:move/injection/hint
execute if entity @s[tag=passive_default] run function ut:move/hand/player_loop
execute if score @s move_loop matches 1.. run function ut:move/player_loop/main

###rightClick
scoreboard players remove @s[scores={unloadtime=1..}] unloadtime 1
scoreboard players remove @s[scores={unloadtime_2nd=1..}] unloadtime_2nd 1
execute if score @s rc matches 1.. at @s run function ut:player/rc_cond

###Particle
#!Teammate/Enemy Particle
function ut:player/particle_dt
function ut:player/particle_spare

###Soul
execute if entity @s[tag=boss] run function ut:game/boss/player_loop
execute if score @s pickup_soul matches 1.. run function ut:system/soul/pickup
execute if score @s pickup_candy matches 1.. run function ut:map/s_ruins/candy/pickup

###resetShift
scoreboard players reset @s shift

###Void
execute unless entity @s[tag=void_immune] run function ut:player/void/main_check
#Protection Log
execute if score voidProtection gamerule matches 1 at @s[nbt={OnGround:1b},tag=!effect_novoid_inair] unless block ~ ~-1 ~ #ut:trans_voidprotect run function ut:player/movetest_lastground

###Swap

execute if score swapCharacter gamerule matches 1 if score -GameMode game matches 4..7 if entity @s[tag=can_change_chr] run function ut:system/chrswitch/check