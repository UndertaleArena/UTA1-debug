#by Neb and SY91419 is kinda doing stuff too i guess

scoreboard players operation -unlocked map = -count map

execute if score -GameMode game matches ..3 unless entity @a[advancements={ut:other/credit_nohit=true}] run scoreboard players remove -unlocked map 1
execute if score -GameMode game matches ..3 unless entity @a[advancements={ut:chr/undyne/lv5=true}] run scoreboard players remove -unlocked map 1
execute if score -GameMode game matches ..3 unless entity @a[advancements={ut:chr/mettaton/lv5=true}] run scoreboard players remove -unlocked map 1
execute if score -GameMode game matches ..6 unless entity @a[advancements={ut:chr/sans/lv5=true}] run scoreboard players remove -unlocked map 1
execute if score -GameMode game matches ..6 unless entity @a[advancements={ut:chr/maddummy/lv5=true}] run scoreboard players remove -unlocked map 1

execute if score -GameMode game matches 4.. run scoreboard players remove -unlocked map 12
execute if score -GameMode game matches 7.. run scoreboard players remove -unlocked map 6