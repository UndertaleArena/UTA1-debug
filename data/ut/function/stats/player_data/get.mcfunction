# Origin by Nebulirion, edited by SY91419

# Get data from uuid
function ut:stats/player_data/_m/get with entity @s
# check if new player exist
execute if score -existData store matches 0 run function ut:stats/player_data/create/main

# Check if version update, extra status
function ut:stats/version_check/pre
