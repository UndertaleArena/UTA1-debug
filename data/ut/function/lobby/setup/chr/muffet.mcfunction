# Origin by Nebulirion, Edited by SY91419

# character data
scoreboard players set @s chr 7
tag @s add muffet_select
# character display
data merge entity @s {CustomName:{"translate":"chr.muffet","color":"yellow","bold":true},Pose:{LeftArm:[340f,340f,0f]}}
item replace entity @s weapon.mainhand with spider_eye

# universal setup
function ut:lobby/setup/chr/common