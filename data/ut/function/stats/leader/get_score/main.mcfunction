#By Nebulirion
#########

scoreboard players set #scored leaderboard 0
execute if score -FilterCM leaderboard matches 1 run function ut:stats/leader/get_score/chr
execute if score -FilterCM leaderboard matches 2 run function ut:stats/leader/get_score/mode
execute if score #scored leaderboard matches 0 run data modify storage utstats:main LoadedStats set from storage utstats:main LoadedPlayer.Player

function ut:stats/get_stats
function ut:stats/display/calculate_main
function ut:stats/display/calculate_skill

scoreboard players set @s leaderboard 0
execute if score -FilterS leaderboard matches 1 run scoreboard players operation @s leaderboard = -GamesPlayed stat
execute if score -FilterS leaderboard matches 2 run scoreboard players operation @s leaderboard = -GamesWon stat
execute if score -FilterS leaderboard matches 3 run scoreboard players operation @s leaderboard = -ElimCount stat
execute if score -FilterS leaderboard matches 4 run scoreboard players operation @s leaderboard = -DeathCount stat
execute if score -FilterS leaderboard matches 5 run scoreboard players operation @s leaderboard = -KillCount stat
execute if score -FilterS leaderboard matches 6 run scoreboard players operation @s leaderboard = -SpareCount stat
execute if score -FilterS leaderboard matches 7 run scoreboard players operation @s leaderboard = -DTused stat
execute if score -FilterS leaderboard matches 8 run scoreboard players operation @s leaderboard = -CharacterLevel stat
execute if score -FilterS leaderboard matches 9 run scoreboard players operation @s leaderboard = -DamageDealt stat
execute if score -FilterS leaderboard matches 10 run scoreboard players operation @s leaderboard = -GameTime stat
execute if score -FilterS leaderboard matches 11 run scoreboard players operation @s leaderboard = -SkillLevel stat
execute if score -FilterS leaderboard matches 12 run scoreboard players operation @s leaderboard = -WinRate stat
execute if score -FilterS leaderboard matches 13 run scoreboard players operation @s leaderboard = -KDR stat