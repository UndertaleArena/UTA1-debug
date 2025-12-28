#By Neb, created at 2022-01-02 04:04:03.955531

execute if score -Index tech matches 1 run data modify storage ut:tech LoadedEntry set from storage ut:tech TargetList[0]
execute if score -Index tech matches 2 run data modify storage ut:tech LoadedEntry set from storage ut:tech TargetList[1]