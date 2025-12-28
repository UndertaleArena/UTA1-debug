#By Nebulirion (They like drinking coke)

# Reset Loads
forceload remove all
# Reloading worldspawn for stuffs works
forceload add 255 255

# Check if ram data
execute if score ram_size store matches 1.. positioned 256 0 -256 run function ut:move/delete/ram
execute if score -use map matches 2 if score #preGame game matches 1 run forceload add 2000 730