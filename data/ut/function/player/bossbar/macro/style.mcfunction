$execute if score #style bid matches 0 if score @s bid matches $(Current) run bossbar set p$(Current)_hp color purple
$execute if score #style bid matches 1.. if score @s bid matches $(Current) run bossbar set p$(Current)_hp color yellow
$execute if score #style bid matches ..1 if score @s bid matches $(Current) run bossbar set p$(Current)_hp style progress
$execute if score #style bid matches 2 if score @s bid matches $(Current) run bossbar set p$(Current)_hp style notched_6
$execute if score #style bid matches 3 if score @s bid matches $(Current) run bossbar set p$(Current)_hp style notched_10
$execute if score #style bid matches 4 if score @s bid matches $(Current) run bossbar set p$(Current)_hp style notched_12
$execute if score #style bid matches 5 if score @s bid matches $(Current) run bossbar set p$(Current)_hp style notched_20