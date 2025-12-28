#By Nebulirion

execute as @e[tag=trident,tag=!noswing] if score @s sid = #this pid at @s run function ut:move/trident/change_t

#tag @s[tag=trident_orange] add trident_orange_o
#tag @s[tag=trident_blue] add trident_blue_o
#tag @s[tag=trident_orange_o] remove trident_orange
#tag @s[tag=trident_orange_o] add trident_blue
#tag @s[tag=trident_blue_o] remove trident_blue
#tag @s[tag=trident_blue_o] add trident_orange
#tag @s remove trident_orange_o
#tag @s remove trident_blue_o