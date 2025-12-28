#Original By Nebulirion, edited by SY

#state check
execute unless entity @s[nbt={OnGround:1b}] run function ut:move/effect/nojump/give
execute unless entity @s[nbt={OnGround:1b}] run function ut:move/effect/nofall/give

execute unless score @s plt3 matches ..-100 if entity @s[nbt={OnGround:1b}] run function ut:move/delete/stop
execute if score @s plt3 matches ..-100 run function ut:move/delete/stop