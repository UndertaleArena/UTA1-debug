###Generated from Nebulagen made By Nebulirion
#02/26/2021, 12:43:48

scoreboard players remove #adjustLim store 1
execute if block ~ ~.93 ~ #ut:trans positioned ^ ^ ^-.2 run tp @s ^ ^ ^
execute unless block ~ ~.93 ~ #ut:trans positioned ^ ^ ^-.2 if score #adjustLim store matches 1.. run function ut:move/spear/inblock_adjust