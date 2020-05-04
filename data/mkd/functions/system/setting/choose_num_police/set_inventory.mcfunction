###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Set inventory
execute if score #Keidoro PoliceManual matches 1 run replaceitem entity @p[tag=Host] inventory.4 minecraft:glowstone{display:{Name:"\"\\u00A7r警察を手動で指定\""},HideFlags:39} 1
execute if score #Keidoro PoliceManual matches 0 run replaceitem entity @p[tag=Host] inventory.4 minecraft:redstone_lamp{display:{Name:"\"\\u00A7r警察をランダム指定\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.10 minecraft:white_banner{display:{Name:"\"\\u00A7r-10\""},BlockEntityTag:{Patterns:[{Pattern:hh,Color:14},{Pattern:ts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39} 10
replaceitem entity @p[tag=Host] inventory.11 minecraft:white_banner{display:{Name:"\"\\u00A7r-1\""},BlockEntityTag:{Patterns:[{Pattern:hh,Color:14},{Pattern:ts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:lead{display:{Name:"\"\\u00A7r警察人数\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:white_banner{display:{Name:"\"\\u00A7r+1\""},BlockEntityTag:{Patterns:[{Pattern:sc,Color:14},{Pattern:bo,Color:0},{Pattern:bs,Color:0},{Pattern:ts,Color:0}]},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.16 minecraft:white_banner{display:{Name:"\"\\u00A7r+10\""},BlockEntityTag:{Patterns:[{Pattern:sc,Color:14},{Pattern:bo,Color:0},{Pattern:bs,Color:0},{Pattern:ts,Color:0}]},HideFlags:39} 10
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39} 1

## Give lead for number of police
scoreboard players operation #Keidoro NumPoliceTmp = #Keidoro NumPolice
execute if score #Keidoro NumPoliceTmp matches 2.. run function mkd:system/setting/choose_num_police/give_lead
scoreboard players set #Keidoro NumPoliceTmp 0