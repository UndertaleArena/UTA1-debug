# by Nebulirion

# Copying items
item replace entity @s armor.head from entity @a[limit=1,tag=ut.tmp.copy] armor.head
item replace entity @s armor.chest from entity @a[limit=1,tag=ut.tmp.copy] armor.chest
item replace entity @s armor.legs from entity @a[limit=1,tag=ut.tmp.copy] armor.legs
item replace entity @s armor.feet from entity @a[limit=1,tag=ut.tmp.copy] armor.feet
item replace entity @s weapon.mainhand from entity @a[limit=1,tag=ut.tmp.copy] weapon.mainhand

# Lock Slots
data modify entity @s DisabledSlots set value 3620671