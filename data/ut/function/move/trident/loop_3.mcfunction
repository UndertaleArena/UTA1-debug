#By Nebulirion
#
#tp @s ^ ^ ^1.5 ~ ~
#
#tag @s add shockwave_q
#tag @s add shockwave_atker
execute if entity @s[tag=!launched] run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ .75 1
tag @s add launched
#
execute if entity @s[tag=trident_blue] run item replace entity @s armor.head with rabbit
execute if entity @s[tag=trident_orange] run item replace entity @s armor.head with cooked_rabbit
#
tag @s add atker
scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
scoreboard players operation #damage damage = @s damage
scoreboard players set #hits damage 4
#
execute positioned ~ ~.75 ~ run function ut:move/trident/loop_hitbox
tag @s remove atker
#
execute if entity @s[tag=trident_orange] positioned as @a[tag=trident_p,limit=1] anchored eyes facing ^-1.25 ^ ^5 run tp @s ^ ^-.5 ^1.5 ~ ~
execute if entity @s[tag=trident_blue] positioned as @a[tag=trident_p,limit=1] anchored eyes facing ^1.25 ^ ^5 run tp @s ^ ^-.5 ^1.5 ~ ~
#