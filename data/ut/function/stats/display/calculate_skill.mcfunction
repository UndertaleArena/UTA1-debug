#By Nebulirion

scoreboard players operation -GameTimeSmall stat = -GameTime stat
scoreboard players operation -GameTimeSmall stat /= 1000 const
scoreboard players set -SkillLevel stat 1000
scoreboard players operation -SkillLevel stat *= -CharacterTotal stat
scoreboard players operation -SkillLevel stat /= -GameTimeSmall stat
scoreboard players remove -SkillLevel stat 10000
execute unless score -SkillLevel stat matches 1.. run scoreboard players set -SkillLevel stat 0

scoreboard players operation @s skill = -SkillLevel stat
#execute unless score -GameTimeSmall stat matches 11.. run scoreboard players operation @s skill = -SkillLevel stat