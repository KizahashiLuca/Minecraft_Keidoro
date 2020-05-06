###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Save area
execute unless entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1..2}] as @p[tag=Host] at @s run function mkd:system/setting/choose_whom_police/area_save

## Load police setter
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=2}] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:red_wool
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=2}] at @s run fill ~-2 ~1 ~-2 ~2 ~3 ~2 minecraft:air

## Detect position
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=2}] run function mkd:system/setting/choose_whom_police/area_message

## Increment
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1..2}] run scoreboard players add @s SetPolice 1
function mkd:system/setting/choose_whom_police/change_to