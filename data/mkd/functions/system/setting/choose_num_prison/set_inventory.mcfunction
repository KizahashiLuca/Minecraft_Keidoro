###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Set inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:iron_door{display:{Name:"\"\\u00A7r1箇所\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:iron_door{display:{Name:"\"\\u00A7r2箇所\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:iron_door{display:{Name:"\"\\u00A7r3箇所\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:iron_door{display:{Name:"\"\\u00A7r4箇所\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:iron_door{display:{Name:"\"\\u00A7r5箇所\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39} 1

## Set nether_star above selected num prison
execute if score #Keidoro NumPrison matches 1 run replaceitem entity @p[tag=Host] inventory.2 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1
execute if score #Keidoro NumPrison matches 2 run replaceitem entity @p[tag=Host] inventory.3 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1
execute if score #Keidoro NumPrison matches 3 run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1
execute if score #Keidoro NumPrison matches 4 run replaceitem entity @p[tag=Host] inventory.5 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1
execute if score #Keidoro NumPrison matches 5 run replaceitem entity @p[tag=Host] inventory.6 minecraft:nether_star{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39} 1