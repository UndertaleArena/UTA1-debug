#By Nebulirion and Sy91419:
#Arena Creation Tools!

execute unless score #silentcap store matches 1 if entity @s[tag=captured] run playsound minecraft:block.piston.contract player @a ~ ~ ~ 2 1 0.4

fill ~2 ~-1 ~-5 ~2 ~8 ~8 air replace barrier

execute positioned ~2 ~1 ~ run function ut:map/s_ruins/spike/disable_pl
execute positioned ~2 ~3 ~ run function ut:map/s_ruins/spike/disable_pl
execute positioned ~2 ~5 ~ run function ut:map/s_ruins/spike/disable_pl
execute positioned ~2 ~7 ~ run function ut:map/s_ruins/spike/disable_pl

fill ~ ~ ~ ~5 ~ ~3 air replace lightning_rod
fill ~ ~1 ~ ~5 ~8 ~3 air replace barrier