###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Clear inventory
clear @p[tag=Host]

## Set inventory
function mkd:system/setting/choose_num_prison/set_inventory

## Set scoreboard
scoreboard players set @p[tag=Host] ThrowItem 0
scoreboard players set @p[tag=Host] Select20 0
scoreboard players set @p[tag=Host] Select21 0
scoreboard players set @p[tag=Host] Select22 0
scoreboard players set @p[tag=Host] Select23 0
scoreboard players set @p[tag=Host] Select24 0
scoreboard players set @p[tag=Host] Select28 0
scoreboard players set @p[tag=Host] Select34 0
scoreboard players set @p[tag=Host] Selected 0

## Change phase
scoreboard players set #Keidoro Phase 91