#By Nebulirion

execute if score @s damage matches 200.. anchored eyes run particle cloud ^ ^.2 ^ 0.3 0.3 0.3 0.05 6 normal @a[scores={Q=2..}]
execute unless score @s damage matches 200.. anchored eyes run particle cloud ^ ^.2 ^ 0.2 0.2 0.2 0.05 2 normal @a[scores={Q=2..}]
execute if score #isVoid store matches 2 run playsound block.lava.extinguish player @a ~ ~ ~ 0.25 1
execute as @s[type=!player,tag=!novapordeath] run function ut:void