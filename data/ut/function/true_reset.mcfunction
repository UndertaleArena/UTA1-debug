#run at own risk
#run when lobby loaded only

tp @s 246 153 1280
scoreboard players reset *

#RESETING
function ut:stats/reset
function ut:init/teams_empty
function ut:init/all

#SETUP LOBBY
setblock 246 153 1280 redstone_torch
execute positioned 246 153 1280 run function ut:_run/setup_lobby
setblock 246 153 1280 air
#SETUP STAFF
function ut:lobby/staff/reset
#DEFAULT VALUES
scoreboard players reset fun info
scoreboard players set #price st_gold 7
scoreboard players set allow_join info 1
scoreboard players set allow_tut info 1
scoreboard players set allow_cre info 1
scoreboard players set allow_roomF info 1
scoreboard players set allow_roomD info 1
scoreboard players set allow_roomM info 1
scoreboard players set allow_roomP info 1
scoreboard players set admin_mode info 0
scoreboard players set hq_parkour info 1
scoreboard players set TeamLimit info 8
scoreboard players set TeamCount info 8
scoreboard players set PlayerLimit info 8
scoreboard players set -use map 1
scoreboard players set -GameMode game 1
data modify storage soul RNGgenerator.Numbers set value [1,2,3,5,8,13,25,49,51,52,65,71,84,85,89,97,106,111,124,128,137,145,153,155,166,167,194,198,203,205,222,228,254,263,272,285,317,322,323,354,355,367,374,378,383,391,392,404,408,415,425,428,475,492,515,519,532,534,536,583,598,636,657,659,670,673,677,679,700,705,719,720,757,765,788,799,814,827,835,844,869,890,940,995,1014,1028,1123,1127,1147,1209,1257,1369,1403,1418,1460,1497,1536,1590,1642,1694,1738,1741,1751,1872,2149,2252,2314,2365,2391,2866,3178,3191,3204,3418,3536,3560,3568,3590,3730,3747,3760,3824,3829,3928,4003,4058,4071]
data modify storage soul RNGgenerator.Letters set value ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
#RELOAD LOBBY
function ut:lobby/reload
#RESET ROOTS
function ut:lobby/root/reset

time set 12200