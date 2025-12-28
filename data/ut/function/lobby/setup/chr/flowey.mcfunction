# Origin by Nebulirion, Edited by SY91419

# character data
scoreboard players set @s chr 5
tag @s add flowey_select
# character display
data merge entity @s {CustomName:{"translate":"chr.flowey","color":"yellow","bold":true},Pose:{LeftArm:[340f,340f,0f]}}
item replace entity @s weapon.offhand with pumpkin_seeds

# universal setup
function ut:lobby/setup/chr/common