#By Nebulirion

execute if score dummy_count tutorial matches ..0 run tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.f3.1"}]
execute if score dummy_count tutorial matches 1..3 run tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.f3.2"}]
execute if score dummy_count tutorial matches 4.. run tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.f3.3"}]

function ut:lobby/tutorial/e/sound
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/g1 3s