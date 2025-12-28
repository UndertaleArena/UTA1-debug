#By Nebulirion

execute if entity @s[tag=effect_soul_patience] run function ut:move/effect/soul/patience/loop
execute if entity @s[tag=effect_soul_justice] run function ut:move/effect/soul/justice/loop
execute if entity @s[tag=effect_soul_integrity] run function ut:move/effect/soul/integrity/loop
execute if entity @s[tag=effect_soul_bravery] run function ut:move/effect/soul/bravery/loop

scoreboard players remove @s soul_timer 1
execute unless score @s soul_timer matches 1.. run function ut:move/effect/soul/clear