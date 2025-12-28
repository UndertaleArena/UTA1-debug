#hi

scoreboard players set head credit 0
execute as @e[tag=credit_play] at @s positioned ^ ^1.5 ^10 unless block ~ ~ ~ structure_void run function ut:lobby/credit/e/b_pos
execute as @e[tag=credit_play] at @s run tp @s ~ ~ ~ ~6 0

scoreboard players add inf credit 1

execute if score headd credit matches ..35 if score head credit matches 1 if score credit_state info matches 1 run schedule function ut:lobby/credit/e/b_loop 2t
execute if score headd credit matches ..35 unless score head credit matches 1 unless score inf credit matches 200.. run function ut:lobby/credit/e/b_loop
execute if score headd credit matches 36 run execute if score headd credit matches 36 if score credit_state info matches 1 run schedule function ut:lobby/credit/e/b_loop2 2t