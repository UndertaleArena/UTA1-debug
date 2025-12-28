# Origin by Nebulirion, Edited by SY91419

# character data
scoreboard players set @s chr 6
tag @s add mettaton_select
# character display
data merge entity @s {CustomName:{"translate":"chr.mettaton","color":"yellow","bold":true},Pose:{LeftArm:[340f,340f,0f]}}
item replace entity @s weapon.mainhand with flint

# universal setup
function ut:lobby/setup/chr/common