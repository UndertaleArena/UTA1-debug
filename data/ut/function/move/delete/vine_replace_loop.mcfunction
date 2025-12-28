#Original By Nebulirion, edited by SY

#bonus: clear dog residue
# fill ~-2 ~ ~-2 ~2 ~ ~2 air replace infested_chiseled_stone_bricks

# bonus: structure a-voiding
fill ~-3 ~ ~-3 ~3 ~ ~3 barrel{Items:[{Slot:0b,id:"minecraft:sponge",count:1,components:{"minecraft:custom_data":{s_void:1b}}}],Lock:"s_void"} replace structure_void

#checking vines
function ut:move/delete/vine_replace_check

#score change
scoreboard players add @s ray_distance 1

#loop check
execute if score @s ray_distance < t y_pos positioned ~ ~1 ~ run function ut:move/delete/vine_replace_loop