#

scoreboard players remove -starttime border 1

#scoreboard players set #lastfight last_infight 999999
#scoreboard players operation #lastfight last_infight < @a[tag=playing] last_infight
#
#execute if score #lastfight last_infight matches 200.. run scoreboard players remove -starttime border 1
#execute if score #lastfight last_infight matches 400.. run scoreboard players remove -starttime border 1
#execute if score #lastfight last_infight matches 600.. run scoreboard players remove -starttime border 1
#execute if score #lastfight last_infight matches 1200.. run scoreboard players remove -starttime border 2

execute if score -starttime border matches ..0 run function ut:game/border/start_shrink