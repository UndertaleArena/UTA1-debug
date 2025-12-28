#By Nebulirion

scoreboard players reset @a advancement
scoreboard players reset @s advancement_c
scoreboard players add @e[tag=atker] st_ckillc 1
#
execute if entity @e[tag=atker,tag=flying_knife] as @a[tag=killer_p,scores={chr=15}] run scoreboard players set @s advancement 15
execute as @a[tag=spare_p,scores={chr=10}] run scoreboard players set @s advancement 10
#
execute as @a[tag=spare_p,tag=pinky] run advancement grant @s only ut:other/mini/frog
#
execute as @a[tag=spare_p,scores={chr=4,advancement_c=5..}] run function ut:stats/advancement_secret
#
execute if entity @s[tag=void] if score @s chr matches 2 if score -use map matches 11 run function ut:stats/advancement_secret
#
execute if entity @s[tag=effect_sadness_max] as @a[tag=spare_p,scores={chr=14}] run scoreboard players add @s advancement_c 1
execute if entity @s[tag=effect_sadness_max] as @a[tag=spare_p,scores={chr=14,advancement_c=2..}] run function ut:stats/advancement_secret
#
execute if entity @s[scores={chr=12}] as @a[tag=killer_p,scores={chr=12}] run function ut:stats/advancement_secret
#
execute if entity @e[tag=atker,tag=blaster] as @a[tag=killer_p,scores={chr=11}] run scoreboard players add @s advancement_c 1
execute if entity @e[tag=atker,tag=blaster] as @a[tag=killer_p,scores={chr=11,advancement_c=3..}] run function ut:stats/advancement_secret
#
execute if entity @e[tag=atker,tag=gb_skull,scores={st_ckillc=2..}] as @a[tag=killer_p,scores={chr=1}] run function ut:stats/advancement_secret
#
execute if entity @e[tag=atker] as @a[tag=killer_p,scores={chr=5},distance=48..] run function ut:stats/advancement_secret
#
scoreboard players reset @s advancement_c