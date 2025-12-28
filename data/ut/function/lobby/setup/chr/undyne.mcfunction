# Origin by Nebulirion, Edited by SY91419

# character data
scoreboard players set @s chr 3
tag @s add undyne_select
# character display
data merge entity @s {CustomName:{"translate":"chr.undyne","color":"yellow","bold":true},Pose:{LeftArm:[340f,340f,0f]}}
item replace entity @s weapon.offhand with light_blue_dye

# universal setup
function ut:lobby/setup/chr/common