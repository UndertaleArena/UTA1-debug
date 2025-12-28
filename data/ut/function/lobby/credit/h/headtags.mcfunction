#hihi this is neb
#my fav.number is 27

#####display name
data modify storage hp Skull.temp set value []
###
execute positioned ~ ~1 ~ run function ut:lobby/credit/h/headtags_loop
###
tellraw @s {"storage": "hp","nbt": "Skull.temp[]", "interpret": true}
#####