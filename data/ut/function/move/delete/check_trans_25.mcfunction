#Original By Nebulirion, edited by SY

#reset score count
scoreboard players set #temp store 0

#checking trans block
execute if block ~2 ~ ~2 #ut:trans run scoreboard players add #temp store 1
execute if block ~2 ~ ~1 #ut:trans run scoreboard players add #temp store 1
execute if block ~2 ~ ~ #ut:trans run scoreboard players add #temp store 1
execute if block ~2 ~ ~-1 #ut:trans run scoreboard players add #temp store 1
execute if block ~2 ~ ~-2 #ut:trans run scoreboard players add #temp store 1

execute if block ~1 ~ ~2 #ut:trans run scoreboard players add #temp store 1
execute if block ~1 ~ ~1 #ut:trans run scoreboard players add #temp store 1
execute if block ~1 ~ ~ #ut:trans run scoreboard players add #temp store 1
execute if block ~1 ~ ~-1 #ut:trans run scoreboard players add #temp store 1
execute if block ~1 ~ ~-2 #ut:trans run scoreboard players add #temp store 1

execute if block ~ ~ ~2 #ut:trans run scoreboard players add #temp store 1
execute if block ~ ~ ~1 #ut:trans run scoreboard players add #temp store 1
execute if block ~ ~ ~ #ut:trans run scoreboard players add #temp store 1
execute if block ~ ~ ~-1 #ut:trans run scoreboard players add #temp store 1
execute if block ~ ~ ~-2 #ut:trans run scoreboard players add #temp store 1

execute if block ~-1 ~ ~2 #ut:trans run scoreboard players add #temp store 1
execute if block ~-1 ~ ~1 #ut:trans run scoreboard players add #temp store 1
execute if block ~-1 ~ ~ #ut:trans run scoreboard players add #temp store 1
execute if block ~-1 ~ ~-1 #ut:trans run scoreboard players add #temp store 1
execute if block ~-1 ~ ~-2 #ut:trans run scoreboard players add #temp store 1

execute if block ~-2 ~ ~2 #ut:trans run scoreboard players add #temp store 1
execute if block ~-2 ~ ~1 #ut:trans run scoreboard players add #temp store 1
execute if block ~-2 ~ ~ #ut:trans run scoreboard players add #temp store 1
execute if block ~-2 ~ ~-1 #ut:trans run scoreboard players add #temp store 1
execute if block ~-2 ~ ~-2 #ut:trans run scoreboard players add #temp store 1