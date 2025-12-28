#By Nebulirion

tag @s[tag=swing] add noswing
tag @s[tag=!swing] add swing
tag @s[tag=noswing] remove swing
scoreboard players set @s[tag=noswing] lifetime 3
scoreboard players set @s[tag=noswing] life 0

#tag @s[tag=trident_orange] add trident_orange_o
#tag @s[tag=trident_blue] add trident_blue_o
#tag @s[tag=trident_orange_o] remove trident_orange
#tag @s[tag=trident_orange_o] add trident_blue
#tag @s[tag=trident_blue_o] remove trident_blue
#tag @s[tag=trident_blue_o] add trident_orange
#tag @s remove trident_orange_o
#tag @s remove trident_blue_o