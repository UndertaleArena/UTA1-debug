# origin by Nebulirion, edited by ANTHINY609 & rearrange by SY91419

# scoring time check
scoreboard players add @s life2 1
# Some Random Facing Try
#execute store result storage ut:macro mtt_tid int 1 run scoreboard players get @s tid
#tag @a[distance=..36,tag=playing,tag=!untargetable] add mtb_target_1
#execute if entity @a[tag=mtb_target_1] run function ut:move/mettabot/facing

# shoot and reset
execute if score @s life2 matches 41.. run function ut:move/mettabot/loop_shoot_trig