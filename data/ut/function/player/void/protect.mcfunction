#By Nebulirion

#Calculate Pushinment
scoreboard players operation #voidpunish hp = @s hpmax
scoreboard players operation #voidpunish hp /= 4 const

#Check if have enough hp to not die
execute if score @s hp > #voidpunish hp at @s run function ut:player/void/protect_success
