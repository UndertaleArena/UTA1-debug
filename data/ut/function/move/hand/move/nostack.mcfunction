#Original By Nebulirion, SY edited

#get other hand
tag @s remove hand
scoreboard players operation #user pid = @s pid
execute as @e[tag=move,tag=hand] if score @s pid = #user pid run tag @s add hand_other

#stack adjust
execute at @s if entity @e[tag=hand_other,distance=..1] facing entity @e[tag=hand_other,distance=..1] feet run tp @s ^ ^ ^-.2

#tag reset
tag @e[tag=hand_other] remove hand_other
tag @s add hand