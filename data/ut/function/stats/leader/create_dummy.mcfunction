#By Nebulirion
#########

#say data getting
summon marker ~ ~ ~ {Tags:[summon,lb_player,lb_target]}
data modify entity @e[type=marker,tag=summon,limit=1] CustomName set from storage utstats:main LoadedPlayer.Name

#tellraw @a {"color":"yellow","translate":"multiplayer.player.joined","with":[{"selector":"@e[type=marker,tag=summon,limit=1]"}]}

tag @e[type=marker,tag=summon,limit=1] remove summon