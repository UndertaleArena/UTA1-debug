#By Nebulirion

#tellraw @a ["SAVING GAMEMODE: ",{"score":{"name": "-GameMode","objective": "game"}}]

data modify storage ut:modes LoadedRules set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0]
execute store result storage ut:modes LoadedRules[0] int 1 run scoreboard players get swapCharacter gamerule
execute store result storage ut:modes LoadedRules[1] int 1 run scoreboard players get hpDisplay gamerule
execute store result storage ut:modes LoadedRules[2] int 1 run scoreboard players get willHealing gamerule
execute store result storage ut:modes LoadedRules[3] int 1 run scoreboard players get killBonus gamerule
execute store result storage ut:modes LoadedRules[4] int 1 run scoreboard players get dtmaxRate gamerule
execute store result storage ut:modes LoadedRules[5] int 1 run scoreboard players get hpmaxRate gamerule
execute store result storage ut:modes LoadedRules[6] int 1 run scoreboard players get dtRegen gamerule
execute store result storage ut:modes LoadedRules[7] int 1 run scoreboard players get dtReset gamerule
execute store result storage ut:modes LoadedRules[8] int 1 run scoreboard players get A_Uniform gamerulemode
execute store result storage ut:modes LoadedRules[9] int 1 run scoreboard players get A_Respawn gamerulemode
execute store result storage ut:modes LoadedRules[10] int 1 run scoreboard players get A_Border gamerulemode
execute store result storage ut:modes LoadedRules[11] int 1 run scoreboard players get B_AutoAbsorb gamerulemode
execute store result storage ut:modes LoadedRules[12] int 1 run scoreboard players get B_SoulCount gamerulemode
execute store result storage ut:modes LoadedRules[13] int 1 run scoreboard players get B_DropSoul gamerulemode
execute if score -GameMode game matches 0 run data modify storage ut:modes Data[0].Gamerules set from storage ut:modes LoadedRules
execute if score -GameMode game matches 1 run data modify storage ut:modes Data[1].Gamerules set from storage ut:modes LoadedRules
execute if score -GameMode game matches 2 run data modify storage ut:modes Data[2].Gamerules set from storage ut:modes LoadedRules