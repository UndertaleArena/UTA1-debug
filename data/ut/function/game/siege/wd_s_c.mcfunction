### IF Prograss are same value, compare Time
execute if score -Round1Prograss siegegame = -Round2Prograss siegegame run return run function ut:game/siege/wd_s_c_t
### IF Time are same value, compare Prograss
execute if score -Round1ResultTime siegegame = -Round2ResultTime siegegame run return run function ut:game/siege/wd_s_c_p

###
execute if score -Round1Prograss siegegame > -Round2Prograss siegegame run return run function ut:game/siege/wd_fa
execute if score -Round1Prograss siegegame < -Round2Prograss siegegame run return run function ut:game/siege/wd_fd

## ELSE
function ut:game/win