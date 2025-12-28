#By Nebulirion

scoreboard players add -temp store 1
execute if score -temp store > exp store run data modify storage hp ExpBar append value "§8|"
execute unless score -temp store > exp store run data modify storage hp ExpBar append value "§f|"
execute if score -temp store matches 1..19 run function ut:stats/level/display_l

data modify block 255 2 255 front_text.messages[1] set value '[{"text":"LV"},{"score":{"name":"-CharacterLevel","objective":"stat"}}," [",{"nbt":"ExpBar","storage":"hp","interpret":true},"]"]'