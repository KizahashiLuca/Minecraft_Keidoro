###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Remove police setter
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=3}] at @s run function mkd:system/setting/choose_whom_police/area_load
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=3}] run kill @s

## Set scoreboard
function mkd:system/setting/choose_whom_police/change_to