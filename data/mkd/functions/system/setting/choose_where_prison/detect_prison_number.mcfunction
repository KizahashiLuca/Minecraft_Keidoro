###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Detect prison number
scoreboard players add #Keidoro PrisonNumber 1

## Detect area_effect_cloud of same prison number
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3}] if score @s PrisonNumber = #Keidoro PrisonNumber if score #Keidoro PrisonNumber < #Keidoro NumPrison run function mkd:system/setting/choose_where_prison/detect_prison_number