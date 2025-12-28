#By Nebulirion

execute if score -Goal gamescore matches ..12 run function ut:game/soul/bossbar_update_heart
execute unless score -Goal gamescore matches ..12 run function ut:game/soul/bossbar_update_num