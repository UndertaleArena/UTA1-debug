# by SY91419
# Called by ut:move/delete/vine_replace_loop
# Used to replace block with illegal block state

# Hotland jumppad
fill ~-3 ~ ~-3 ~3 ~ ~3 dark_oak_pressure_plate replace dark_oak_pressure_plate[powered=true]

# Undyne Piano
fill ~-3 ~ ~-3 ~3 ~ ~3 polished_blackstone_pressure_plate replace polished_blackstone_pressure_plate[powered=true]

# Forest Bell
execute if score -use map matches 15 run function ut:move/delete/replace/call_bell

# Dripleaf Platform
execute if score -use map matches 17 run function ut:move/delete/replace/dripleaf