#By Nebulirion

tellraw @a ["",{"translate":"pfx.game"},{"translate":"cht.gm11","with":[{"selector":"@s"}]}]

scoreboard players add @s gamescore 1

execute if score @s gamescore >= -Goal gamescore run function ut:game/win

execute unless score @s gamescore >= -Goal gamescore run function ut:game/team/reset_round_pre

function ut:game/team/bossbar_update
