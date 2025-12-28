#By Nebulirion

particle instant_effect ~ ~ ~ 0 0 0 0 0 force

execute if score @s life matches 1 run function ut:move/pellets_tutorial/summon
execute if score @s life matches 20 rotated ~ ~10 run function ut:move/pellets_tutorial/aim
execute if score @s life matches 21.. run function ut:move/pellets_tutorial/loop_move

function ut:move/lifetime
execute unless block ~ ~ ~ #ut:trans run kill @s