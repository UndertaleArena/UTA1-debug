#By Nebulirion

scoreboard players add @s st_cdeathc 1
scoreboard players add @a[tag=killer_p,tag=!deader] st_ckillc 1
scoreboard players add @a[tag=spare_p,tag=!deader] st_csparec 1
scoreboard players add @a[tag=cause_p,tag=!deader] st_celimc 1
execute if entity @s[tag=void] run scoreboard players add AK st_killc 1

#if self kill: remove 1 score (elim mode)
execute as @a[tag=cause_p,tag=deader] if score -GameMode game matches 3 run function ut:game/kill/removescore