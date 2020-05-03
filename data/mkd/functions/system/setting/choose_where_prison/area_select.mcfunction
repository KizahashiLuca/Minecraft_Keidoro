###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Detect prison number
scoreboard players set #Keidoro PrisonNumber 0
function mkd:system/setting/choose_where_prison/detect_prison_number

## Save area
execute unless entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=1..2}] as @p[tag=Host] at @s run function mkd:system/setting/choose_where_prison/area_save

## Load prison
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=2}] at @s run function mkd:system/setting/choose_where_prison/prison_load

## Detect position
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=2}] run function mkd:system/setting/choose_where_prison/area_message

## Increment
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=1..2}] if score @s PrisonNumber = #Keidoro PrisonNumber run scoreboard players add @s SetPrison 1
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3}] if score @s PrisonNumber = #Keidoro PrisonNumber run scoreboard players add #Keidoro SetNumPrison 1
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3}] if score @s PrisonNumber = #Keidoro PrisonNumber run scoreboard players add #Keidoro PrisonNumber 1
function mkd:system/setting/choose_where_prison/change_to