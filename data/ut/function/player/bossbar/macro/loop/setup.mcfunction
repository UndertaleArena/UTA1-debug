$bossbar add p$(Current)_hp "HP"
$bossbar set p$(Current)_hp color yellow
$bossbar set p$(Current)_hp style notched_20
$bossbar set p$(Current)_hp players

$bossbar add p$(Current)_dt "DETERMINATION"
$bossbar set p$(Current)_dt color red
$bossbar set p$(Current)_dt style progress
$bossbar set p$(Current)_dt players

scoreboard players remove #play_bossbar store 1
execute store result storage ut:macro Bossbar.Current int 1 run scoreboard players get #play_bossbar store
execute if score #play_bossbar store matches 1.. run function ut:player/bossbar/macro/loop/setup with storage ut:macro Bossbar
