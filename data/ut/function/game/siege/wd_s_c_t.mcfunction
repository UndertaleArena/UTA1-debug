execute if score -Round1ResultTime siegegame > -Round2ResultTime siegegame run return run function ut:game/siege/wd_fd
execute if score -Round1ResultTime siegegame = -Round2ResultTime siegegame run return run function ut:game/win
execute if score -Round1ResultTime siegegame < -Round2ResultTime siegegame run return run function ut:game/siege/wd_fa