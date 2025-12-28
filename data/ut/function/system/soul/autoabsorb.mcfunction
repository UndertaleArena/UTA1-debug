#By Nebulirion
#drop your own soul

data merge entity @s {PickupDelay:0,Age:5990}
data modify entity @s Owner set from entity @a[tag=soul_killer,limit=1] UUID
tp @s @a[tag=soul_killer,limit=1]