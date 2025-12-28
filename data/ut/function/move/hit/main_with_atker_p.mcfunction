#By Nebulirion
#-no counter

###Register Hit
scoreboard players remove #hits hitcheck 1

###Register k(Killer)id
execute unless score @s kid = @a[tag=atker_p,limit=1] pid run scoreboard players operation @s kid = @a[tag=atker_p,limit=1] pid

###Damage Calculation
scoreboard players operation #true_damage damage = #damage damage
scoreboard players operation #true_damage damage *= @s def
scoreboard players operation #true_damage damage /= #rate def
execute if score @s def matches ..0 run scoreboard players set #true_damage damage 0

###Attacker Passive
execute if entity @a[tag=atker_p,tag=passive_toriel] run function ut:move/passive/toriel/main
execute if entity @a[tag=atker_p,tag=passive_napstablook] run function ut:move/passive/napstablook/main

###Damage
execute if score #damage damage matches 1.. run function ut:move/hit/red_filter
function ut:move/hit/damage

###Remove Debuff
execute if entity @s[tag=effect_flirt] run function ut:move/effect/infatuated/clear
function ut:move/passive/damaged
execute if entity @s[tag=dog_owner] unless score #nodogflag store matches 1 run function ut:move/dog/free_p

###Attacker Check
execute as @a[tag=atker_p,limit=1] run function ut:move/hit/atker_p
execute as @e[tag=atker,limit=1] run function ut:move/hit/atker

###
execute at @s run playsound minecraft:entity.firework_rocket.blast player @s ~ ~ ~ 0.6 1.2
execute at @s run function ut:move/hit/particle