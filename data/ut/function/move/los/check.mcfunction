#By Nebulirion

scoreboard players set #insight store 2

execute facing entity @a[tag=los_check,limit=1] eyes run function ut:move/los/loop

tag @a remove los_check