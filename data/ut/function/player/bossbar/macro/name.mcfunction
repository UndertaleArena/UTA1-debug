scoreboard players set #style bid 0
execute if score @s hpmax matches 1600 run scoreboard players set #style bid 1
execute if score @s hpmax matches 1800 run scoreboard players set #style bid 2
execute if score @s hpmax matches 2000 run scoreboard players set #style bid 3
execute if score @s hpmax matches 2200 run scoreboard players set #style bid 4
execute if score @s hpmax matches 2400 run scoreboard players set #style bid 5

$execute if entity @s[scores={bid=$(Current)}] if score #style bid matches 0 run bossbar set minecraft:p$(Current)_hp name [{"text":"HP §e[$(HP)/$(HPMAX)]§r"}]

$execute if entity @s[scores={bid=$(Current)}] unless score #style bid matches 0 run bossbar set minecraft:p$(Current)_hp name [{"text":"HP"}]