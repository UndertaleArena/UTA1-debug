#By Nebulirion

particle large_smoke ~ ~.35 ~ .43 .42 .43 0.1 25 normal @a[scores={Q=2..}]
scoreboard players operation #this aid = @s aid
execute as @e[tag=dog_model] if score @s aid = #this aid run function ut:void
function ut:void

