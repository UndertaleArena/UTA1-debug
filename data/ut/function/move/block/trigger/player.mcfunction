#By Nebulirion

execute anchored eyes run particle crit ^ ^ ^0.4 0.2 0.2 0.2 0.3 25 force @s[scores={Q=2..}]
execute unless entity @s[tag=effect_immune] run function ut:move/effect/stunned/give
execute unless score @s stun_timer matches 40.. run scoreboard players set @s[tag=!effect_immune] stun_timer 40