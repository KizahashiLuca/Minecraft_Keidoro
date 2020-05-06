###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Give arrow for number of robber
scoreboard players remove #Keidoro NumRobberTmp 1
execute if score #Keidoro NumRobberTmp matches 1.. run give @p[tag=Host] minecraft:arrow{display:{Name:"\"\\u00A7r強盗人数\""},HideFlags:39} 1
execute if score #Keidoro NumRobberTmp matches 2.. run function mkd:system/setting/choose_num_robber/give_arrow