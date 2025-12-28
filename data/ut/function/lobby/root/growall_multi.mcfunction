#By Nebulirion

function ut:lobby/root/growall

scoreboard players remove #growcount store 1
execute if score #growcount store matches 1.. run function ut:lobby/root/growall_multi