###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Detect prison number
execute if score @p[tag=Host] Select20 matches 1 unless entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=1..2}] run scoreboard players set #Keidoro PrisonNumber 1
execute if score @p[tag=Host] Select21 matches 1 unless entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=1..2}] run scoreboard players set #Keidoro PrisonNumber 2
execute if score @p[tag=Host] Select22 matches 1 unless entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=1..2}] run scoreboard players set #Keidoro PrisonNumber 3
execute if score @p[tag=Host] Select23 matches 1 unless entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=1..2}] run scoreboard players set #Keidoro PrisonNumber 4
execute if score @p[tag=Host] Select24 matches 1 unless entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=1..2}] run scoreboard players set #Keidoro PrisonNumber 5

## Remove prison
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3}] if score @s PrisonNumber = #Keidoro PrisonNumber run scoreboard players remove #Keidoro SetNumPrison 1
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3}] if score @s PrisonNumber = #Keidoro PrisonNumber at @s run function mkd:system/setting/choose_where_prison/area_load
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3}] if score @s PrisonNumber = #Keidoro PrisonNumber run kill @s

## Set scoreboard
function mkd:system/setting/choose_where_prison/change_to