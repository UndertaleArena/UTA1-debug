#By Nebulirion

execute if entity @s[tag=sy_bullet] run scoreboard players add @e[tag=sy_as,tag=credit_as] credit_hit 1
execute if entity @s[tag=blue_bullet] run scoreboard players add @e[tag=blue_as,tag=credit_as] credit_hit 1
execute if entity @s[tag=neb_bullet] run scoreboard players add @e[tag=neb_as,tag=credit_as] credit_hit 1
execute if entity @s[tag=ak_bullet] run scoreboard players add @e[tag=ak_as,tag=credit_as] credit_hit 1

execute if entity @s[tag=sy_bullet] run team join touched @e[tag=sy_as,tag=credit_as]
execute if entity @s[tag=blue_bullet] run team join touched @e[tag=blue_as,tag=credit_as]
execute if entity @s[tag=neb_bullet] run team join touched @e[tag=neb_as,tag=credit_as]
execute if entity @s[tag=ak_bullet] run team join touched @e[tag=ak_as,tag=credit_as]

execute if entity @s[tag=cmove,tag=!explode,tag=!nokill] at @s run particle dust{color:[1.0,1.0,0.0],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 6 force
kill @s[tag=cmove,tag=!nokill]