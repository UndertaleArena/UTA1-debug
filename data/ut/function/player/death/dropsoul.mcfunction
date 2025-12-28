#By Nebulirion

#scoreboard players set -drop soul_count 1
#scoreboard players set -dropextra soul_count 1
#execute if score B_DropSoul gamerulemode matches 0 run scoreboard players set -dropextra soul_count 0
#
#execute if score #hasBoss game matches 1 run scoreboard players set -drop soul_count 0

#execute if score B_AutoAbsorb gamerulemode matches 1 if entity @a[tag=cause_p,limit=1] run scoreboard players set -absorb soul_count 1

tag @a[tag=cause_p,tag=playing,tag=!respawning] add soul_killer

scoreboard players set -autoabsorb soul 0
scoreboard players set -drop soul 1
scoreboard players set -tomid soul 0

execute if entity @s[tag=void] if entity @a[tag=soul_killer,limit=1] run scoreboard players set -autoabsorb soul 1

execute if entity @s[tag=void] unless entity @a[tag=soul_killer,limit=1] run scoreboard players set -tomid soul 1

execute if score dropSoul gamerule matches 1 unless entity @a[tag=soul_killer,limit=1] run scoreboard players set -drop soul 0

execute if score absorbSoul gamerule matches 1 run scoreboard players set -autoabsorb soul 1

execute if score -drop soul matches 1 unless entity @s[tag=amalgamate] run function ut:system/soul/drop_self
execute if score -drop soul matches 1 if score dropSoul gamerule matches 2.. run function ut:system/soul/drop_all

execute store result score @s soul_count run clear @s carrot_on_a_stick[custom_data~{soul:1b}] 0

tag @a remove soul_killer