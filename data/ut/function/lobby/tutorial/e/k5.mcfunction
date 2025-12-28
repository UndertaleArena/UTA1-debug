#By Nebulirion

execute as @a[tag=tut_p100] if score @s[advancements={ut:other/tut/root=true}] dummy_counter_t matches 13.. run advancement grant @s only ut:other/tut/tuto100
execute as @a[tag=tut_p] run advancement grant @s only ut:other/tut/root

tellraw @a[tag=tut_p] ["",{"translate":"pfx.flowey"},{"translate":"tut.k5"}]

execute as @a[tag=tut_p] unless score @s tut_sr matches 3.. run scoreboard players set @s tut_sr 3

function ut:lobby/tutorial/e/soundt
execute if score tut_state info matches 1 run schedule function ut:lobby/tutorial/e/z9 2s