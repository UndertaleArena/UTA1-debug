#By Nebulirion

execute positioned ^-1 ^1 ^-6 run function ut:lobby/setup/cre
data merge entity @e[tag=summon,limit=1] {CustomName:'{"text":"Nebulirion"}'}
item replace entity @e[tag=summon] armor.head with minecraft:player_head[minecraft:profile={id:[I;-1770079663,2089371155,-1601235453,-790713572],name:"Nebulirion",properties:[{name:"textures",signature:"EEFmDWg7xO1GP3RELfph4hEQ58Vb208CNIOmSbKHHUcP9eQsKyzv05lDgjmOOJly23bu5fr3hGClbaqGy3v4vWr+R+LOzReG95HuFXnuC8gITVB5YnyinpYA1eeSRC5g8uZMnQphSupAkz8UOoKqnBVBN9RkX6ofNdFG0osxD1Po9W7JBrykLrArLXw0TNZETIGVTAFcmk7kDupuS7pVUztheEhtK2YF42/uoptd1JhpW6Q0gmUlUyedi0zh9Ite413fZhj+D8t/H8cn5/p97ueS18SWQAeI6pwyS1V1VIRVUfo+PatIswU2kG2SPYemq79UMVbuKgLi1fSO4OtgFUYKLFL/aJ/kzchmm06HNNh+2zURJepHLZVPEs1Q18/mm0lQI/miuHPDV3OvYcc3sSc7/ARTqvFBlU6jOmADbqB9e01AJEShcYxhaqLKy1KJfAoP35W/SNazqEAjPH15XsulIo+XtfTG7qFansi/9bGleBXxYw1bW31L8OdwGwUp4O1yGQIU3KYuc7RFLqPlKPNq7lhRgSvN5u99zKnhPr7X5FvBGQlHJNOi2iToVBG4LtwsM25smjTzdrj1p0eGyAPzb0rMdDX59LCEC5IlGfGRQ1nCadzN5kbKMrylUEZKMxm3MTutNPUBEuDrC9uEMJB1mmNLc5fzDxk9+xOp8+Q=",value:"ewogICJ0aW1lc3RhbXAiIDogMTU5Nzg0OTQyODMzNSwKICAicHJvZmlsZUlkIiA6ICI5NjdlYmE1MTdjODk0NjEzYTA4ZjE2MDNkMGRlYWIxYyIsCiAgInByb2ZpbGVOYW1lIiA6ICJOZWJ1bGlyaW9uIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzNjZDRlNGQ4Yzc1ZmRmYTdlZjE4MmZlMGIyZDBmYjgwZmQxZWIxNTgxMDM1NTZiN2NkMzVkZGJkMjM3ZTBhMmMiCiAgICB9CiAgfQp9"}]}]
item replace entity @e[tag=summon] armor.chest with leather_chestplate[minecraft:dyed_color={rgb:16344064}]
item replace entity @e[tag=summon] armor.legs with leather_leggings[minecraft:dyed_color={rgb:15427085}]
item replace entity @e[tag=summon] armor.feet with leather_boots[minecraft:dyed_color={rgb:13980928}]
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add creator_as
tag @e[tag=summon] add also_for_spc
tag @e[tag=summon] add creator_as_disp
tag @e[tag=summon] add credit_ft
tag @e[tag=summon] add neb_as
tag @e[tag=summon] remove summon

execute positioned ^1 ^1 ^-6 run function ut:lobby/setup/cre
data merge entity @e[tag=summon,limit=1] {CustomName:'{"text":"Ehdanrary"}'}
item replace entity @e[tag=summon] armor.head with minecraft:player_head[minecraft:profile={id:[I;1628351282,-1196801657,-1900777490,-1615394164],name:"Ehdanrary",properties:[{name:"textures",signature:"aeZ7+OCJElDSDNdXZA8VV9QpxunGMXy8ydHB5nW/GhdyIvyiM0Gi2qDf/wEsvAiwPLYDM0iwe0CfqKi7cB+aRs8p9GP09+zE63VmZ7MtxA3xdkfxXjiBW1btqIiGXjr0LUFxwabhGDQG/EFaIfh19PmxKu1QLUkjXoaProTH8DoIYTpRelXdTmjGM3nyJRCllq7DidLLKRuzakFuP9JEl/VVezNYL4ehy6UGaOScZ06HWcqTpSQ38qIrww3HcdsI+X2PzomdWNCx1XQ9zP2yBOwcJyvnRhDpuvdScqNHjImztxz+Wo9bm7lVi+h+8dbnFBj/0T2uXAHwU1PmHHItPFD6JXEBhe2X0z/qM7sA3VNF2lxSOTZzUmX/1aPEsFHdbIr+VOq/7cvXWHlIMlxoVkUOEr2YMXDOFbwjtgUOQmgBlmFvDyEguSff9n089TGV9OZ7xyK7ZT/0uUTGmxf4+590sttygMNEHB/n/4bt/CmPLf5HjA/e2YSsbwe2QPPsNCadGF3IWwjWdxzTPi1umr4BixVxCf9HC01ZfEUXTAjy95UT1+gtitm4prRukAFzBS5aKiHaiULQTEwLnKR6XTNF1ir6oc+LgvW5mYDg5jjiMGlVVzFnwG4y6NSscEfNtaBy5eIH8vyb94AQolOYLhtwmkoBjn2mWCuOA5kjhGI=",value:"ewogICJ0aW1lc3RhbXAiIDogMTU5Nzg1MDE0ODg1NywKICAicHJvZmlsZUlkIiA6ICI2MTBlYWIzMmI4YWE0MTg3OGViNDZmZWU5ZmI3MGE4YyIsCiAgInByb2ZpbGVOYW1lIiA6ICJFaGRhbnJhcnkiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTk0MTRiZTNlYTdhOGM3N2M5MDgyMjQyZWQ1MDZmZDliNjhlZTU0NmQ2OTFkZmI5OTlmMTJhZjM1MjExY2JmNiIKICAgIH0KICB9Cn0="}]}]
item replace entity @e[tag=summon] armor.chest with leather_chestplate[minecraft:dyed_color={rgb:3628419}]
item replace entity @e[tag=summon] armor.legs with leather_leggings[minecraft:dyed_color={rgb:1718605}]
item replace entity @e[tag=summon] armor.feet with leather_boots[minecraft:dyed_color={rgb:0}]
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add creator_as
tag @e[tag=summon] add also_for_spc
tag @e[tag=summon] add creator_as_disp
tag @e[tag=summon] add credit_ft
tag @e[tag=summon] add ak_as
tag @e[tag=summon] remove summon

execute positioned ^3 ^1 ^-7 run function ut:lobby/setup/cre
data merge entity @e[tag=summon,limit=1] {CustomName:'{"text":"SY91419"}',Small:1b}
item replace entity @e[tag=summon] armor.head with minecraft:player_head[minecraft:profile={id:[I;-1749333512,-1293467007,-1710965031,-1791070273],name:"SY91419",properties:[{name:"textures",signature:"bZhLTDmfWt8mW2UqreSN20aa0vhPk/fXDFk52Py0cA0kflpAwmXNEqEHbZuagU8zuXnggIn1lmmnissqAXOUyQ0NFCUVXkX91NenaYAtHt1/0Zt9MdOIZ65WJpYyWCUahV/yJQbf60NrY57U1/FOoEC9by+JxkmW0vY+8eFTgy+b73u3xvpUtfzOZlQtJ7nfYpzZYpF1ocZinq4W1ExOfS9wyBNfUAkx4sHIFEf4Y4mLrOv/PQN1zC3zztm2616P7S6PWcPm44Z8hicUX330TEmdH+ICrCeOt8PUxCFnnlRabXA/KkvjxQ0r7d34xdXuKvkKCt0jVoCuV87WaKt99hdKcfFQoKm9FWhE3MRG8aQV/JpCXYILDWoJrQlvoTkRb6v3EFAsTU4cKheuOBRzZlHIlksE8pl9ItkNhF0IKc5rS+UccAPBxOLyN297nt4GE1q0apATkygqdmvaI8poU62jQH2eALaC43CluOIizGeBPUgFOBITTzKJ/KEmQ2cWU7nT7EbP+gwItICeAwp/a0ugvl79whiH0AbQu+oFTM29HF3IdoQiONkqdutI5WnDaj+IEaYl0g6JEiqYE85ghAfhKkLtTJj80xKQFTuLm6J4qMQjkUxaha5rRmbl43TtkdqB6YG2J54y1XdYmTY0CEvX1sHiQkZEmAEM/+uHklI=",value:"ewogICJ0aW1lc3RhbXAiIDogMTU5Nzg1MDI2ODY4NywKICAicHJvZmlsZUlkIiA6ICI5N2JiNDlmOGIyZTc0MjgxOWEwNGJlZDk5NTNlNmZiZiIsCiAgInByb2ZpbGVOYW1lIiA6ICJTWTkxNDE5IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2NhZDUzODQzNTQ3MGIzN2EyODAwZmEyZTQ3MGIxNDA2YzUwYzE3YTVmZDU1Yjk3NTg2NTc4NWVkNDM5MzYyMWMiCiAgICB9CiAgfQp9"}]}]
item replace entity @e[tag=summon] armor.chest with leather_chestplate[minecraft:dyed_color={rgb:14405006}]
item replace entity @e[tag=summon] armor.legs with leather_leggings[minecraft:dyed_color={rgb:4013373}]
item replace entity @e[tag=summon] armor.feet with leather_boots[minecraft:dyed_color={rgb:3020544}]
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add creator_as
tag @e[tag=summon] add also_for_spc
tag @e[tag=summon] add creator_as_disp
tag @e[tag=summon] add credit_ft
tag @e[tag=summon] add sy_as
tag @e[tag=summon] remove summon

execute positioned ^-3 ^1 ^-7 run function ut:lobby/setup/cre
data merge entity @e[tag=summon,limit=1] {CustomName:'{"text":"KoKaiC0715"}',Small:1b}
item replace entity @e[tag=summon] armor.head with minecraft:player_head[minecraft:profile={id:[I;625733648,-92323836,-1256810755,740259531],name:"KoKaiC0715",properties:[{name:"textures",signature:"Ck5WeGS08Y72qvWDBOv2AVtVQAPfdYCbscEs9UptykZRyVirK67+Ci+xNwfdHdPMu+IF1iwb2mcDVVaF5Qc1D9YlXeOULMyYh8/JVBh40RYQPuLSMw5hADz6seK5U1eaZDDd80DAM29MH53LGaU32oAcIRV8fVbHNn/KmxkWT0dMDJA9Ld3F2f5K+NZCYP803akwHUAqySqvDLBkLSwRLENx3zVMMYjVxI/1UOH/bcbRwZX9MPZB+z5EAlyz4ZXa+YXBIgeA++6lcYP1cW22kIVe2wjYj9f8gS4kOnzINOWhB4KzaHzzjGDat/rUwW9rmDO8ASe1S8E3ltWjH64hIrCNy1O99mjFm6C6vsV1O9HId0CRP7gV3/JTIxZm6+kc+rkfNTumO8krpIWd45BlNQR93cvKMXlREPE9Jag80iSPcvYtDdwoXEJ+3GI5utON6wsGhWsX9kdHMnmWHQY920+13SIy7Xk4qDNdOZlyv9TKvT0PQIsBaQslDz2hlmqOuq4lT7t98SN9XQD9k1fNAKIJTqbAFwIZbCgGoWpTQ30qSuexq4sxS0QD9XNSTsOfLW1wk7aTYunix+9ehKiaRFT9A7/GqutaOVzCNkCff09vwjoNZyNyOl97uzwbfhqYcObt3feT4pyuhWwFtm0Vc6eBnbSQi8Asd9UpKirI/lo=",value:"ewogICJ0aW1lc3RhbXAiIDogMTYzODYxODE1MjkzNCwKICAicHJvZmlsZUlkIiA6ICIyNTRiZjAxMGZhN2Y0MDA0YjUxNjk2ZmQyYzFmNzZjYiIsCiAgInByb2ZpbGVOYW1lIiA6ICJLb0thaUMwNzE1IiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2U1YTFiN2FhNzM3NDRmOTNkYjliNThhMjQ4Yjg5NTA4MzljYzE5YjQxMDllM2NmZWMxZjFmZWZkMGVkZDkzZDkiLAogICAgICAibWV0YWRhdGEiIDogewogICAgICAgICJtb2RlbCIgOiAic2xpbSIKICAgICAgfQogICAgfQogIH0KfQ=="}]}]
item replace entity @e[tag=summon] armor.chest with leather_chestplate[minecraft:dyed_color={rgb:10733529}]
item replace entity @e[tag=summon] armor.legs with leather_leggings[minecraft:dyed_color={rgb:1456038}]
item replace entity @e[tag=summon] armor.feet with leather_boots[minecraft:dyed_color={rgb:10905939}]
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add creator_as
tag @e[tag=summon] add also_for_spc
tag @e[tag=summon] add creator_as_disp
tag @e[tag=summon] add credit_ft
tag @e[tag=summon] add blue_as
tag @e[tag=summon] remove summon

execute positioned ^ ^2 ^ run function ut:lobby/setup/position_mark
data merge entity @e[tag=summon,limit=1] {CustomNameVisible:0b}
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add credit_room
tag @e[tag=summon] remove summon

execute positioned ^ ^3 ^6 run function ut:lobby/text/create
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.cre.info"}'}
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add credit_ft
tag @e[tag=summon] remove summon

execute positioned ^ ^-.25 ^-4.35 run function ut:lobby/setup/tut
item replace entity @e[tag=summon] armor.head with mushroom_stew
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.cre.start"}',Small:1b}
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add credit_start
tag @e[tag=summon] add credit_ft
tag @e[tag=summon] add need_to_be_close
tag @e[tag=summon] remove summon

execute positioned ^ ^2 ^13 run function ut:lobby/setup/position
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.ft.door","with":["9"]}'}
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~180 ~
tag @e[tag=summon] add door_9g
tag @e[tag=summon] remove summon

execute positioned ^ ^-149 ^ run function ut:lobby/setup/position_mark
data merge entity @e[tag=summon,limit=1] {CustomName:'{"translate":"las.cre.info"}',CustomNameVisible:0b}
execute as @e[tag=summon] positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=summon] add credit_play
tag @e[tag=summon] remove summon