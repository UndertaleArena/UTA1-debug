#By Nebulirion

###
scoreboard objectives add infolink_timer dummy "INFOLINK TIMER"
scoreboard objectives add impaled_timer dummy "IMPALED TIMER"
scoreboard objectives add impaled_level dummy "IMPALED DEBUFF"
scoreboard objectives add in_pregame dummy
scoreboard objectives add ml dummy "MELEE CD"
scoreboard objectives add mlmax dummy "MELEE COOLDOWN"
scoreboard objectives add mldis dummy "MELEE"
scoreboard objectives add mlextra dummy "MELEE CD EXTRA"

###
scoreboard objectives add keychain dummy
scoreboard objectives add newborn dummy
###
scoreboard objectives add pickup_candy minecraft.picked_up:minecraft.glow_berries "CANDY"
###
scoreboard objectives add frog_talk dummy "Frog Talk"
scoreboard objectives add frog trigger "Frog Trigger"
scoreboard objectives add frogfilter dummy "Frog Filter"
###
scoreboard objectives add played_maze dummy
scoreboard objectives add clear_maze_total dummy
scoreboard objectives add clear_maze_this dummy
###
scoreboard objectives add gpid dummy "Game Player ID"
###
scoreboard objectives add dog dummy
scoreboard objectives add dog_ai dummy
scoreboard objectives add dog_timer dummy
scoreboard objectives add dogait dummy "Dog Type"
scoreboard objectives add dogaiv dummy "Dog Variant"
scoreboard objectives add dogaic dummy "Dog Counter"
scoreboard objectives add dogaie dummy "Dog Effect"
###
scoreboard objectives add shulker_timer dummy
scoreboard objectives add dummy_counter_a dummy
scoreboard objectives add dummy_counter_b dummy
scoreboard objectives add dummy_counter_t dummy
scoreboard objectives add undyne_skin dummy
scoreboard objectives add skill dummy
scoreboard objectives add skill_dif dummy
scoreboard objectives add maze_direction dummy
scoreboard objectives add maze_x dummy
scoreboard objectives add maze_z dummy
scoreboard objectives add dummy_timer dummy
scoreboard objectives add maze_timer dummy
scoreboard objectives add snail_timer dummy
scoreboard objectives add maze_timer dummy
scoreboard objectives add undying_total dummy
scoreboard objectives add random dummy
scoreboard objectives add favourite dummy
scoreboard objectives add daytime dummy
scoreboard objectives add tbid dummy "Team Battle ID"
scoreboard objectives add etid dummy "Enemy Team ID"
scoreboard objectives add nebbell minecraft.custom:minecraft.bell_ring
scoreboard objectives add gamescore dummy "TeamScore"
scoreboard objectives add gamescoresmall dummy "TeamScoreSmall"
scoreboard objectives add gamemode dummy
scoreboard objectives add advancement dummy
scoreboard objectives add advancement_c dummy
scoreboard objectives add leaderboard dummy
scoreboard objectives add leaderboard_rank dummy
scoreboard players set DISPLAY leaderboard_rank 5
###
scoreboard objectives add last_chr dummy "LAST CHARACTER"
scoreboard objectives add last_chr_ingame dummy "THE COOLER LAST CHARACTER"
###
scoreboard objectives add Q dummy "DISPLAY QUALITY"
scoreboard objectives add N dummy "NIGHT VISION"
scoreboard objectives add C dummy "DEFAULT CHARACTER"
scoreboard objectives add S dummy "STAT"
scoreboard objectives add UI dummy "USER INTERFACE"
scoreboard objectives add trigger trigger "TIGER"
###
scoreboard objectives add tech dummy "Technical Stuff (Pain)"
###
scoreboard objectives add house_ticket dummy "HOUSE?"
scoreboard objectives add stage_ticket dummy "STAGE?"
###
scoreboard objectives add hud dummy
scoreboard objectives add move_loop dummy
scoreboard objectives add bosscount dummy
scoreboard objectives add gamesfinished dummy "Games Finished"
scoreboard objectives add stat dummy "Statistics"
scoreboard objectives add maplock dummy "Map Lock"
scoreboard objectives add tobylock dummy "Toby Lock"
###
scoreboard objectives add menu dummy "LOBBY MENU"
scoreboard objectives add st_gold dummy "GOLD"
scoreboard objectives add fav dummy
scoreboard objectives add respawnTimer dummy
scoreboard objectives add respawnTimerSec dummy
scoreboard objectives add L dummy
scoreboard objectives add D dummy "dog nerd lol"
scoreboard objectives add soul_count dummy "SOUL COUNT"
scoreboard objectives add pickup_soul minecraft.picked_up:minecraft.carrot_on_a_stick "GET SOUL"
###
scoreboard objectives add border dummy "BORDER"
scoreboard objectives add border_timer dummy "B damage"
#####scoreboard
###system
scoreboard objectives add game dummy "GAME"
scoreboard objectives add siegegame dummy "SIEGE GAME"
scoreboard objectives add gamerule dummy "GAMERULES"
scoreboard objectives add gamerulemode dummy "GAMEMODE SETTINGS"
function ut:game/gamerule
scoreboard objectives add timer dummy "TIMER"
#
scoreboard objectives add pid dummy "PLAYER ID"
scoreboard objectives add tid dummy "TEAM ID"
scoreboard objectives add bid dummy "BOSSBAR ID"
scoreboard objectives add gid dummy "GAME ID"
#
scoreboard objectives add aid dummy "ATTACK ID"
scoreboard objectives add sid dummy "STICK ID"
scoreboard objectives add cid dummy "CUPCAKE ID"
scoreboard objectives add nid dummy "NO HIT ID"
#
scoreboard objectives add rot dummy "ROTATION"
#
scoreboard objectives add kid dummy "Killer ID"
scoreboard players set #clear kid 300
scoreboard objectives add ppid dummy "Permanent PlayerID"
scoreboard objectives add ptid dummy "Permanent TeamID"
#
scoreboard objectives add gamesec dummy "GAME SECONDS"
#
scoreboard objectives add chr dummy "CHARACTER"
scoreboard objectives add istobychr dummy "IS TOBY"

###playerStatus
#damage
scoreboard objectives add hitcheck dummy "HIT CHECK"
scoreboard objectives add shield dummy "SHIELD"
# scoreboard objectives add passive_muffet dummy "PASSIVE MUFFET COUNT DOWN"
# scoreboard objectives add passive_papyrus dummy "PASSIVE PAPYRUS BOSS BAR"

scoreboard objectives add prj_speed dummy "PRJ SPEED"
scoreboard players set #rate prj_speed 100
scoreboard objectives add atk dummy "ATK"
scoreboard players set #rate atk 100
scoreboard objectives add def dummy "DAMAGE RATE"
scoreboard players set #rate def 100
scoreboard objectives add damage dummy "DAMAGE"
scoreboard players set #rate damage 100
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt "DAMAGE DEALT"
scoreboard objectives add damage_resisted minecraft.custom:minecraft.damage_resisted "DAMAGE TAKEN"
scoreboard players set #amplifier damage_resisted 10
scoreboard objectives add eaid dummy "Event Attacker ID"
scoreboard objectives add evid dummy "Event Victim ID"
scoreboard objectives add bullet_fired dummy
scoreboard objectives add bullet_hit dummy
#hp
scoreboard objectives add hp dummy "HP"
scoreboard objectives add hpmax dummy "MAX HP"
scoreboard objectives add hpbase dummy "BASE HP"
scoreboard objectives add hpdis dummy "HP"
scoreboard players set #rate hpdis 100
scoreboard objectives add hpregen dummy "HEALING COOLDOWN"
scoreboard objectives add quickhealcount dummy "QUICKHEAL COOLDOWN"
#will
scoreboard objectives add will dummy "WILL"
scoreboard objectives add will25 dummy "WILL4FRISK"
scoreboard objectives add willmax dummy "WILL MAX"
scoreboard objectives add willextra dummy
scoreboard players set #max will 100
scoreboard players set #dtLim will 75
scoreboard players set #hpLim will 25
scoreboard players set #healCost will 1
scoreboard players set #gainPerDamage will 1
scoreboard players set #quickHealCost will 5
scoreboard players set #spareLim will 0
scoreboard players set #rate will 100
scoreboard players set #min will -65535
scoreboard players operation #quickhealLim will = #spareLim will
scoreboard players operation #quickhealLim will += #quickHealCost will
#fightstate
scoreboard objectives add unloadtime dummy "UNLOADTIME"
scoreboard objectives add unloadtime_2nd dummy "UNLOADTIME BUT COMPLICATED"
scoreboard objectives add unloadtime_3rd dummy "UNLOADTIME BUT EVEN MORE COMPLICATED"
scoreboard objectives add unloadtime_4th dummy "UNLOADTIME BUT EVEN EVEN MORE COMPLICATED HOLY SQUID"
scoreboard objectives add last_damaged dummy "LAST DAMAGED"
scoreboard objectives add last_damage dummy "LAST DAMAGE"
scoreboard objectives add last_use dummy "LAST USE"
scoreboard objectives add last_infight dummy "LAST INFIGHT"
scoreboard players set #out last_infight 100
scoreboard players set #glow last_infight 1200
scoreboard objectives add ptsd_elim dummy
scoreboard objectives add ptsd_death dummy
scoreboard objectives add ptsd_assist dummy
scoreboard objectives add ptsd_dtuse dummy
scoreboard objectives add ptsd_dmg dummy
scoreboard objectives add ptsd_tdmg dummy
scoreboard objectives add ptsd_wdmg dummy
scoreboard objectives add ptsd_dmged dummy
#mana
scoreboard objectives add mp dummy "MANA"
scoreboard players set #regenSpeed mp 1
scoreboard objectives add mpbase dummy "BASE MANA"
scoreboard objectives add mpmax dummy "MAX MANA"
scoreboard objectives add mpcost dummy "MANA COST"
scoreboard objectives add mpcooldown dummy "MANA COOLDOWN"
scoreboard objectives add mpregen dummy
scoreboard objectives add mpextra dummy
#charge
scoreboard objectives add cd dummy "CD"
scoreboard players set #chargeSpeed cd 1
scoreboard objectives add cddis dummy "CHARGE"
scoreboard players set #rate cddis 100
scoreboard objectives add cdmax dummy "MAX CD"
scoreboard objectives add cdcooldown dummy "CD COOLDOWN"
scoreboard objectives add cdregen dummy
scoreboard objectives add cdextra dummy
#determination
scoreboard objectives add dt dummy "DETERMINATION"
scoreboard players set #gainPerDamage dt 1
scoreboard objectives add dtmax dummy "MAX DETERMINATION"
scoreboard objectives add dthalf dummy "HALF OF THE MAX DETERMINATION"
scoreboard objectives add dtbase dummy "BASE DETERMINATION"
scoreboard objectives add dtmath dummy "DETERMINATION MATH"
scoreboard players set -temp dtmath 0

#moving
scoreboard objectives add move dummy
scoreboard objectives add store dummy
scoreboard objectives add speed dummy
scoreboard objectives add x_pos dummy
scoreboard objectives add y_pos dummy
scoreboard objectives add z_pos dummy
scoreboard objectives add x_tar dummy
scoreboard objectives add y_tar dummy
scoreboard objectives add z_tar dummy
scoreboard objectives add x_lastground dummy
scoreboard objectives add y_lastground dummy
scoreboard objectives add z_lastground dummy
scoreboard objectives add distance dummy
scoreboard objectives add momentum dummy

scoreboard players set #sensitivity momentum 50
scoreboard players set #checkInterval momentum 2
scoreboard players set #checkPerSec momentum 20
scoreboard players operation #checkPerSec momentum /= #checkInterval momentum

scoreboard objectives add shift minecraft.custom:minecraft.sneak_time
scoreboard objectives add hpdisplay dummy

#visual
scoreboard objectives add title_timer dummy
scoreboard objectives add filter_l dummy
scoreboard objectives add filter_r dummy

#moveLoop
scoreboard objectives add plt1 dummy "PLAYER LOOP TIME 1A"
scoreboard objectives add plt1b dummy "PLAYER LOOP TIME 1B"
scoreboard objectives add plt1c dummy "PLAYER LOOP TIME 1C"
scoreboard objectives add plt1d dummy "PLAYER LOOP TIME 1D"
scoreboard objectives add plt2 dummy "PLAYER LOOP TIME 2A"
scoreboard objectives add plt2b dummy "PLAYER LOOP TIME 2B"
scoreboard objectives add plt2c dummy "PLAYER LOOP TIME 2C"
scoreboard objectives add plt3 dummy "PLAYER LOOP TIME 3A"
scoreboard objectives add plt3b dummy "PLAYER LOOP TIME 3B"
scoreboard objectives add plt4 dummy "PLAYER LOOP TIME 4A"
scoreboard objectives add plt4b dummy "PLAYER LOOP TIME 4B"
scoreboard players set #gbDistance plt3 128
scoreboard objectives add passive_timer dummy "PASSIVE TIMER"
scoreboard objectives add melt_speed dummy "MELT SPEED"
#effect
scoreboard objectives add flirt_timer dummy "FLIRT DEBUFF"
scoreboard objectives add flirt_timer2 dummy "FLIRT TIMER"
scoreboard objectives add sadness_timer dummy "SADNESS TIMER"
scoreboard objectives add sadness_level dummy "SADNESS DEBUFF"
scoreboard objectives add stun_timer dummy "STUN DEBUFF"
scoreboard objectives add blind_timer dummy "BLIND DEBUFF"
scoreboard objectives add slow_timer dummy "SLOW DEBUFF"
scoreboard objectives add nojump_timer dummy "NOJUMP DEBUFF"
scoreboard objectives add vined_timer dummy "VINED DEBUFF"
scoreboard objectives add nomercy_timer dummy "NOMERCY DEBUFF"
scoreboard objectives add hyper_timer dummy "HYPER BUFF"
scoreboard objectives add disco_timer dummy "DISCO BUFF"
scoreboard objectives add king_timer dummy "KING BUFF"
scoreboard objectives add immune_timer dummy "IMMUNE BUFF"
scoreboard objectives add soul_timer dummy "SOUL BUFF"
scoreboard objectives add untarget_timer dummy "UNTARGETABLE"
scoreboard objectives add shocked_timer dummy "SHOCK DEBUFF"
scoreboard objectives add flame_timer dummy "FLAME DEBUFF"
scoreboard objectives add inject_timer dummy "INJECTED BUFF"
scoreboard objectives add genocide_timer dummy "GENOCIDE TIMER"
scoreboard objectives add genocide_level dummy "GENOCIDE BUFF"
scoreboard objectives add kindness_timer dummy "KINDNESS TIMER"
scoreboard objectives add encourage_timer dummy "ENCOURAGE TIMER"
scoreboard objectives add launch_timer dummy "LAUNCH TIMER"
scoreboard objectives add nofall_timer dummy "NOFALL TIMER"
scoreboard objectives add novoid_timer dummy "NOVOID TIMER"
#prj
scoreboard objectives add lifetime dummy
scoreboard objectives add life dummy
scoreboard objectives add life2 dummy
scoreboard objectives add range dummy
scoreboard objectives add maxrange dummy
scoreboard objectives add gravity dummy
scoreboard objectives add width dummy "W"
scoreboard objectives add height dummy "H"
scoreboard objectives add offset dummy
#minecraft
scoreboard objectives add rc minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add thrown_coas minecraft.dropped:minecraft.carrot_on_a_stick
scoreboard objectives add thrown_comp minecraft.dropped:minecraft.compass
scoreboard objectives add rejoin minecraft.custom:minecraft.leave_game
#const
scoreboard objectives add const dummy "CONSTANTS"
scoreboard players set -1 const -1
scoreboard players set 0 const 0
scoreboard players set 1 const 1
scoreboard players set 2 const 2
scoreboard players set 3 const 3
scoreboard players set 4 const 4
scoreboard players set 5 const 5
scoreboard players set 6 const 6
scoreboard players set 7 const 7
scoreboard players set 8 const 8
scoreboard players set 9 const 9
scoreboard players set 10 const 10
scoreboard players set 11 const 11
scoreboard players set 12 const 12
scoreboard players set 13 const 13
scoreboard players set 14 const 14
scoreboard players set 15 const 15
scoreboard players set 16 const 16
scoreboard players set 17 const 17
scoreboard players set 18 const 18
scoreboard players set 19 const 19
scoreboard players set 20 const 20
scoreboard players set 21 const 21
scoreboard players set 22 const 22
scoreboard players set 23 const 23
scoreboard players set 24 const 24
scoreboard players set 25 const 25
scoreboard players set 26 const 26
scoreboard players set 27 const 27
scoreboard players set 28 const 28
scoreboard players set 29 const 29
scoreboard players set 30 const 30
scoreboard players set 31 const 31
scoreboard players set 32 const 32
scoreboard players set 33 const 33
scoreboard players set 34 const 34
scoreboard players set 35 const 35
scoreboard players set 36 const 36
scoreboard players set 37 const 37
scoreboard players set 38 const 38
scoreboard players set 39 const 39
scoreboard players set 40 const 40
scoreboard players set 50 const 50
scoreboard players set 60 const 60
scoreboard players set 70 const 70
scoreboard players set 80 const 80
scoreboard players set 90 const 90
scoreboard players set 100 const 100
scoreboard players set 1000 const 1000
scoreboard players set 10000 const 10000
scoreboard players set 840 const 840

#scoreboard
scoreboard objectives add lv dummy "LOVE"
scoreboard objectives add lvd dummy
scoreboard objectives add tpd dummy
#
scoreboard objectives add dummy dummy
scoreboard objectives add dummy_best dummy
scoreboard objectives add info dummy
scoreboard objectives add ray_distance dummy
scoreboard objectives add map dummy
scoreboard objectives add tutorial dummy
scoreboard objectives add talk_flowey dummy
scoreboard objectives add credit dummy
scoreboard objectives add credit_hit dummy
scoreboard objectives add soul dummy
#
scoreboard objectives add tut_s dummy
scoreboard objectives add tut_st dummy
scoreboard objectives add tut_s1 dummy
scoreboard objectives add tut_s2 dummy
scoreboard objectives add tut_s3 dummy
scoreboard objectives add tut_s4 dummy
scoreboard objectives add tut_s5 dummy
scoreboard objectives add tut_s6 dummy
scoreboard objectives add tut_s7 dummy
scoreboard objectives add tut_s8 dummy
scoreboard objectives add tut_s9 dummy
scoreboard objectives add tut_s10 dummy
scoreboard objectives add tut_sr dummy "small room"
#

#default value
scoreboard players add @a hp 0
scoreboard players add @a tutorial 0
scoreboard players add @a credit 0
scoreboard players add @a hpmax 0
scoreboard players add @a mp 0
scoreboard players add @a hpmax 0
scoreboard players add @a cd 0
scoreboard players add @a cddis 0
scoreboard players add @a cdmax 0
scoreboard players add @a dt 0
scoreboard players add @a dtmax 0
scoreboard players add @a lv 0
scoreboard players add @a lvd 0
scoreboard players add @a tpd 0
scoreboard players add @a atk 0
scoreboard players add @a def 0
scoreboard players add @a will 0
# scoreboard players add @a last_fight 0
scoreboard players add @a unloadtime 0
scoreboard players add @a tobylock 0
#
scoreboard players set @a[scores={hpmax=0}] hpmax 20
scoreboard players set @a[scores={mpmax=0}] mpmax 300
scoreboard players set @a[scores={cdmax=0}] cdmax 100
execute as @a run scoreboard players operation @s[scores={hp=0}] hp = @s hpmax
execute as @a run scoreboard players operation @s[scores={mp=0}] mp = @s mpmax
execute as @a run scoreboard players operation @s[scores={cd=0}] cd = @s cdmax
scoreboard players set @a[scores={dtmax=0}] dtmax 20
# scoreboard players set @a[scores={last_fight=0}] last_fight 0
scoreboard players set @a[scores={unloadtime=0}] unloadtime 0
scoreboard players set @a[scores={lv=0}] lv 1
scoreboard players set @a[scores={will=0}] will 100
scoreboard players set @a[scores={cddis=0}] cddis 100
scoreboard players set @a[scores={atk=0}] atk 100
scoreboard players set @a[scores={def=0}] def 100
execute unless score -LowPos y_pos matches -1000.. run scoreboard players set -LowPos y_pos 0
scoreboard players set @a move 0
scoreboard players set aid aid 0
scoreboard players set 10 life 10
scoreboard players set 100 atk 100
scoreboard players set 100 def 100
scoreboard players set 100 hp 100
scoreboard players set 100 cddis 100
scoreboard players set grow lv 10
scoreboard players set dis lv 4
scoreboard players set drate will 100
scoreboard players set krate will 5
scoreboard players add tut_state info 0
scoreboard players add credit_state info 0
scoreboard players add -InGame game 0
scoreboard players add allow_join info 0
scoreboard players add allow_tut info 0
scoreboard players add allow_cre info 0
scoreboard players add allow_roomF info 0
scoreboard players add allow_roomD info 0
scoreboard players add allow_roomM info 0
scoreboard players add allow_roomP info 0
scoreboard players add admin_mode info 0
scoreboard players add hq_parkour info 0
scoreboard players add PlayerLimit info 0
scoreboard players add TeamLimit info 0
scoreboard players add TeamCount info 0
scoreboard players add -use map 0
scoreboard players add -total gamesfinished 0
scoreboard objectives setdisplay sidebar

scoreboard players set #rate will 100
scoreboard players operation #max will = hpmaxRate gamerule
scoreboard players operation #max will = hpmaxRate gamerule
scoreboard players set #dtLim will 75
scoreboard players operation #dtLim will *= #max will
scoreboard players operation #dtLim will /= #rate will
scoreboard players set #healCost will 1
scoreboard players set #gainPerDamage will 1
scoreboard players set #quickHealCost will 5
scoreboard players set #spareLim will 0
scoreboard players set #min will -65535
scoreboard players operation #quickhealLim will = #spareLim will
scoreboard players operation #quickhealLim will += #quickHealCost will

#gamerules
#EXTRA
scoreboard players set swapCharacter gamerule 1
scoreboard players set fallDamage gamerule 0
scoreboard players set hpDisplay gamerule 1
scoreboard players set teamUniform gamerule 1
scoreboard players set dtRule gamerule 1
#SPECIAL
scoreboard players set setSoul gamerule 0
scoreboard players set voidProtection gamerule 0
#GAMEMODE
scoreboard players set A_Respawn gamerulemode 0
scoreboard players set A_Border gamerulemode 0
scoreboard players set A_Bonus gamerulemode 1
#
scoreboard players set B_Absorb gamerulemode 0
scoreboard players set B_Bonus gamerulemode 1
scoreboard players set B_Goal gamerulemode 0
#
scoreboard players set C_xxxxx gamerulemode 0
scoreboard players set C_Bonus gamerulemode 1
scoreboard players set C_Goal gamerulemode 0
#
scoreboard players set D_Border gamerulemode 1
scoreboard players set D_Bonus gamerulemode 1
scoreboard players set D_Goal gamerulemode 2
#
scoreboard players set E_Spawn gamerulemode 1
scoreboard players set E_Bonus gamerulemode 1
scoreboard players set E_Goal gamerulemode 0
#
scoreboard players set F_Dog gamerulemode 1
scoreboard players set F_Bonus gamerulemode 1
scoreboard players set F_Goal gamerulemode 3
#
scoreboard players set G_xxxxx gamerulemode 0
scoreboard players set G_Bonus gamerulemode 1
scoreboard players set G_SwitchSide gamerulemode 0

#default visibility
scoreboard objectives setdisplay list gamesfinished
scoreboard objectives setdisplay below_name


scoreboard players set -pap_dtmax info 2