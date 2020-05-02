###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Minus 10
scoreboard players remove #Keidoro NumRobber 10
execute if score #Keidoro NumRobber < #Keidoro NumRobberMin run scoreboard players operation #Keidoro NumRobber = #Keidoro NumRobberMin
function mkd:system/setting/choose_num_robber/change_to