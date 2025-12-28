#By Nebulirion

item replace entity @e[tag=ray_flowey] armor.head with golden_carrot 1

scoreboard players set flowey_in tutorial 1
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/a0e1 1s