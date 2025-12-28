#By Nebulirion

function ut:lobby/tutorial/check
execute at @e[tag=ray_flowey] run playsound minecraft:entity.villager.celebrate player @a[tag=tut_p,tag=!tut_nice] ~ ~ ~ 1.8 2
item replace entity @e[tag=ray_flowey] armor.head with potato 1