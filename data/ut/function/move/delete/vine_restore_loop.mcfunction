#Original By Nebulirion, edited by SY

# bonus: s_void restoring
fill ~-3 ~ ~-3 ~3 ~ ~3 structure_void replace barrel{Items:[{Slot:0b,id:"minecraft:sponge",count:1,components:{"minecraft:custom_data":{s_void:1b}}}],Lock:"s_void"} 

#checking vines
function ut:move/delete/vine_restore_check

#score change
scoreboard players add @s ray_distance 1

#loop check
execute if score @s ray_distance < -distance ray_distance positioned ~ ~-1 ~ run function ut:move/delete/vine_restore_loop