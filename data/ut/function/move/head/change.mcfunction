
item replace block 255 0 255 container.0 from entity @s armor.head

data modify block 255 0 255 Items[0].id set value "minecraft:nether_brick"
execute if entity @s[tag=effect_king] run data modify block 255 0 255 Items[0].id set value "minecraft:pufferfish"
execute if entity @s[tag=undying] run data modify block 255 0 255 Items[0].id set value "minecraft:cooked_salmon"
execute if entity @s[tag=counter_dodge] run data modify block 255 0 255 Items[0].id set value "minecraft:tropical_fish"
execute if entity @s[tag=lazer_ex_user] if entity @s[tag=!attack_buffed] run data modify block 255 0 255 Items[0].id set value "minecraft:cooked_cod"
execute if entity @s[tag=lazer_ex_user] if entity @s[tag=attack_buffed] run data modify block 255 0 255 Items[0].id set value "minecraft:enchanted_golden_apple"
execute if entity @s[tag=ghost_user] run data modify block 255 0 255 Items[0].id set value "minecraft:glass"
execute if score @s[tag=undying] chr matches 3 run data modify block 255 0 255 Items[0].components.minecraft:custom_model_data set value 3

item replace entity @s armor.head from block 255 0 255 container.0