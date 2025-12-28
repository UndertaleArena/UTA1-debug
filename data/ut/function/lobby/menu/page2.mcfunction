#By Nebulirion

function ut:lobby/menu/page
scoreboard players set -page menu 2

execute unless score -GameMode game matches 4.. run function ut:lobby/menu/page2.1
execute if score -GameMode game matches 4.. run function ut:lobby/menu/page2.2

function ut:lobby/menu/team_update