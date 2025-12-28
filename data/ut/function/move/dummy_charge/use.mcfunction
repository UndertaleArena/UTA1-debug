#By Nebulirion

execute if entity @s[tag=!dummy_charge_user] run function ut:move/dummy_charge/use_prep
execute if entity @s[tag=dummy_charge_user] unless score @s unloadtime matches 1.. run function ut:move/dummy_charge/use_shoot