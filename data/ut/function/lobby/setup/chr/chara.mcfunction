# Origin by Nebulirion, Edited by SY91419

# character data
scoreboard players set @s chr 8
tag @s add chara_select
# character display
data merge entity @s {CustomName:{"translate":"chr.chara","color":"yellow","bold":true},Pose:{LeftArm:[340f,340f,0f]}}
item replace entity @s weapon.mainhand with iron_ingot

# universal setup
function ut:lobby/setup/chr/common