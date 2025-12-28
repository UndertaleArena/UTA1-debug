#By Nebulirion

#Purple tiles act similarly to the ice tiles in Snowdin Forest; they force the protagonist to the next tile in the direction they are facing (the player's controls are locked in the meantime). Additionally, purple tiles change the protagonist's flavor to "Lemon."

playsound minecraft:entity.experience_orb.pickup player @s[tag=!lemon_flavor] ~ ~ ~ .5 1

tag @s add force_slide

tag @s remove orange_flavor
tag @s add lemon_flavor