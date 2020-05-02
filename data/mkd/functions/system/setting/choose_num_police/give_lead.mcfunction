###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Give lead for number of police
scoreboard players remove #Keidoro NumPoliceTmp 1
execute if score #Keidoro NumPoliceTmp matches 1.. run give @p[tag=Host] minecraft:lead{display:{Name:"\"\\u00A7r警察人数\""},HideFlags:39} 1
execute if score #Keidoro NumPoliceTmp matches 2.. run function mkd:system/setting/choose_num_police/give_lead