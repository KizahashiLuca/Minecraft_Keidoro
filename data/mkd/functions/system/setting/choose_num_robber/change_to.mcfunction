###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Clear inventory
clear @p[tag=Host]

## Set inventory
function mkd:system/setting/choose_num_robber/set_inventory

## Set scoreboard
scoreboard players operation #Keidoro NumRobberMax = #Keidoro NumPlayer
scoreboard players operation #Keidoro NumRobberMax -= #Keidoro NumPolice
scoreboard players set @p[tag=Host] ThrowItem 0
scoreboard players set @p[tag=Host] Select19 0
scoreboard players set @p[tag=Host] Select20 0
scoreboard players set @p[tag=Host] Select22 0
scoreboard players set @p[tag=Host] Select24 0
scoreboard players set @p[tag=Host] Select25 0
scoreboard players set @p[tag=Host] Select28 0
scoreboard players set @p[tag=Host] Select34 0

## Change phase
scoreboard players set #Keidoro Phase 93