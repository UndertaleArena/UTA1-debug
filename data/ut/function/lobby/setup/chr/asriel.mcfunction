# Origin by Nebulirion, Edited by SY91419

# character data
scoreboard players set @s chr 11
tag @s add asriel_select
# character display
data merge entity @s {CustomName:{"translate":"chr.asriel","color":"yellow","bold":true},Pose:{LeftArm:[340f,340f,0f]}}
item replace entity @s weapon.offhand with carrot_on_a_stick[custom_model_data={floats:[249.0]}]

# universal setup
function ut:lobby/setup/chr/common