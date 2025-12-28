#By Nebulirion

execute if entity @s[advancements={ut:other/all_dog=false}] run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.egg0"}]

execute if entity @s[advancements={ut:other/all_dog=true}] run tellraw @s ["",{"translate":"pfx.dog"},{"translate":"dok.egg1"}]

execute if entity @s[advancements={ut:other/all_dog=true}] at @s run function ut:lobby/dog/egg_yes