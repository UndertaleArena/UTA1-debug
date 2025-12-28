# Origin by Nebulirion, Edited by SY91419

# character data
scoreboard players set @s chr 12
tag @s add random_select
# character display
data merge entity @s {CustomName:{"translate":"chr.toby","color":"yellow","bold":true},Pose:{LeftArm:[340f,340f,0f]}}
# item replace entity @s weapon.mainhand with command_block

# universal setup
function ut:lobby/setup/chr/common