#hi

scoreboard players add headdd credit 1

scoreboard players set helperhead credit 1
execute if score headdd credit matches 1 positioned 313 13 1271 run function ut:lobby/credit/e/b_pos
execute if score headdd credit matches 2 positioned 316 13 1273 run function ut:lobby/credit/e/b_pos
execute if score headdd credit matches 3 positioned 316 13 1287 run function ut:lobby/credit/e/b_pos
execute if score headdd credit matches 4 positioned 313 13 1289 run function ut:lobby/credit/e/b_pos
scoreboard players set helperhead credit 0

execute if score headdd credit matches ..4 if score credit_state info matches 1 run schedule function ut:lobby/credit/e/b_loop3 4t
execute if score headdd credit matches 5.. if score credit_state info matches 1 run schedule function ut:lobby/credit/e/b_loop4 4t