#By Nebulirion

tag @s[tag=!boss] remove no_mc_dmg
execute if entity @s[tag=has_save] run function ut:move/save/stop
execute if entity @s[tag=undying] run function ut:move/undying/stop
execute if entity @s[tag=amalgamate] run function ut:move/injection/target_stop
execute if entity @s[tag=injected] run function ut:move/injection/self_stop
execute if entity @s[tag=real_knife_user] run function ut:move/real_knife/stop
execute if entity @s[tag=in_cupcake] at @s run function ut:move/cupcake/stop_player

tag @s remove cdmax_lock

scoreboard players reset @s plt3
scoreboard players reset @s plt3b

execute if entity @s[tag=effect_finalrush] run function ut:move/effect/finalrush/clear
execute if entity @s[tag=effect_flirt] run function ut:move/effect/infatuated/clear
execute if entity @s[tag=effect_stun] run function ut:move/effect/stunned/clear
execute if entity @s[tag=effect_launch] run function ut:move/effect/launch/clear
execute if entity @s[tag=effect_shocked] run function ut:move/effect/shocked/clear
execute if entity @s[tag=effect_flame] run function ut:move/effect/flame/clear
execute if entity @s[tag=effect_nojump] run function ut:move/effect/nojump/clear
execute if entity @s[tag=effect_webbed] run function ut:move/effect/webbed/clear
execute if entity @s[tag=effect_vined] run function ut:move/effect/vined/clear
execute if entity @s[tag=effect_impaled] run function ut:move/effect/impaled/clear
execute if entity @s[tag=effect_nomercy] run function ut:move/effect/nomercy/clear
execute if entity @s[tag=effect_sadness] run function ut:move/effect/sadness/clear
execute if entity @s[tag=effect_hyper] run function ut:move/effect/hyper/clear
execute if entity @s[tag=effect_disco] run function ut:move/effect/disco/clear
execute if entity @s[tag=effect_king] run function ut:move/effect/king/clear
execute if entity @s[tag=effect_immune] run function ut:move/effect/immunity/clear
execute if entity @s[tag=effect_soul] run function ut:move/effect/soul/clear
execute if entity @s[tag=effect_genocide] run function ut:move/effect/genocide/clear
execute if entity @s[tag=effect_kindness] run function ut:move/effect/kindness/clear
execute if entity @s[tag=effect_infolink] run function ut:move/effect/infolink/clear
execute if entity @s[tag=effect_nofall] run function ut:move/effect/nofall/clear
execute if entity @s[tag=effect_novoid] run function ut:move/effect/novoid/clear
execute if entity @s[tag=effect_untarget] run function ut:move/effect/untargetable/clear

execute if entity @s[tag=passive_flowey_ready] run function ut:move/passive/flowey/clear
execute if entity @s[tag=passive_alphys_ready] run function ut:move/passive/alphys/clear
execute if entity @s[tag=passive_sans] run function ut:move/passive/sans/clear
execute if entity @s[tag=passive_muffet] run function ut:move/passive/muffet/clear

execute if entity @s[tag=attack_buffed] run function ut:move/_buffed/remove_status_full

function ut:move/player_loop/fullstoplite

#say Move Loop -> 0!
scoreboard players set @s move_loop 0