# Original by FocalSalt, edited by SY91419

## TYPE 1: Fetch Passed Time
# Get Current Passed Time
scoreboard players operation #Tick siegegame = -RoundTimer gamescore

## TYPE 2: Remain Time
# Get Current Remain Time
# scoreboard players operation #Tick siegegame = -Timer gamescore
# # Check Bounding and Resolve The Value
# execute if score #Tick siegegame matches 6000.. run scoreboard players set #Tick siegegame 6000
# execute if score #Tick siegegame matches ..0 run scoreboard players set #Tick siegegame 0

# Remain Second Calculate
scoreboard players operation #Second siegegame = #Tick siegegame
scoreboard players operation #Second siegegame /= 20 const
# Remain Minute Calculate
scoreboard players operation #Minute siegegame = #Second siegegame
scoreboard players operation #Minute siegegame /= 60 const
# Second to only Second
scoreboard players operation #Second siegegame %= 60 const