###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Clear inventory
clear @p[tag=Host]
kill @e[type=minecraft:item]

## Set inventory
function mkd:system/setting/choose_where_prison/set_inventory

## Set scoreboard
scoreboard players set @p[tag=Host] ThrowItem 0
scoreboard players set @p[tag=Host] Select02 0
scoreboard players set @p[tag=Host] Select04 0
scoreboard players set @p[tag=Host] Select06 0
scoreboard players set @p[tag=Host] Select11 0
scoreboard players set @p[tag=Host] Select12 0
scoreboard players set @p[tag=Host] Select13 0
scoreboard players set @p[tag=Host] Select14 0
scoreboard players set @p[tag=Host] Select15 0
scoreboard players set @p[tag=Host] Select20 0
scoreboard players set @p[tag=Host] Select21 0
scoreboard players set @p[tag=Host] Select22 0
scoreboard players set @p[tag=Host] Select23 0
scoreboard players set @p[tag=Host] Select24 0
scoreboard players set @p[tag=Host] Select28 0
scoreboard players set @p[tag=Host] Select34 0
scoreboard players set @p[tag=Host] PrisonStick 0

## Change phase
scoreboard players set #Keidoro Phase 98