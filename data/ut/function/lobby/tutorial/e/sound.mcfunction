#By Nebulirion

function ut:lobby/tutorial/check
execute at @e[tag=ray_flowey] run playsound minecraft:entity.villager.celebrate player @a[tag=tut_p] ~ ~ ~ 1.8 1.8
item replace entity @e[tag=ray_flowey] armor.head with golden_carrot 1