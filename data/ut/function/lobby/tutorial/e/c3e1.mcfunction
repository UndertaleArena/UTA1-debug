#By Nebulirion

execute as @a[tag=ray_user] run function ut:lobby/tutorial/e/c3ex

tag @a[tag=ray_user] add tut_nice
execute unless entity @a[tag=tut_p,tag=!tut_nice] run schedule function ut:lobby/tutorial/e/d1 1s