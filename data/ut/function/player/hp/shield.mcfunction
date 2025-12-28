# origin by FocalSalt & ANTHINY609, edited by SY91419, and edited by Ds_Squid

# check for shield available resist
## Store Total Damage
scoreboard players operation #shield_damage damage = #true_damage damage
## Remove and check if break the defend
scoreboard players operation #true_damage damage -= @s shield
execute if score #true_damage damage matches ..-1 run scoreboard players set #true_damage damage 0
## else remove the damage resist from shield
execute if score #shield_damage damage >= @s shield run scoreboard players operation #shield_damage damage = @s shield

scoreboard players operation @s shield -= #shield_damage damage

# If Shield Break
## Passive Muffet Trigger Spiders
execute if score @s shield matches ..0 run function ut:player/hp/shield_break