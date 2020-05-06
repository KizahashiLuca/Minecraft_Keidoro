###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Set inventory
replaceitem entity @p[tag=Host] inventory.10 minecraft:white_banner{display:{Name:"\"\\u00A7r-10\""},BlockEntityTag:{Patterns:[{Pattern:hh,Color:14},{Pattern:ts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39} 10
replaceitem entity @p[tag=Host] inventory.11 minecraft:white_banner{display:{Name:"\"\\u00A7r-1\""},BlockEntityTag:{Patterns:[{Pattern:hh,Color:14},{Pattern:ts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:arrow{display:{Name:"\"\\u00A7r強盗人数\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:white_banner{display:{Name:"\"\\u00A7r+1\""},BlockEntityTag:{Patterns:[{Pattern:sc,Color:14},{Pattern:bo,Color:0},{Pattern:bs,Color:0},{Pattern:ts,Color:0}]},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.16 minecraft:white_banner{display:{Name:"\"\\u00A7r+10\""},BlockEntityTag:{Patterns:[{Pattern:sc,Color:14},{Pattern:bo,Color:0},{Pattern:bs,Color:0},{Pattern:ts,Color:0}]},HideFlags:39} 10
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39} 1

## Give bow for number of robber
scoreboard players operation #Keidoro NumRobberTmp = #Keidoro NumRobber
execute if score #Keidoro NumRobberTmp matches 2.. run function mkd:system/setting/choose_num_robber/give_arrow
scoreboard players set #Keidoro NumRobberTmp 0