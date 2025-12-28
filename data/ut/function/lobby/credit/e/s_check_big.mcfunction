#hi

particle cloud ~ ~0.5 ~ 0.3 0.1 0.3 0.1 25 force

kill @s[team=!touched]

execute if entity @s[team=touched] run function ut:lobby/credit/e/s_check_big_touched
#tag @s add launched