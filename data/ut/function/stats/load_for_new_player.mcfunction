#By Nebulirion

gamerule announceAdvancements false

#Get DT and GF Stat Score
data modify storage utstats:main LoadedStats set from storage utstats:main LoadedPlayer.Player
function ut:stats/get_stats
scoreboard players operation @s gamesfinished = -GamesFinished stat
scoreboard players operation @s st_dtuse = -DTused stat

#Load Scores
execute store result score @s keychain run data get storage utstats:main LoadedPlayer.Scores.keychain
execute store result score @s tutorial run data get storage utstats:main LoadedPlayer.Scores.tutorial
execute store result score @s tut_sr run data get storage utstats:main LoadedPlayer.Scores.tut_sr
execute store result score @s Q run data get storage utstats:main LoadedPlayer.Scores.Q
execute store result score @s N run data get storage utstats:main LoadedPlayer.Scores.N
execute store result score @s C run data get storage utstats:main LoadedPlayer.Scores.C
execute store result score @s tut_sr run data get storage utstats:main LoadedPlayer.Scores.tut_sr
execute store result score @s clear_maze_total run data get storage utstats:main LoadedPlayer.Scores.clear_maze_total
execute store result score @s dummy_best run data get storage utstats:main LoadedPlayer.Scores.dummy_best
execute store result score @s credit run data get storage utstats:main LoadedPlayer.Scores.credit
execute store result score @s frog run data get storage utstats:main LoadedPlayer.Scores.frog
execute store result score @s undyne_skin run data get storage utstats:main LoadedPlayer.Scores.undyne_skin

tag @s remove cev
tag @s remove pinky
tag @s remove vip
execute if data storage utstats:main LoadedPlayer.Scores{tag_cev:1b} run tag @s add cev
execute if data storage utstats:main LoadedPlayer.Scores{tag_pinky:1b} run tag @s add pinky
execute if data storage utstats:main LoadedPlayer.Scores{tag_vip:1b} run tag @s add vip

#Recipes
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog1:1b} run recipe give @s ut:dog1
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog2:1b} run recipe give @s ut:dog2
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog3:1b} run recipe give @s ut:dog3
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog4:1b} run recipe give @s ut:dog4
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog5:1b} run recipe give @s ut:dog5
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog6:1b} run recipe give @s ut:dog6
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog7:1b} run recipe give @s ut:dog7
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog8:1b} run recipe give @s ut:dog8
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog9:1b} run recipe give @s ut:dog9
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog10:1b} run recipe give @s ut:dog10
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog11:1b} run recipe give @s ut:dog11
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog12:1b} run recipe give @s ut:dog12
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog13:1b} run recipe give @s ut:dog13
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog14:1b} run recipe give @s ut:dog14
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog15:1b} run recipe give @s ut:dog15
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog16:1b} run recipe give @s ut:dog16
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog17:1b} run recipe give @s ut:dog17
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog18:1b} run recipe give @s ut:dog18
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_dog19:1b} run recipe give @s ut:dog19
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_timer1:1b} run recipe give @s ut:timer1
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_timer2:1b} run recipe give @s ut:timer2
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_timer3:1b} run recipe give @s ut:timer3
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_timer4:1b} run recipe give @s ut:timer4
#execute if data storage utstats:main LoadedPlayer.Recipes{ut_timer5:1b} run recipe give @s ut:timer5

#Advancements
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_alphys_lv20:1b} run advancement grant @s only ut:chr/alphys/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_alphys_lv5:1b} run advancement grant @s only ut:chr/alphys/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_alphys_root:1b} run advancement grant @s only ut:chr/alphys/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_alphys_secret:1b} run advancement grant @s only ut:chr/alphys/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_asgore_lv20:1b} run advancement grant @s only ut:chr/asgore/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_asgore_lv5:1b} run advancement grant @s only ut:chr/asgore/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_asgore_root:1b} run advancement grant @s only ut:chr/asgore/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_asgore_secret:1b} run advancement grant @s only ut:chr/asgore/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_asriel_lv20:1b} run advancement grant @s only ut:chr/asriel/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_asriel_lv5:1b} run advancement grant @s only ut:chr/asriel/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_asriel_root:1b} run advancement grant @s only ut:chr/asriel/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_asriel_secret:1b} run advancement grant @s only ut:chr/asriel/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_chara_lv20:1b} run advancement grant @s only ut:chr/chara/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_chara_lv5:1b} run advancement grant @s only ut:chr/chara/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_chara_root:1b} run advancement grant @s only ut:chr/chara/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_chara_secret:1b} run advancement grant @s only ut:chr/chara/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_flowey_lv20:1b} run advancement grant @s only ut:chr/flowey/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_flowey_lv5:1b} run advancement grant @s only ut:chr/flowey/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_flowey_root:1b} run advancement grant @s only ut:chr/flowey/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_flowey_secret:1b} run advancement grant @s only ut:chr/flowey/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_frisk_lv20:1b} run advancement grant @s only ut:chr/frisk/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_frisk_lv5:1b} run advancement grant @s only ut:chr/frisk/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_frisk_root:1b} run advancement grant @s only ut:chr/frisk/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_frisk_secret:1b} run advancement grant @s only ut:chr/frisk/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_maddummy_lv20:1b} run advancement grant @s only ut:chr/maddummy/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_maddummy_lv5:1b} run advancement grant @s only ut:chr/maddummy/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_maddummy_root:1b} run advancement grant @s only ut:chr/maddummy/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_maddummy_secret:1b} run advancement grant @s only ut:chr/maddummy/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_mettaton_lv20:1b} run advancement grant @s only ut:chr/mettaton/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_mettaton_lv5:1b} run advancement grant @s only ut:chr/mettaton/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_mettaton_root:1b} run advancement grant @s only ut:chr/mettaton/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_mettaton_secret:1b} run advancement grant @s only ut:chr/mettaton/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_mettatonex_lv20:1b} run advancement grant @s only ut:chr/mettatonex/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_mettatonex_lv5:1b} run advancement grant @s only ut:chr/mettatonex/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_mettatonex_root:1b} run advancement grant @s only ut:chr/mettatonex/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_mettatonex_secret:1b} run advancement grant @s only ut:chr/mettatonex/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_muffet_lv20:1b} run advancement grant @s only ut:chr/muffet/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_muffet_lv5:1b} run advancement grant @s only ut:chr/muffet/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_muffet_root:1b} run advancement grant @s only ut:chr/muffet/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_muffet_secret:1b} run advancement grant @s only ut:chr/muffet/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_napstablook_lv20:1b} run advancement grant @s only ut:chr/napstablook/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_napstablook_lv5:1b} run advancement grant @s only ut:chr/napstablook/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_napstablook_root:1b} run advancement grant @s only ut:chr/napstablook/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_napstablook_secret:1b} run advancement grant @s only ut:chr/napstablook/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_papyrus_lv20:1b} run advancement grant @s only ut:chr/papyrus/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_papyrus_lv5:1b} run advancement grant @s only ut:chr/papyrus/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_papyrus_root:1b} run advancement grant @s only ut:chr/papyrus/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_papyrus_secret:1b} run advancement grant @s only ut:chr/papyrus/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_root:1b} run advancement grant @s only ut:chr/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_sans_lv20:1b} run advancement grant @s only ut:chr/sans/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_sans_lv5:1b} run advancement grant @s only ut:chr/sans/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_sans_root:1b} run advancement grant @s only ut:chr/sans/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_sans_secret:1b} run advancement grant @s only ut:chr/sans/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_tobyfox_lv20:1b} run advancement grant @s only ut:chr/tobyfox/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_tobyfox_lv5:1b} run advancement grant @s only ut:chr/tobyfox/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_tobyfox_root:1b} run advancement grant @s only ut:chr/tobyfox/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_tobyfox_secret:1b} run advancement grant @s only ut:chr/tobyfox/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_tobyfox_sssecret:1b} run advancement grant @s only ut:chr/tobyfox/sssecret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_toriel_lv20:1b} run advancement grant @s only ut:chr/toriel/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_toriel_lv5:1b} run advancement grant @s only ut:chr/toriel/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_toriel_root:1b} run advancement grant @s only ut:chr/toriel/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_toriel_secret:1b} run advancement grant @s only ut:chr/toriel/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_undyne_lv20:1b} run advancement grant @s only ut:chr/undyne/lv20
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_undyne_lv5:1b} run advancement grant @s only ut:chr/undyne/lv5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_undyne_root:1b} run advancement grant @s only ut:chr/undyne/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_chr_undyne_secret:1b} run advancement grant @s only ut:chr/undyne/secret
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_all_dog:1b} run advancement grant @s only ut:other/all_dog
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_credit_itsyou:1b} run advancement grant @s only ut:other/credit/itsyou
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_credit_nohit:1b} run advancement grant @s only ut:other/credit/nohit
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_credit_root:1b} run advancement grant @s only ut:other/credit/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_hacker_dog:1b} run advancement grant @s only ut:other/hacker_dog
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_mini_bone_parkour:1b} run advancement grant @s only ut:other/mini/bone_parkour
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_mini_dummy:1b} run advancement grant @s only ut:other/mini/dummy
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_mini_dummyspare:1b} run advancement grant @s only ut:other/mini/dummyspare
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_mini_frog:1b} run advancement grant @s only ut:other/mini/frog
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_mini_maze:1b} run advancement grant @s only ut:other/mini/maze
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_mini_maze10:1b} run advancement grant @s only ut:other/mini/maze10
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_mini_root:1b} run advancement grant @s only ut:other/mini/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_one_dog:1b} run advancement grant @s only ut:other/one_dog
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_root:1b} run advancement grant @s only ut:other/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_timer_level1:1b} run advancement grant @s only ut:other/timer/level1
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_timer_level2:1b} run advancement grant @s only ut:other/timer/level2
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_timer_level3:1b} run advancement grant @s only ut:other/timer/level3
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_timer_level4:1b} run advancement grant @s only ut:other/timer/level4
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_timer_level5:1b} run advancement grant @s only ut:other/timer/level5
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_tut_root:1b} run advancement grant @s only ut:other/tut/root
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_tut_tuto100:1b} run advancement grant @s only ut:other/tut/tuto100
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_tut_tuto30:1b} run advancement grant @s only ut:other/tut/tuto30
#execute if data storage utstats:main LoadedPlayer.Advancements{ut_other_tut_tutoroot:1b} run advancement grant @s only ut:other/tut/tutoroot

gamerule announceAdvancements true