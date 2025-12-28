#By Nebulirion

###START
data modify storage soul ActionList append value '{"text": "\\uF818\\uF814"}'

###FILLING
scoreboard players set #DisPerFlag store 0
scoreboard players set #dbFlag store 0
execute if score -IsDogCap dog_timer matches 1 run function ut:player/actionbar/dog_cap
execute unless score -IsDogCap dog_timer matches 1 run data modify storage soul ActionList append value '{"text":"\\uFD01","color":"dark_gray"}'
data modify storage soul ActionList append from storage soul DogBack

###OUTLINE
execute if score -IsDogCapTeam dog_timer matches 0 run data modify storage soul ActionList append value '{"color":"gray","text":"\\uFD11"}'
execute if score -IsDogCap dog_timer matches 1 run function ut:player/actionbar/dog_col
data modify storage soul ActionList append from storage soul DogBack

###END
data modify storage soul ActionList append value '{"text": "\\uF838\\uF834"}'

####EXTRA
execute if score #DisPerFlag store matches 1.. run function ut:player/actionbar/dog_per