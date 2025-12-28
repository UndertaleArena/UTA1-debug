#By Nebulirion

#say created new HP BAR!

#check on this
execute align xyz run summon minecraft:armor_stand ~ ~ ~ {Tags:[move,siege_rock,rock_part,spc],ArmorItems:[{},{},{},{id:"minecraft:infested_cobblestone",count:1b}],NoGravity:1b,Invulnerable:1b,Invisible:1b,DisabledSlots:3620671}
execute align xyz run summon boat ~ ~0.59 ~0.3125 {Type:"jungle",Invulnerable:1b,Tags:[hitboatF,rock_part,move],NoGravity:1b,Passengers:[{id:"husk",Silent:1b,NoAI:1b,IsBaby:1b,Team:"nocol",Tags:[rock_part,move],NoGravity:1b,Invulnerable:1b},{id:"husk",Silent:1b,NoAI:1b,IsBaby:1b,Team:"nocol",Tags:[rock_part,move],NoGravity:1b,Invulnerable:1b}]}
team join nocol @e[type=boat,tag=rock_part]