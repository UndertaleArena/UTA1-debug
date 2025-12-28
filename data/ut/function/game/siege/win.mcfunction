#By Nebulirion
#function ut:game/siege/bossbar_update_p
execute store result score pc store if entity @a[tag=winner]
function ut:game/team/win_message