###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Set inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:clock{display:{Name:"\"\\u00A7r30秒\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:clock{display:{Name:"\"\\u00A7r60秒\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:clock{display:{Name:"\"\\u00A7r90秒\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:clock{display:{Name:"\"\\u00A7r120秒\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:clock{display:{Name:"\"\\u00A7r180秒\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39} 1

## Set nether_star above selected time getaway
execute if score #Keidoro TimeGetaway matches 30 run replaceitem entity @p[tag=Host] inventory.2 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1
execute if score #Keidoro TimeGetaway matches 60 run replaceitem entity @p[tag=Host] inventory.3 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1
execute if score #Keidoro TimeGetaway matches 90 run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1
execute if score #Keidoro TimeGetaway matches 120 run replaceitem entity @p[tag=Host] inventory.5 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1
execute if score #Keidoro TimeGetaway matches 180 run replaceitem entity @p[tag=Host] inventory.6 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1