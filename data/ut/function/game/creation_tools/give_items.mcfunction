#

#Team Spawn Points
give @s minecraft:armor_stand[minecraft:custom_model_data=5,minecraft:entity_data={ArmorItems:[{},{},{count:1,id:"minecraft:iron_chestplate"},{}],CustomName:'{"text":"Team Spawn Point"}',Invulnerable:1b,NoGravity:1b,Tags:["arena_as","team_spawn"],id:"minecraft:armor_stand"},minecraft:custom_name='{"text":"Team Spawn Point"}']

#Arena Spawn Points
give @s minecraft:armor_stand[minecraft:custom_model_data=1,minecraft:entity_data={ArmorItems:[{},{},{count:1,id:"minecraft:iron_chestplate"},{}],CustomName:'{"text":"Arena Spawn Point"}',Invulnerable:1b,NoGravity:1b,Tags:["arena_as","arena_spawn"],id:"minecraft:armor_stand"},minecraft:custom_name='{"text":"Arena Spawn Point"}']

#Arena Special Point
give @s minecraft:armor_stand[minecraft:custom_model_data=2,minecraft:entity_data={ArmorItems:[{},{},{count:1,id:"minecraft:golden_chestplate"},{}],CustomName:'{"text":"Special Point"}',Invulnerable:1b,NoGravity:1b,Tags:["arena_as","arena_sp"],id:"minecraft:armor_stand"},minecraft:custom_name='{"text":"Special Point"}']

#Arena Low Point
give @s minecraft:armor_stand[minecraft:custom_model_data=3,minecraft:entity_data={ArmorItems:[{},{},{components:{"minecraft:dyed_color":{rgb:0}},count:1,id:"minecraft:leather_chestplate"},{}],CustomName:'{"translate":"cht.vid"}',Invulnerable:1b,NoGravity:1b,Tags:["arena_as","arena_low"],id:"minecraft:armor_stand"},minecraft:custom_name='{"text":"Low Point"}']

#Arena Mid Point
give @s minecraft:armor_stand[minecraft:custom_model_data=4,minecraft:entity_data={ArmorItems:[{},{},{count:1,id:"minecraft:diamond_chestplate"},{}],CustomName:'{"text":"Mid Point"}',Invulnerable:1b,NoGravity:1b,Tags:["arena_as","arena_mid"],id:"minecraft:armor_stand"},minecraft:custom_name='{"text":"Mid Point"}']

#Day Tool
give @s minecraft:command_block[minecraft:custom_model_data=1,minecraft:custom_name='{"text":"Set Day Time"}',minecraft:block_entity_data={Command:"/function ut:game/creation_tools/set_day",auto:1b,id:"minecraft:command_block"}]

give @s minecraft:command_block[minecraft:custom_model_data=2,minecraft:custom_name='{"text":"Set Night Time"}',minecraft:block_entity_data={Command:"/function ut:game/creation_tools/set_night",auto:1b,id:"minecraft:command_block"}]

give @s minecraft:command_block[minecraft:custom_model_data=3,minecraft:custom_name='{"text":"Set Night Vision"}',minecraft:block_entity_data={Command:"/function ut:game/creation_tools/set_nightvision",auto:1b,id:"minecraft:command_block"}]

give @s minecraft:command_block[minecraft:custom_model_data=4,minecraft:custom_name='{"text":"Set No Night Vision"}',minecraft:block_entity_data={Command:"/function ut:game/creation_tools/set_nonightvision",auto:1b,id:"minecraft:command_block"}]



#Capture Point
give @s minecraft:armor_stand[minecraft:custom_model_data=5,minecraft:entity_data={ArmorItems:[{},{},{count:1,id:"minecraft:chainmail_chestplate"},{}],CustomName:'{"text":"Capture Point"}',Invulnerable:1b,NoGravity:1b,Tags:["arena_as","arena_point"],id:"minecraft:armor_stand"},minecraft:custom_name='{"text":"Capture Point"}']

#Royal Guards
give @s minecraft:armor_stand[minecraft:entity_data={ArmorItems:[{count:1,id:"minecraft:iron_boots"},{count:1,id:"minecraft:iron_leggings"},{count:1,id:"minecraft:iron_chestplate"},{count:1,id:"minecraft:iron_helmet"}],CustomName:'{"text":"Royal Guard"}',id:"minecraft:armor_stand"},minecraft:custom_name='{"text":"Royal Guard"}'] 4