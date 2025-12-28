#By Nebulirion

#tellraw @a ["LOADING GAMEMODE: ",{"score":{"name": "-GameMode","objective": "game"}}]

execute if score -GameMode game matches 0 run data modify storage ut:modes LoadedRules set from storage ut:modes Data[0].Gamerules
execute if score -GameMode game matches 1 run data modify storage ut:modes LoadedRules set from storage ut:modes Data[1].Gamerules
execute if score -GameMode game matches 2 run data modify storage ut:modes LoadedRules set from storage ut:modes Data[2].Gamerules
execute store result score swapCharacter gamerule run data get storage ut:modes LoadedRules[0]
execute store result score hpDisplay gamerule run data get storage ut:modes LoadedRules[1]
execute store result score willHealing gamerule run data get storage ut:modes LoadedRules[2]
execute store result score killBonus gamerule run data get storage ut:modes LoadedRules[3]
execute store result score dtmaxRate gamerule run data get storage ut:modes LoadedRules[4]
execute store result score hpmaxRate gamerule run data get storage ut:modes LoadedRules[5]
execute store result score dtRegen gamerule run data get storage ut:modes LoadedRules[6]
execute store result score dtReset gamerule run data get storage ut:modes LoadedRules[7]
execute store result score A_Uniform gamerulemode run data get storage ut:modes LoadedRules[8]
execute store result score A_Respawn gamerulemode run data get storage ut:modes LoadedRules[9]
execute store result score A_Border gamerulemode run data get storage ut:modes LoadedRules[10]
execute store result score B_AutoAbsorb gamerulemode run data get storage ut:modes LoadedRules[11]
execute store result score B_SoulCount gamerulemode run data get storage ut:modes LoadedRules[12]
execute store result score B_DropSoul gamerulemode run data get storage ut:modes LoadedRules[13]