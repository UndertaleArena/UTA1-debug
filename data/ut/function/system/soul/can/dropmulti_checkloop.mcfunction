#By Nebulirion

execute if data storage soul PlayerInv[0].components."minecraft:custom_data"{soul:1b,canned:0b,nonboss:0b} run data modify storage soul SoulInv append from storage soul PlayerInv[0]
data remove storage soul PlayerInv[0]
execute if data storage soul PlayerInv[0] run function ut:system/soul/can/dropmulti_checkloop