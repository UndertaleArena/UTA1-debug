#By Nebulirion


execute if entity @s[tag=trident_blue] as @a[tag=playing,tag=!untargetable,distance=..3.5,predicate=!ut:effects/blue] unless score @s tid = #atker tid run function ut:move/trident/hitcheck
execute if entity @s[tag=trident_orange] as @a[tag=playing,tag=!untargetable,distance=..3.5,predicate=ut:effects/blue] unless score @s tid = #atker tid run function ut:move/trident/hitcheck
#
execute positioned ~-1 ~-.75 ~-1 as @e[tag=move,tag=cutable] unless score @s tid = #atker tid run function ut:move/trident/loop_hitbox_offsetcheck
#
execute if entity @s[tag=trident_blue] run particle dust{color:[0.0,0.9,0.9],scale:1.2} ^ ^ ^-1 .3 0 .3 0 2 normal @a[scores={Q=3..}] 
execute if entity @s[tag=trident_orange] run particle dust{color:[1.0,0.6,0.0],scale:1.2} ^ ^ ^-1 .3 0 .3 0 2 normal @a[scores={Q=3..}] 
##

scoreboard players remove #hits damage 5
execute if block ^.3 ^ ^.3 #ut:trans if block ^-.3 ^ ^.6 #ut:trans if block ^.3 ^ ^0.9 #ut:trans if block ^-.3 ^ ^1.2 #ut:trans run scoreboard players add #hits damage 4
execute if score #hits damage matches 0.. positioned ^ ^ ^1.2 run function ut:move/trident/loop_hitbox