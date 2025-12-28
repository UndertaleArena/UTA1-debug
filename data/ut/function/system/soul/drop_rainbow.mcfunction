#By Nebulirion

#RAINBOW#####
##RAINBOW####
###RAINBOW###
####RAINBOW##
#####RAINBOW#

# Pre-Rainbow
scoreboard players operation #soulMode store = setSoul gamerule
scoreboard players set setSoul gamerule 1

scoreboard players operation #myteam tid = @s tid
scoreboard players set @s tid 1
function ut:system/soul/drop_self
scoreboard players set @s tid 2
function ut:system/soul/drop_self
scoreboard players set @s tid 3
function ut:system/soul/drop_self
scoreboard players set @s tid 4
function ut:system/soul/drop_self
scoreboard players set @s tid 5
function ut:system/soul/drop_self
scoreboard players set @s tid 6
function ut:system/soul/drop_self
scoreboard players set @s tid 7
function ut:system/soul/drop_self
scoreboard players set @s tid 8
function ut:system/soul/drop_self
scoreboard players operation @s tid = #myteam tid
function ut:system/team/join

# Post-Rainbow
scoreboard players operation setSoul gamerule = #soulMode store
scoreboard players reset #soulMode store

#RAINBOW#####
##RAINBOW####
###RAINBOW###
####RAINBOW##
#####RAINBOW#