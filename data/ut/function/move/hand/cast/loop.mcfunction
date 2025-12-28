#Original by Nebulirion, SY edited

#cast hand
function ut:move/hand/cast/main

#check loop
execute if score #temp store < -count passive_timer run function ut:move/hand/cast/loop