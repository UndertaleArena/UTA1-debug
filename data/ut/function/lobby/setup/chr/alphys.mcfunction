# Origin by Nebulirion, Edited by SY91419

# character data
scoreboard players set @s chr 13
tag @s add alphys_select
# character display
data merge entity @s {CustomName:{"translate":"chr.alphys","color":"yellow","bold":true},Pose:{LeftArm:[340f,340f,0f]}}
item replace entity @s weapon.offhand with netherite_scrap

# universal setup
function ut:lobby/setup/chr/common