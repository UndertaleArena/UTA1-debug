# Origin by Nebulirion, edited by SY91419

## Throw in player's UUID to get the direct Storage data
data modify storage utstats:main LoadedPlayer set value {}
$execute store result score -existData store run data modify storage utstats:main LoadedPlayer set from storage utstats:main Data[{UUID:$(UUID)}]