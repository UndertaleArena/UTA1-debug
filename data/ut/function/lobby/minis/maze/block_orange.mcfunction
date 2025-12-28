#By Nebulirion

#Orange tiles change the protagonist's flavor to "Orange."

playsound minecraft:entity.experience_orb.pickup player @s[tag=!orange_flavor] ~ ~ ~ .5 1

tag @s remove lemon_flavor
tag @s add orange_flavor