#By Nebulirion

execute if score -Enabled stat matches 1 run scoreboard players add @s st_cdtuse 1
scoreboard players set #reset dt 1
scoreboard players set @s unloadtime 10
function ut:player/infight/use

scoreboard players operation #atker pid = @s pid
scoreboard players operation #atker tid = @s tid
function ut:move/injection/use_suc_buff