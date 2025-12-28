#By Nebulirion

execute at @e[tag=ray_flowey] store result score dummy_count tutorial if entity @e[tag=dummy,distance=..24]

execute if score dummy_count tutorial matches ..0 run tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.g6.1"}]
execute if score dummy_count tutorial matches 1..3 run tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.g6.2"}]
execute if score dummy_count tutorial matches 4 run tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.g6.3"}]

function ut:lobby/dummy/ripall

function ut:lobby/tutorial/e/sound
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/g7 3s