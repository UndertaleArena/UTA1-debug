#By Neb, created at 2022-01-02 04:06:34.603305

execute if score -Index tech matches 3 run data modify storage ut:tech TargetList[2] set from storage ut:tech LoadedEntry
execute if score -Index tech matches 4 run data modify storage ut:tech TargetList[3] set from storage ut:tech LoadedEntry