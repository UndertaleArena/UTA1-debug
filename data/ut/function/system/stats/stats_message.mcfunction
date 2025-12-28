# By Ds_Squid and ANTHINY609

#
#tellraw @s [{"translate":"cht.line","color":"gold"}]

#remove tag
tag @s remove stats_sort

#計算
scoreboard players reset #0 ptsd_dmg
scoreboard players reset #0 ptsd_dmged

scoreboard players operation #ptsd_dmg ptsd_dmg = @s ptsd_dmg
scoreboard players operation #ptsd_dmg_a ptsd_dmg = @s ptsd_dmg
scoreboard players operation #ptsd_dmged ptsd_dmged = @s ptsd_dmged
scoreboard players operation #ptsd_dmged_a ptsd_dmged = @s ptsd_dmged
scoreboard players operation #ptsd_wdmg ptsd_wdmg = @s ptsd_wdmg

scoreboard players operation #ptsd_dmg ptsd_dmg /= 100 const
scoreboard players operation #ptsd_dmged ptsd_dmged /= 100 const

scoreboard players operation #ptsd_dmg_a ptsd_dmg %= 100 const
scoreboard players operation #ptsd_dmged_a ptsd_dmged %= 100 const

#顯示.00
execute if score #ptsd_dmg_a ptsd_dmg matches 0..9 run scoreboard players set #0 ptsd_dmg 0
execute if score #ptsd_dmged_a ptsd_dmged matches 0..9 run scoreboard players set #0 ptsd_dmged 0

tag @s remove stats_sort
#最高數值的改成黃色
data modify storage ut:macro color1 set value "white"
data modify storage ut:macro color2 set value "white"
data modify storage ut:macro color3 set value "white"
execute if score @s ptsd_dmg = #all_max ptsd_dmg run data modify storage ut:macro color1 set value "yellow"
execute if score @s ptsd_dmged = #all_max ptsd_dmged run data modify storage ut:macro color2 set value "yellow"
execute if score @s ptsd_wdmg = #all_max ptsd_wdmg run data modify storage ut:macro color3 set value "yellow"

function ut:system/stats/stats_message_m with storage ut:macro

#say hi ds HELLO SY!