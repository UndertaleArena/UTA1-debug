#By Nebulirion

scoreboard players add #BarTemp gamescore 1

execute if score #BarTemp gamescore > #BarCount gamescore run data modify storage bossbar Score append value "§7|"
execute unless score #BarTemp gamescore > #BarCount gamescore run data modify storage bossbar Score append value "§c|"

execute if score #BarTemp gamescore < #BarLimit gamescore run function ut:game/siege/bossbar_update_l