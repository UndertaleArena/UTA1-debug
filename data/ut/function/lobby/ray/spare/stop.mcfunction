#By Nebulirion

execute positioned ~ ~-1 ~ as @e[distance=..1,tag=sparable,tag=!ray_user,sort=nearest,limit=1] run function ut:lobby/ray/spare/target
