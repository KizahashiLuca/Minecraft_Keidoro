###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Clear inventory
clear @p[tag=Host]
kill @e[type=minecraft:item]

## Set chat
function mkd:system/setting/choose_whom_police/message01

## Set scoreboard
scoreboard players set @p[tag=Host] ThrowItem 0
scoreboard players set @p[tag=Host] Select04 0

## Change phase
scoreboard players set #Keidoro Phase 97