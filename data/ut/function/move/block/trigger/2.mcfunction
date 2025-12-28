#By Nebulirion

scoreboard players remove #hits hitcheck 1

####sound + particles
execute at @s run playsound minecraft:entity.zombie.attack_iron_door player @a ~ ~ ~ .5 0.8
execute anchored eyes run particle minecraft:crit ^ ^-0.25 ^0.5 0.2 0.3 0.2 0.1 25 normal @a[scores={Q=2..}]

###longer block
#scoreboard players add @s plt2 5
execute if score @s plt2 matches ..20 run scoreboard players set @s plt2 20

###prj
scoreboard players operation #new pid = @s pid
scoreboard players operation #new tid = @s tid
execute anchored eyes positioned ^ ^-.2 ^.25 as @e[tag=atker,limit=1,tag=blockable] run function ut:move/block/trigger/prj

####player
execute as @a[tag=atker_melee,limit=1] at @s run function ut:move/block/trigger/player
#