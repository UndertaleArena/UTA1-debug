# Origin by Nebulirion, Edited by SY91419

# character data
scoreboard players set @s chr 10
tag @s add asgore_select
# character display
data merge entity @s {CustomName:{"translate":"chr.asgore","color":"yellow","bold":true},Pose:{LeftArm:[340f,340f,0f]}}
item replace entity @s weapon.mainhand with cooked_mutton

# universal setup
function ut:lobby/setup/chr/common