#By Nebulirion

execute if score @s chr matches 1 run advancement grant @s only ut:chr/sans/root
execute if score @s chr matches 2 run advancement grant @s only ut:chr/papyrus/root
execute if score @s chr matches 3 run advancement grant @s only ut:chr/undyne/root
execute if score @s chr matches 4 run advancement grant @s only ut:chr/frisk/root
execute if score @s chr matches 5 run advancement grant @s only ut:chr/flowey/root
execute if score @s chr matches 6 run advancement grant @s only ut:chr/mettaton/root
execute if score @s chr matches 7 run advancement grant @s only ut:chr/muffet/root
execute if score @s chr matches 8 run advancement grant @s only ut:chr/chara/root
execute if score @s chr matches 9 run advancement grant @s only ut:chr/toriel/root
execute if score @s chr matches 10 run advancement grant @s only ut:chr/asgore/root
execute if score @s chr matches 11 run advancement grant @s only ut:chr/asriel/root
execute if score @s chr matches 12 run advancement grant @s only ut:chr/tobyfox/root
execute if score @s chr matches 13 run advancement grant @s only ut:chr/alphys/root
execute if score @s chr matches 14 run advancement grant @s only ut:chr/napstablook/root
execute if score @s chr matches 15 run advancement grant @s only ut:chr/maddummy/root
execute if score @s chr matches 16 run advancement grant @s only ut:chr/mettatonex/root

execute if score @s chr matches 1 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/sans/lv5
execute if score @s chr matches 2 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/papyrus/lv5
execute if score @s chr matches 3 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/undyne/lv5
execute if score @s chr matches 4 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/frisk/lv5
execute if score @s chr matches 5 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/flowey/lv5
execute if score @s chr matches 6 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/mettaton/lv5
execute if score @s chr matches 7 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/muffet/lv5
execute if score @s chr matches 8 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/chara/lv5
execute if score @s chr matches 9 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/toriel/lv5
execute if score @s chr matches 10 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/asgore/lv5
execute if score @s chr matches 11 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/asriel/lv5
execute if score @s chr matches 12 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/tobyfox/lv5
execute if score @s chr matches 13 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/alphys/lv5
execute if score @s chr matches 14 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/napstablook/lv5
execute if score @s chr matches 15 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/maddummy/lv5
execute if score @s chr matches 16 if score -CharacterLevel stat matches 5.. run advancement grant @s only ut:chr/mettatonex/lv5

execute if score @s chr matches 1 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/sans/lv20
execute if score @s chr matches 2 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/papyrus/lv20
execute if score @s chr matches 3 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/undyne/lv20
execute if score @s chr matches 4 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/frisk/lv20
execute if score @s chr matches 5 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/flowey/lv20
execute if score @s chr matches 6 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/mettaton/lv20
execute if score @s chr matches 7 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/muffet/lv20
execute if score @s chr matches 8 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/chara/lv20
execute if score @s chr matches 9 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/toriel/lv20
execute if score @s chr matches 10 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/asgore/lv20
execute if score @s chr matches 11 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/asriel/lv20
execute if score @s chr matches 12 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/tobyfox/lv20
execute if score @s chr matches 13 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/alphys/lv20
execute if score @s chr matches 14 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/napstablook/lv20
execute if score @s chr matches 15 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/maddummy/lv20
execute if score @s chr matches 16 if score -CharacterLevel stat matches 20.. run advancement grant @s only ut:chr/mettatonex/lv20

scoreboard players operation -oldchr store = @s chr
execute if score @s advancement matches 1.. run scoreboard players operation @s chr = @s advancement
execute if score @s advancement matches 1.. run function ut:stats/advancement_secret
scoreboard players operation @s chr = -oldchr store