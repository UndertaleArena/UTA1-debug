#By Nebulirion

execute unless score @s credit matches 2.. run scoreboard players set @s credit 2
execute if score @s credit_hit matches 0 run scoreboard players add @s credit 1
execute if score @s credit_hit matches 0 if score @s credit matches 3 run advancement grant @s only ut:other/credit/nohit
tellraw @s ["",{"translate":"pfx.credit"},{"translate":"cre.fin0"}]