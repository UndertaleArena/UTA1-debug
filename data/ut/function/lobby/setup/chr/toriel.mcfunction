# Origin by Nebulirion, Edited by SY91419

# character data
scoreboard players set @s chr 9
tag @s add toriel_select
# character display
data merge entity @s {CustomName:{"translate":"chr.toriel","color":"yellow","bold":true},Pose:{LeftArm:[340f,340f,0f]}}
item replace entity @s weapon.mainhand with pumpkin_pie

# universal setup
function ut:lobby/setup/chr/common