#By Nebulirion

#
execute if score team1 gamescore >= -Goal gamescore run tag @a[tag=playing,scores={tid=1}] add winner
execute if score team2 gamescore >= -Goal gamescore run tag @a[tag=playing,scores={tid=2}] add winner
execute if score team3 gamescore >= -Goal gamescore run tag @a[tag=playing,scores={tid=3}] add winner
execute if score team4 gamescore >= -Goal gamescore run tag @a[tag=playing,scores={tid=4}] add winner
execute if score team5 gamescore >= -Goal gamescore run tag @a[tag=playing,scores={tid=5}] add winner
execute if score team6 gamescore >= -Goal gamescore run tag @a[tag=playing,scores={tid=6}] add winner
execute if score team7 gamescore >= -Goal gamescore run tag @a[tag=playing,scores={tid=7}] add winner
execute if score team8 gamescore >= -Goal gamescore run tag @a[tag=playing,scores={tid=8}] add winner
execute if entity @a[tag=winner] run function ut:game/win
tag @a remove winner
#