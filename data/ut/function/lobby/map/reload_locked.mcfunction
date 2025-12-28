#by Neb and SY91419 is kinda doing stuff too i guess

#
scoreboard players set -use map 0
#
data modify entity @e[tag=lobby_text_mapn,limit=1] CustomName set value '{"translate":"las.map.locked"}'
data modify entity @e[tag=lobby_text_mapc,limit=1] CustomName set value '{"translate":"las.map.counts","with":[{"translate":"las.map.what"}]}'
data modify entity @e[tag=lobby_text_mapm,limit=1] CustomName set value '{"translate":"las.map.what"}'
#