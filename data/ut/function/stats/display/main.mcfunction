#By Nebulirion

scoreboard players set @a[tag=ray_user,limit=1] unloadtime 20

scoreboard players set -replacedata store 0
function ut:stats/get_player_data
data modify storage utstats:main LoadedStats set from storage utstats:main LoadedPlayer.Player
function ut:stats/get_stats

function ut:stats/display/calculate

tellraw @s [{"text":" "}]
tellraw @s [{"translate":"cht.lineshort","color":"gold"}]
tellraw @s [{"translate":"scb.gamesplayed"},{"score":{"name":"-GamesPlayed","objective":"stat"}}]
tellraw @s [{"translate":"scb.gameswon"},{"score":{"name":"-GamesWon","objective":"stat"}}]

scoreboard players operation in damage = -WinRate stat
function ut:stats/display/n_to_p
tellraw @s [{"translate":"scb.winrate"},{"score":{"name":"out1","objective":"damage"}},{"text":"."},{"score":{"name":"out3","objective":"damage"}},{"score":{"name":"out2","objective":"damage"}},{"text":"%"}]

scoreboard players operation in damage = -SkillLevel stat
function ut:stats/display/n_to_p
execute if score -GameTimeSmall stat matches 11.. if score out1 damage matches ..99 run tellraw @s [{"translate":"scb.winratea"},{"text":"","extra":[{"score":{"name":"out1","objective":"damage"}},{"text":"."},{"score":{"name":"out3","objective":"damage"}},{"score":{"name":"out2","objective":"damage"}},{"text":"%"}]}]
execute if score -GameTimeSmall stat matches 11.. if score out1 damage matches 100.. run tellraw @s [{"translate":"scb.winratea"},{"text":"","color":"yellow","extra":[{"score":{"name":"out1","objective":"damage"}},{"text":"."},{"score":{"name":"out3","objective":"damage"}},{"score":{"name":"out2","objective":"damage"}},{"text":"%"}]}]

tellraw @s [{"text":" "}]
tellraw @s [{"translate":"scb.killc"},{"score":{"name":"-KillCount","objective":"stat"}}]
tellraw @s [{"translate":"scb.sparec"},{"score":{"name":"-SpareCount","objective":"stat"}}]
tellraw @s [{"translate":"scb.deathc"},{"score":{"name":"-DeathCount","objective":"stat"}}]

scoreboard players operation in damage = -KDR stat
function ut:stats/display/n_to_s
tellraw @s [{"translate":"scb.kdr"},{"score":{"name":"out1","objective":"damage"}},{"text":"."},{"score":{"name":"out3","objective":"damage"}},{"score":{"name":"out2","objective":"damage"}}]

scoreboard players operation in damage = -DamageDealt stat
scoreboard players operation in damage *= 100 const
function ut:stats/display/n_to_s
tellraw @s [{"translate":"scb.dmg"},{"score":{"name":"out1","objective":"damage"}},{"text":"."},{"score":{"name":"out3","objective":"damage"}},{"score":{"name":"out2","objective":"damage"}}]

#scoreboard players operation in damage = @s st_averagelove
#function ut:stats/n_to_s
#tellraw @s [{"translate":"scb.averagelove"},{"score":{"name":"out1","objective":"damage"}},{"text":"."},{"score":{"name":"out3","objective":"damage"}},{"score":{"name":"out2","objective":"damage"}}]

###Fav Chr
scoreboard players operation -chr chr = @s st_favchr
execute unless score -chr chr matches 0 run function ut:init/storage_chr_load
execute unless score -chr chr matches 0 run tellraw @s [{"translate":"scb.favchr"},{"color":"yellow","nbt":"Temp.HeadItem.components.\"minecraft:custom_name\"","storage": "ut:chrs","interpret": true,"bold":false}]
###

tellraw @s [{"translate":"cht.lineshort","color":"gold"}]