#By Nebulirion


function ut:move/gravity
function ut:move/motion
execute facing entity @s feet run tp @s ^ ^ ^1 ~ ~
#
execute positioned ~ ~.75 ~ run function ut:move/vine/loop_inair_positioned
