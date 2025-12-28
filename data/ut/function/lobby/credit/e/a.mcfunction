#hi

function ut:lobby/credit/check
#tellraw @a[tag=credit_p] ["",{"translate":"pfx.info"},{"translate":"cre.wip"}]

#effect give @a[tag=credit_p] minecraft:levitation infinite 255 true
execute as @a[tag=credit_p] at @s run tp @s ~ 10 ~
#execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1

#work_not_done
#playsound of switching

execute if score credit_state info matches 1 run schedule function ut:lobby/credit/e/b 3s

schedule function ut:lobby/credit/end 20s