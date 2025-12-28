#By Neb, created at 2022-01-02 04:06:34.603305

execute if score -Index tech matches 9 run data modify storage ut:tech TargetList[8] set from storage ut:tech LoadedEntry
execute if score -Index tech matches 10 run data modify storage ut:tech TargetList[9] set from storage ut:tech LoadedEntry