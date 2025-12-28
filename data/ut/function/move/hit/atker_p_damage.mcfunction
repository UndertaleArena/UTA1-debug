#By Nebulirion

#
function ut:player/infight/damage
execute if score -Enabled stat matches 1 run scoreboard players operation @s ptsd_wdmg += #wdmg ptsd_wdmg
scoreboard players reset #wdmg ptsd_wdmg

#execute if score -Enabled stat matches 1 if score #true_damage damage < #damage damage run scoreboard players operation @s ptsd_dmg += #damage damage
execute if score -Enabled stat matches 1 run scoreboard players operation @s ptsd_dmg += #true_damage damage
execute if score -Enabled stat matches 1 run scoreboard players operation @s ptsd_dmg += #other_damge damage
execute if score -Enabled stat matches 1 run scoreboard players operation @s st_cdmg += #damage damage
#