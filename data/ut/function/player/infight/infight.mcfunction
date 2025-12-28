#By Nebulirion

execute if entity @s[tag=can_change_chr] if score swapCharacter gamerule matches 1 if score -GameMode game matches 4..7 run function ut:system/chrswitch/inventory_clear

scoreboard players set @s last_infight 0
scoreboard players set @s hpregen 99