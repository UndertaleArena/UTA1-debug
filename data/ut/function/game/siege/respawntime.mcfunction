#By Nebulirion

#Gamerules
scoreboard players operation #this tid = @s tid
execute if score #this tid = -SiegeAttack tid run scoreboard players set #this respawnTimer 70
execute if score #this tid = -SiegeDefend tid run scoreboard players set #this respawnTimer 100
execute if score #this tid = -SiegeAttack tid as @a[tag=playing] if score @s tid = #this tid run scoreboard players add #this respawnTimer 10
execute if score #this tid = -SiegeDefend tid as @a[tag=playing] if score @s tid = #this tid run scoreboard players add #this respawnTimer 20
scoreboard players operation @s respawnTimer = #this respawnTimer