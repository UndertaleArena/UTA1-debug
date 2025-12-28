#By Nebulirion

#Orange tiles change the protagonists flavor to "Orange."

playsound minecraft:entity.experience_orb.pickup player @s[tag=!orange_flavor] ~ ~ ~ .5 1

tag @s remove lemon_flavor
tag @s add orange_flavor