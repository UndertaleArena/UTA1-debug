#By Nebulirion

#ray init
scoreboard players set -distance ray_distance 36

#start ray
function ut:move/delete/ray_loop

#ray tag remove
tag @s[tag=!delete_rc] remove ray_find