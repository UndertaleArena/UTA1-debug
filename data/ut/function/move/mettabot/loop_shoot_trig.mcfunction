# origin by Nebulirion, edited by SY91419

# cast shoot
execute if entity @a[tag=mtb_target,distance=..16] facing entity @p[tag=mtb_target] eyes run function ut:move/mettabot/shoot
# reset loop
scoreboard players reset @s life2