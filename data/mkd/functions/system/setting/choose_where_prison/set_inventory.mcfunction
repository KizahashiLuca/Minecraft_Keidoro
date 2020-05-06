###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Set inventory
replaceitem entity @p[tag=Host] hotbar.2 minecraft:carrot_on_a_stick{display:{Name:"\"\\u00A7r牢屋箇所設定棒 - 小\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] hotbar.4 minecraft:carrot_on_a_stick{display:{Name:"\"\\u00A7r牢屋箇所設定棒 - 中\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] hotbar.6 minecraft:carrot_on_a_stick{display:{Name:"\"\\u00A7r牢屋箇所設定棒 - 大\""},HideFlags:39} 1
execute if score #Keidoro NumPrison matches 1.. run replaceitem entity @p[tag=Host] inventory.11 minecraft:iron_door{display:{Name:"\"\\u00A7r1箇所目を除去\""},HideFlags:39} 1
execute if score #Keidoro NumPrison matches 2.. run replaceitem entity @p[tag=Host] inventory.12 minecraft:iron_door{display:{Name:"\"\\u00A7r2箇所目を除去\""},HideFlags:39} 1
execute if score #Keidoro NumPrison matches 3.. run replaceitem entity @p[tag=Host] inventory.13 minecraft:iron_door{display:{Name:"\"\\u00A7r3箇所目を除去\""},HideFlags:39} 1
execute if score #Keidoro NumPrison matches 4.. run replaceitem entity @p[tag=Host] inventory.14 minecraft:iron_door{display:{Name:"\"\\u00A7r4箇所目を除去\""},HideFlags:39} 1
execute if score #Keidoro NumPrison matches 5.. run replaceitem entity @p[tag=Host] inventory.15 minecraft:iron_door{display:{Name:"\"\\u00A7r5箇所目を除去\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7r\\u00A7dゲームキャンセル\""},HideFlags:39} 1
execute if score #Keidoro PoliceManual matches 0 run replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:"\"\\u00A7r\\u00A7bゲームスタート\""},HideFlags:39} 1
execute if score #Keidoro PoliceManual matches 1 run replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:"\"\\u00A7r\\u00A7b警察設定箇所設置へ\""},HideFlags:39} 1

## Set nether_star above set prison
execute if entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3,PrisonNumber=1}] run replaceitem entity @p[tag=Host] inventory.2 minecraft:nether_star{display:{Name:"\"\\u00A7r設置済\""},HideFlags:39} 1
execute if entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3,PrisonNumber=2}] run replaceitem entity @p[tag=Host] inventory.3 minecraft:nether_star{display:{Name:"\"\\u00A7r設置済\""},HideFlags:39} 1
execute if entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3,PrisonNumber=3}] run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r設置済\""},HideFlags:39} 1
execute if entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3,PrisonNumber=4}] run replaceitem entity @p[tag=Host] inventory.5 minecraft:nether_star{display:{Name:"\"\\u00A7r設置済\""},HideFlags:39} 1
execute if entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3,PrisonNumber=5}] run replaceitem entity @p[tag=Host] inventory.6 minecraft:nether_star{display:{Name:"\"\\u00A7r設置済\""},HideFlags:39} 1