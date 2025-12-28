#By Neb but it's actually SY and he's messageing Ds??? wtf is happening

setblock 284 146 1286 air
setblock 280 146 1286 air
setblock 277 146 1283 air
setblock 273 145 1269 air
setblock 279 144 1268 air
setblock 277 146 1277 air
setblock 284 146 1274 air
setblock 263 145 1292 air
setblock 263 144 1268 air
setblock 280 142 1288 air

setblock 274 141 1291 copper_block
setblock 273 141 1291 copper_block

fill 252 144 1290 252 142 1293 air

setblock 279 149 1276 minecraft:purpur_block
setblock 284 147 1280 minecraft:purpur_block
setblock 279 149 1284 minecraft:purpur_block
setblock 272 144 1278 minecraft:purpur_block
setblock 274 144 1280 minecraft:purpur_block
setblock 272 144 1282 minecraft:purpur_block

setblock 285 141 1268 minecraft:cobblestone
setblock 285 141 1269 minecraft:cobblestone

fill 282 148 1291 285 145 1291 minecraft:purple_terracotta
fill 284 142 1273 281 146 1273 minecraft:purple_terracotta

fill 282 144 1265 282 141 1263 minecraft:purple_terracotta

setblock 251 141 1269 minecraft:cobblestone
setblock 251 141 1271 minecraft:cobblestone

setblock 270 144 1280 minecraft:purpur_block
setblock 252 149 1280 minecraft:purpur_block
setblock 256 149 1285 minecraft:purpur_block
setblock 260 149 1286 minecraft:purpur_block
setblock 263 149 1286 minecraft:purpur_block
setblock 267 149 1286 minecraft:purpur_block
setblock 269 149 1283 minecraft:purpur_block
setblock 270 149 1280 minecraft:purpur_block
setblock 269 149 1277 minecraft:purpur_block
setblock 267 149 1274 minecraft:purpur_block
setblock 263 149 1274 minecraft:purpur_block
setblock 260 149 1274 minecraft:purpur_block
setblock 256 149 1275 minecraft:purpur_block

setblock 270 138 1276 minecraft:purpur_block
setblock 266 138 1273 minecraft:purpur_block
setblock 260 138 1273 minecraft:purpur_block
setblock 255 138 1274 minecraft:purpur_block
setblock 251 138 1278 minecraft:purpur_block
setblock 251 138 1282 minecraft:purpur_block
setblock 255 138 1286 minecraft:purpur_block
setblock 260 138 1287 minecraft:purpur_block
setblock 270 138 1284 minecraft:purpur_block
setblock 266 138 1287 minecraft:purpur_block

setblock 280 141 1289 minecraft:polished_blackstone_bricks

setblock 278 143 1280 minecraft:light[level=7,waterlogged=false]
setblock 278 142 1280 minecraft:lever[face=floor,facing=north,powered=false]
setblock 278 141 1280 minecraft:command_block[conditional=false,facing=up]{Command:"function ut:lobby/staff/load",CustomName:'{"text":"@"}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:0b,conditionMet:0b,powered:0b}

setblock 268 143 1297 air

setblock 258 139 1268 air

#========================================
#notes:
#middle point(pre-set point)
#execute at @e[tag=lobby_center] run 
#current(1.2g 272.5 153 1280.5)
#========================================

#========================================
#reset, total 23 entities
kill @e[tag=staff]
#========================================

#========================================
#blocks
#========================================

#pots
#==========
##old tl thing
#setblock 292 141 1291 potted_dandelion
##bookshelf (278 143 1297)
execute at @e[tag=lobby_center] run setblock ~6 ~-10 ~17 flower_pot
##vip pot (282 136 1268)
execute at @e[tag=lobby_center] run setblock ~10 ~-17 ~-12 flower_pot
##room pot (247 142 1285)
execute at @e[tag=lobby_center] run setblock ~-25 ~-11 ~5 potted_dead_bush
#==========

#switches
#==========
##vip access (285 144 1265)
execute at @e[tag=lobby_center] run setblock ~13 ~-9 ~-15 red_wool
##dummy system (285 144 1263)
execute at @e[tag=lobby_center] run setblock ~13 ~-9 ~-17 red_wool
##vine door (285 135 1279)
execute at @e[tag=lobby_center] run setblock ~13 ~-18 ~-1 red_wool
##locket (275 152 1270)
execute at @e[tag=lobby_center] run setblock ~3 ~-1 ~-10 red_wool

##Cre-Hit (254 142 1293)
execute at @e[tag=lobby_center] run setblock ~-18 ~-11 ~13 air
##Fast (254 142 1290)
execute at @e[tag=lobby_center] run setblock ~-18 ~-11 ~10 air
##under (284 140 1291)
execute at @e[tag=lobby_center] run setblock ~12 ~-13 ~11 air
##dance (258 141 1268)
execute at @e[tag=lobby_center] run setblock ~-14 ~-12 ~-12 air
##reset (276 135 1297)
execute at @e[tag=lobby_center] run setblock ~4 ~-18 ~17 coal_block
#==========

setblock 251 142 1268 air
setblock 251 142 1270 air
setblock 251 142 1272 air
setblock 251 142 1274 air

#==========
#fill unl
#execute at @e[tag=lobby_center] run fill ~2 ~-18 ~11 ~6 ~-15 ~15 coal_block
#clean if
##empty
#execute at @e[tag=lobby_center] run fill ~2 ~-18 ~12 ~6 ~-15 ~15 air
##single
#execute at @e[tag=lobby_center] run fill ~4 ~-18 ~11 ~4 ~-15 ~11 air
##ceiling
#execute at @e[tag=lobby_center] run fill ~2 ~-15 ~11 ~6 ~-15 ~15 light replace air
#==========

#extra message
#current(1.2g 272.5 153 1280.5)
#==========
execute at @e[tag=lobby_center] run data modify block ~-24 ~-11 ~8 front_text.messages[1] set value '{"text":""}'
#==========