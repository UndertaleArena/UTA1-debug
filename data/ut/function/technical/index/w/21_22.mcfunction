#By Neb, created at 2022-01-02 04:06:34.603305

execute if score -Index tech matches 21 run data modify storage ut:tech TargetList[20] set from storage ut:tech LoadedEntry
execute if score -Index tech matches 22 run data modify storage ut:tech TargetList[21] set from storage ut:tech LoadedEntry