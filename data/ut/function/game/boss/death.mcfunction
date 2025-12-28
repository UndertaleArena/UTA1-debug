#By Nebulirion

scoreboard players set -drop soul_count 1
scoreboard players set -dropextra soul_count 1
execute if score B_DropSoul gamerulemode matches 0 run scoreboard players set -dropextra soul_count 0

execute if score #hasBoss game matches 1 run scoreboard players set -drop soul_count 0

scoreboard players set -absorb soul_count 0

execute if score B_AutoAbsorb gamerulemode matches 1 if entity @a[tag=cause_p,limit=1] run scoreboard players set -absorb soul_count 1

execute if entity @s[tag=void] if entity @a[tag=cause_p,limit=1] run scoreboard players set -absorb soul_count 1
execute if entity @s[tag=void] unless entity @a[tag=cause_p,limit=1] run scoreboard players set -drop soul_count 0

execute if score -drop soul_count matches 1 run function ut:game/boss/dropsoul2
execute if score -drop soul_count matches 1 if score -dropextra soul_count matches 1 run function ut:game/boss/dropsoul

execute store result score @s soul_count run clear @s carrot_on_a_stick[custom_data~{soul:1b}] 0