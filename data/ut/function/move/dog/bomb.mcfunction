#By Nebulirion

playsound entity.dragon_fireball.explode player @a ~ ~ ~ 2 1.2 0.5
playsound entity.firework_rocket.twinkle_far player @a ~ ~ ~ 2 1.2 0.5
particle explosion ~ ~.2 ~ 1 1 1 0 12 force @a[scores={Q=2..}]

summon marker ~ ~ ~ {CustomName:'{"translate":"game.dog.bomb"}',Tags:[atker]}
execute as @a[tag=this_owner] at @s run function ut:move/dog/bomb_owner
kill @e[tag=atker]

function ut:move/dog/free