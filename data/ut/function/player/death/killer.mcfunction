#By Nebulirion
#triggers when a player is about to get removed from the battle.
#spare/melt/die

##############
#KILLER
execute if entity @s[tag=playing,tag=!respawning] if score killBonus gamerule matches 1.. run function ut:player/kill_bonus
execute if entity @s[tag=killer_p,tag=playing,tag=!respawning] run function ut:move/passive/killer
execute if entity @s[tag=killer_p] run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 2 0.8
#GAMEMODE
execute if score -GameMode game matches 3 run function ut:game/kill/addscore
##############