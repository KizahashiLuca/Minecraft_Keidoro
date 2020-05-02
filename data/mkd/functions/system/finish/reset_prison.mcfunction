###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Remove prison
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]}] if score @s PrisonNumber = #Keidoro PrisonNumber at @s run function mkd:system/setting/choose_where_prison/area_load

## Decrement
scoreboard players remove #Keidoro PrisonNumber 1
execute unless score #Keidoro PrisonNumber matches 0 run function mkd:system/finish/reset_prison