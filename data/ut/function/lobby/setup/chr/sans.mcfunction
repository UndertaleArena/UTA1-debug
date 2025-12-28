# Origin by Nebulirion, Edited by SY91419

# character data
scoreboard players set @s chr 1
tag @s add sans_select
# character display
data merge entity @s {CustomName:{"translate":"chr.sans","color":"yellow","bold":true},Pose:{LeftArm:[340f,340f,0f]}}
item replace entity @s weapon.offhand with bone_meal

# universal setup
function ut:lobby/setup/chr/common