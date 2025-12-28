# Origin by Nebulirion, Edited by SY91419

# character data
scoreboard players set @s chr 14
tag @s add napstablook_select
# character display
data merge entity @s {CustomName:{"translate":"chr.napstablook","color":"yellow","bold":true},Pose:{LeftArm:[340f,340f,0f]}}
item replace entity @s weapon.mainhand with ghast_tear

# universal setup
function ut:lobby/setup/chr/common