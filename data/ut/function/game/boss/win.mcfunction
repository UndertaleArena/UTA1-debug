#By Nebulirion

execute store result score pc store if entity @a[tag=winner]
execute store result score pc1 store if entity @a[tag=winner_alive]
execute store result score pc2 store if entity @a[tag=winner_dead]

#####Message
function ut:game/boss/win_message

scoreboard players reset pc1 store
scoreboard players reset pc2 store
scoreboard players reset pc store