#By Nebulirion

#
tag @s add dead
#
execute if entity @s[tag=dead] run function ut:move/save/death
execute if entity @s[tag=dead,tag=!void,tag=!melted,tag=!dogkilled] run function ut:move/undying/death
execute if entity @s[tag=dead,tag=amalgamate] run function ut:move/injection/target_death
#
execute if entity @s[tag=dead] at @s run function ut:player/death/main
#
tag @s remove dead
#