###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Set inventory
replaceitem entity @p[tag=Host] hotbar.4 minecraft:carrot_on_a_stick{display:{Name:"\"\\u00A7r警察設定場所設置棒\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:red_wool{display:{Name:"\"\\u00A7r除去\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.19 minecraft:barrier{display:{Name:"\"\\u00A7r\\u00A7dゲームキャンセル\""},HideFlags:39} 1
replaceitem entity @p[tag=Host] inventory.25 minecraft:structure_void{display:{Name:"\"\\u00A7r\\u00A7bゲームスタート\""},HideFlags:39} 1

## Set nether_star above set police setter
execute if entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=3}] run replaceitem entity @p[tag=Host] inventory.4 minecraft:nether_star{display:{Name:"\"\\u00A7r設置済\""},HideFlags:39} 1