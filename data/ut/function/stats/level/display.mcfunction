#By Nebulirion

scoreboard players set -temp store 0
data modify storage hp ExpBar set value []
function ut:stats/level/display_l

data modify block 255 2 255 front_text.messages[1] set value '[{"text":"LV"},{"score":{"name":"-CharacterLevel","objective":"stat"}}," [",{"nbt":"ExpBar","storage":"hp","interpret":true},"]"]'
data modify storage hp ExpBarFin set from block 255 2 255 front_text.messages[1]