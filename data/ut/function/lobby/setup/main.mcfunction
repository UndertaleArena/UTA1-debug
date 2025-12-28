#By Nebulirion

kill @e[tag=lobby_as]

execute positioned ^ ^ ^26 rotated -90 0 run function ut:lobby/setup/center

execute positioned ^ ^6 ^37 rotated -90 0 run function ut:lobby/setup/dog

execute positioned ^ ^-4 ^73 rotated 90 0 run function ut:lobby/setup/chooses
execute positioned ^ ^-5 ^73 rotated 90 0 run function ut:lobby/setup/maps
execute positioned ^ ^6 ^47 rotated 90 0 run function ut:lobby/setup/souls
execute positioned ^ ^6 ^64 rotated 90 0 run function ut:lobby/setup/credit
execute positioned ^ ^ ^10 rotated 90 0 run function ut:lobby/setup/settings
execute positioned ^ ^-40 ^28 rotated 90 0 run function ut:lobby/setup/tutorial
execute positioned ^ ^-1 ^54 rotated 90 0 run function ut:lobby/setup/menus

execute positioned ^-36 ^ ^17 rotated 0 0 run function ut:lobby/setup/minigame1
execute positioned ^36 ^ ^17 rotated 180 0 run function ut:lobby/setup/minigame2
execute positioned ^17 ^ ^ rotated 90 0 run function ut:lobby/setup/minigame3
execute positioned ^-17 ^ ^ rotated 90 0 run function ut:lobby/setup/minigame4

function ut:lobby/reload