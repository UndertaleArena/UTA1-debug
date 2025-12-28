#By Nebulirion

#say B reach!

execute unless block ~ ~ ~ #ut:dog_trans at @s run function ut:move/dog/ai/t1/v1/end

execute if block ~ ~1 ~ #ut:dog_trans run tp @s ~ ~.1 ~ ~180 0
#e#xecute if block ~ ~1 ~ #ut:dog_trans run say B reach: WALK!
execute if block ~ ~1 ~ #ut:dog_trans run function ut:move/dog/ai/t1/v0/start
