###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Minus 1
scoreboard players remove #Keidoro NumPolice 1
execute if score #Keidoro NumPolice < #Keidoro NumPoliceMin run scoreboard players operation #Keidoro NumPolice = #Keidoro NumPoliceMin
function mkd:system/setting/choose_num_police/change_to