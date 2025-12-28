#hi

scoreboard players set head credit 0
execute if score headd credit matches 36.. as @e[tag=credit_play] at @s run tp @s ~ ~ ~ 90 0
execute if score headd credit matches 36.. run scoreboard players set headd credit 0

execute as @e[tag=credit_play] at @s positioned ^ ^.5 ^9.2 unless block ~ ~ ~ structure_void run function ut:lobby/credit/e/b_pos
execute as @e[tag=credit_play] at @s run tp @s ~ ~ ~ ~5 0

scoreboard players add inf credit 1

execute if score headd credit matches ..31 if score head credit matches 1 if score credit_state info matches 1 run schedule function ut:lobby/credit/e/b_loop2 2t
execute if score headd credit matches ..31 unless score head credit matches 1 unless score inf credit matches 400.. run function ut:lobby/credit/e/b_loop2
execute if score headd credit matches 32 if score credit_state info matches 1 run schedule function ut:lobby/credit/e/b_loop3 2t