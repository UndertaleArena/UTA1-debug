#By Nebulirion

#add tag
execute at @e[type=marker,tag=mng_dummy,limit=1] align xyz as @a[distance=..40] at @s if block ~ 147 ~ mycelium run tag @s add in_dummy_mng
