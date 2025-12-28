# Origin by Nebulirion, Edited by SY91419

# character data
scoreboard players set @s chr 4
tag @s add frisk_select
# character display
data merge entity @s {CustomName:{"translate":"chr.frisk","color":"yellow","bold":true},Pose:{LeftArm:[340f,340f,0f]}}
item replace entity @s weapon.mainhand with stick

# universal setup
function ut:lobby/setup/chr/common