###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Plus 1
scoreboard players add #Keidoro NumRobber 1
execute if score #Keidoro NumRobber > #Keidoro NumRobberMax run scoreboard players operation #Keidoro NumRobber = #Keidoro NumRobberMax
function mkd:system/setting/choose_num_robber/change_to