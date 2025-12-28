#By Nebulirion

#
scoreboard players operation #true_damage damage = @s damage_resisted
scoreboard players operation #true_damage damage *= #amplifier damage_resisted
#
function ut:player/hp/damage
#