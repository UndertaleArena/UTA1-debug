#By Nebulirion

execute if entity @s[tag=can_change_chr] if score -GameMode game matches 4..7 run function ut:system/chrswitch/inventory_clear

tag @s add atker_p
tag @s add atker_melee
scoreboard players operation #atker eaid = @s eaid
execute as @a if score @s evid = #atker eaid run tag @s add victim
#
execute if entity @s[tag=effect_untarget] run function ut:move/effect/untargetable/clear
#
execute if entity @a[tag=victim,tag=!untargetable] run function ut:move/melee/success
execute unless entity @a[tag=victim,tag=!untargetable] run function ut:move/melee/fail
#
function ut:move/melee/cooldown
#
scoreboard players reset @a[tag=victim] evid
tag @a[tag=victim] remove victim
scoreboard players reset @s eaid
scoreboard players set #eaid eaid 0
scoreboard players set #evid evid 0
tag @s remove atker_melee
tag @s remove atker_p