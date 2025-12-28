#by Neb and SY91419 is kinda doing stuff too i guess

scoreboard players set -locked map 0

#execute if data storage ut:maps Selected{Id:9} run scoreboard players set -locked map -1

execute if data storage ut:maps Selected{Id:9} unless entity @a[advancements={ut:other/credit/nohit=true}] run scoreboard players set -locked map 1
execute if data storage ut:maps Selected{Id:11} unless entity @a[advancements={ut:chr/undyne/lv5=true}] run scoreboard players set -locked map 1
execute if data storage ut:maps Selected{Id:13} unless entity @a[advancements={ut:chr/mettaton/lv5=true}] run scoreboard players set -locked map 1
execute if data storage ut:maps Selected{Id:7} unless entity @a[advancements={ut:chr/sans/lv5=true}] run scoreboard players set -locked map 1
execute if data storage ut:maps Selected{Id:14} unless entity @a[advancements={ut:chr/maddummy/lv5=true}] run scoreboard players set -locked map 1

scoreboard players operation -retry map = -locked map
execute if score -GameMode game matches 4.. if data storage ut:maps Selected{Type:"ffa"} run scoreboard players set -retry map 1
execute if score -GameMode game matches 7.. if data storage ut:maps Selected{Type:"team"} run scoreboard players set -retry map 1
execute if score -GameMode game matches ..3 if data storage ut:maps Selected{NoFFA:true} run scoreboard players set -retry map 1