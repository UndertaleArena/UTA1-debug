execute if score -Round1Prograss siegegame > -Round2Prograss siegegame run return run function ut:game/siege/wd_fa
execute if score -Round1Prograss siegegame = -Round2Prograss siegegame run return run function ut:game/win
execute if score -Round1Prograss siegegame < -Round2Prograss siegegame run return run function ut:game/siege/wd_fd