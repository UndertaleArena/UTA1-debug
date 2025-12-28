#By Nebulirion

execute if score dog info matches 203 run tellraw @s [{"translate":"pfx.dog"},{"translate":"dok.line216"}]

execute if score dog info matches 204 if score fun info matches ..35 run tellraw @s [{"translate":"pfx.dog"},{"translate":"dok.line219"}]
execute if score dog info matches 204 if score fun info matches 36..63 run tellraw @s [{"translate":"pfx.dog"},{"translate":"dok.line220"}]
execute if score dog info matches 204 if score fun info matches 64.. run tellraw @s [{"translate":"pfx.dog"},{"translate":"dok.line221"}]