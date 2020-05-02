###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Plus 1
scoreboard players add #Keidoro NumPolice 1
execute if score #Keidoro NumPolice > #Keidoro NumPoliceMax run scoreboard players operation #Keidoro NumPolice = #Keidoro NumPoliceMax
function mkd:system/setting/choose_num_police/change_to