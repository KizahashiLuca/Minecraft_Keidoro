###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Store Prv
scoreboard players operation #Keidoro PoliceManualPrv = #Keidoro PoliceManual

## Set manual
execute if score #Keidoro PoliceManualPrv matches 0 run scoreboard players set #Keidoro PoliceManual 1

## Set auto
execute if score #Keidoro PoliceManualPrv matches 1 run scoreboard players set #Keidoro PoliceManual 0

function mkd:system/setting/choose_num_police/change_to