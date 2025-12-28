#awguawyiggwa]

scoreboard players set -talking_flower tut_st 0
tag @s add talking_flower
execute as @a[tag=ray_user,limit=1] if score @s tut_st matches 5.. run function ut:lobby/tutorial/s/r10/talk_p
execute as @a[tag=ray_user,limit=1] unless score @s tut_st matches 5.. run function ut:lobby/tutorial/s/talk_p
tag @s remove talking_flower

execute if score -talking_flower tut_st matches 0 run function ut:lobby/tutorial/s/sound
execute if score -talking_flower tut_st matches 1 run function ut:lobby/tutorial/s/soundt
execute if score -talking_flower tut_st matches 2 run function ut:lobby/tutorial/s/sounda
execute if score -talking_flower tut_st matches 3 run function ut:lobby/tutorial/s/sounde