###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Set inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:iron_door{display:{Name:"\"\\u00A7r牢屋個数設定\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:lead{display:{Name:"\"\\u00A7r警察人数設定\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:arrow{display:{Name:"\"\\u00A7r強盗人数設定\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:clock{display:{Name:"\"\\u00A7r逃走時間設定\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:clock{display:{Name:"\"\\u00A7r制限時間設定\""},HideFlags:39} 1

replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7r\\u00A7dゲームキャンセル\""},HideFlags:39} 1
execute if score #Keidoro PoliceManual matches 1 run replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:"\"\\u00A7r\\u00A7b警察手動設定へ\""},HideFlags:39} 1
execute if score #Keidoro PoliceManual matches 0 run replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:"\"\\u00A7r\\u00A7b牢屋箇所設定へ\""},HideFlags:39} 1