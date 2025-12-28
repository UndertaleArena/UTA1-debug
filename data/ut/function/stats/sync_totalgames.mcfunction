#By Nebulirion

scoreboard players operation #willneedgrowcount store = -total gamesfinished

execute store result score -stored gamesfinished run data get storage utstats:main Total
execute if score -total gamesfinished > -stored gamesfinished store result storage utstats:main Total int 1 run scoreboard players get -total gamesfinished
execute if score -total gamesfinished < -stored gamesfinished store result score -total gamesfinished run data get storage utstats:main Total

scoreboard players operation #willneedgrowcount store -= -total gamesfinished
scoreboard players operation #willneedgrowcount store *= -1 const
execute if score #willneedgrowcount store matches ..-1 run scoreboard players set #willneedgrowcount store 0

execute unless score #growcount store >= #willneedgrowcount store run scoreboard players operation #growcount store = #willneedgrowcount store