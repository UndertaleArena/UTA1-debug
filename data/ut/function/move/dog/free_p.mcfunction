#By Nebulirion

execute if entity @e[tag=annoying_dog,tag=captured,tag=dog_bomb] run playsound block.lava.extinguish player @a ~ ~ ~ .78 1.8
execute if entity @e[tag=annoying_dog,tag=captured,tag=dog_bomb] run tellraw @s[tag=!teleporter,tag=!deader] [{"translate":"pfx.info"},{"translate":"cht.gmd.2b"}]
execute if entity @e[tag=annoying_dog,tag=captured,tag=dog_bomb] run tellraw @s[tag=teleporter] [{"translate":"pfx.info"},{"translate":"cht.gmd.3b"}]
execute if entity @e[tag=annoying_dog,tag=captured,tag=!dog_bomb] run tellraw @s[tag=!teleporter,tag=!deader] [{"translate":"pfx.info"},{"translate":"cht.gmd.2"}]
execute if entity @e[tag=annoying_dog,tag=captured,tag=!dog_bomb] run tellraw @s[tag=teleporter] [{"translate":"pfx.info"},{"translate":"cht.gmd.3"}]

scoreboard players set @s dog_timer 30

scoreboard players operation -this pid = @s pid
execute as @e[tag=annoying_dog,tag=captured] if score @s pid = -this pid run function ut:move/dog/free

tag @s remove dog_owner

