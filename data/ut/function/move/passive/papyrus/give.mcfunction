#By Nebulirion & Ds_Squid

#scoreboard players set #gain will 2
#function ut:player/will/gain
#scoreboard players reset #gain will

scoreboard players operation @s dthalf = @s dtmax
scoreboard players operation @s dtmax *= 2 const
