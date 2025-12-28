#By Neb, created at 2022-01-02 04:06:34.603305

execute if score -Index tech matches 31 run data modify storage ut:tech TargetList[30] set from storage ut:tech LoadedEntry
execute if score -Index tech matches 32 run data modify storage ut:tech TargetList[31] set from storage ut:tech LoadedEntry