#By Neb or someone else bc i have no idea

execute if score swapCharacter gamerule matches 1 run item replace entity @e[tag=set_grsc,limit=1] armor.head with charcoal
execute unless score swapCharacter gamerule matches 1 run item replace entity @e[tag=set_grsc,limit=1] armor.head with coal

execute if score teamUniform gamerule matches 1 run item replace entity @e[tag=set_grtu,limit=1] armor.head with charcoal
execute unless score teamUniform gamerule matches 1 run item replace entity @e[tag=set_grtu,limit=1] armor.head with coal

execute unless score dtRule gamerule matches 1..3 run item replace entity @e[tag=set_grdr,limit=1] armor.head with coal
execute if score dtRule gamerule matches 1 run item replace entity @e[tag=set_grdr,limit=1] armor.head with charcoal
execute if score dtRule gamerule matches 2..3 run item replace entity @e[tag=set_grdr,limit=1] armor.head with charcoal[custom_model_data=1]

execute unless score hpDisplay gamerule matches 1..2 run item replace entity @e[tag=set_grhd,limit=1] armor.head with coal
execute if score hpDisplay gamerule matches 1 run item replace entity @e[tag=set_grhd,limit=1] armor.head with charcoal
execute if score hpDisplay gamerule matches 2 run item replace entity @e[tag=set_grhd,limit=1] armor.head with charcoal[custom_model_data=1]

###A
execute if score A_Border gamerulemode matches 1 run item replace entity @e[tag=set_gra1,limit=1] armor.head with charcoal
execute unless score A_Border gamerulemode matches 1 run item replace entity @e[tag=set_gra1,limit=1] armor.head with coal

execute if score A_Respawn gamerulemode matches 0 run item replace entity @e[tag=set_gra2,limit=1] armor.head with coal
execute unless score A_Respawn gamerulemode matches 0 run item replace entity @e[tag=set_gra2,limit=1] armor.head with charcoal[custom_model_data=1]

execute unless score A_Bonus gamerulemode matches 1..3 run item replace entity @e[tag=set_gra3,limit=1] armor.head with coal
execute if score A_Bonus gamerulemode matches 1 run item replace entity @e[tag=set_gra3,limit=1] armor.head with charcoal
execute if score A_Bonus gamerulemode matches 2..3 run item replace entity @e[tag=set_gra3,limit=1] armor.head with charcoal[custom_model_data=1]

###B
execute if score B_Absorb gamerulemode matches 1 run item replace entity @e[tag=set_grb1,limit=1] armor.head with charcoal
execute unless score B_Absorb gamerulemode matches 1 run item replace entity @e[tag=set_grb1,limit=1] armor.head with coal

execute if score B_Goal gamerulemode matches 0 run item replace entity @e[tag=set_grb2,limit=1] armor.head with charcoal
execute unless score B_Goal gamerulemode matches 0 run item replace entity @e[tag=set_grb2,limit=1] armor.head with charcoal[custom_model_data=1]

execute unless score B_Bonus gamerulemode matches 1 run item replace entity @e[tag=set_grb3,limit=1] armor.head with coal
execute if score B_Bonus gamerulemode matches 1 run item replace entity @e[tag=set_grb3,limit=1] armor.head with charcoal

###C
execute unless score C_Bonus gamerulemode matches 1..3 run item replace entity @e[tag=set_grc3,limit=1] armor.head with coal
execute if score C_Bonus gamerulemode matches 1 run item replace entity @e[tag=set_grc3,limit=1] armor.head with charcoal
execute if score C_Bonus gamerulemode matches 2..3 run item replace entity @e[tag=set_grc3,limit=1] armor.head with charcoal[custom_model_data=1]

execute if score C_Goal gamerulemode matches 0 run item replace entity @e[tag=set_grc2,limit=1] armor.head with charcoal
execute unless score C_Goal gamerulemode matches 0 run item replace entity @e[tag=set_grc2,limit=1] armor.head with charcoal[custom_model_data=1]

###D
execute if score D_Border gamerulemode matches 1 run item replace entity @e[tag=set_grd1,limit=1] armor.head with charcoal
execute unless score D_Border gamerulemode matches 1 run item replace entity @e[tag=set_grd1,limit=1] armor.head with coal

execute unless score D_Bonus gamerulemode matches 1 run item replace entity @e[tag=set_grd3,limit=1] armor.head with coal
execute if score D_Bonus gamerulemode matches 1 run item replace entity @e[tag=set_grd3,limit=1] armor.head with charcoal

execute if score D_Goal gamerulemode matches 2 run item replace entity @e[tag=set_grd2,limit=1] armor.head with charcoal
execute unless score D_Goal gamerulemode matches 2 run item replace entity @e[tag=set_grd2,limit=1] armor.head with charcoal[custom_model_data=1]

###E
execute unless score E_Bonus gamerulemode matches 1 run item replace entity @e[tag=set_gre3,limit=1] armor.head with coal
execute if score E_Bonus gamerulemode matches 1 run item replace entity @e[tag=set_gre3,limit=1] armor.head with charcoal

execute if score E_Goal gamerulemode matches 0 run item replace entity @e[tag=set_gre2,limit=1] armor.head with charcoal
execute unless score E_Goal gamerulemode matches 0 run item replace entity @e[tag=set_gre2,limit=1] armor.head with charcoal[custom_model_data=1]

###F
execute unless score F_Bonus gamerulemode matches 1 run item replace entity @e[tag=set_grf3,limit=1] armor.head with coal
execute if score F_Bonus gamerulemode matches 1 run item replace entity @e[tag=set_grf3,limit=1] armor.head with charcoal

execute if score F_Goal gamerulemode matches 3 run item replace entity @e[tag=set_grf2,limit=1] armor.head with charcoal
execute unless score F_Goal gamerulemode matches 3 run item replace entity @e[tag=set_grf2,limit=1] armor.head with charcoal[custom_model_data=1]

execute if score F_Dog gamerulemode matches 1 run item replace entity @e[tag=set_grf1,limit=1] armor.head with charcoal
execute unless score F_Dog gamerulemode matches 1 run item replace entity @e[tag=set_grf1,limit=1] armor.head with charcoal[custom_model_data=1]

###G
execute unless score G_Bonus gamerulemode matches 1 run item replace entity @e[tag=set_grg3,limit=1] armor.head with coal
execute if score G_Bonus gamerulemode matches 1 run item replace entity @e[tag=set_grg3,limit=1] armor.head with charcoal