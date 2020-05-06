###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Drop gunpowder
summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:gunpowder",Count:1b,tag:{Enchantments:[{}]}}}

## Clear items
clear @s minecraft:gunpowder
clear @s minecraft:conduit
clear @s minecraft:arrow
clear @s minecraft:tipped_arrow{display:{Name:"\"\\u00A7r\\u00A7bスタングレネード\"",Lore:["\"\\u00A7r\\u00A7c移動速度低下 Ⅶ (0:10)\"","\"\\u00A7r\\u00A7c盲目 (0:10)\"","\"\"","\"\\u00A7r\\u00A75効果:\"","\"\\u00A7r\\u00A7c移動速度上昇 -120%\""]},CustomPotionEffects:[{Id:2,Amplifier:7,Duration:200},{Id:15,Duration:200}],HideFlags:32}

## Give tipped_arrow
give @s minecraft:tipped_arrow{display:{Name:"\"\\u00A7r\\u00A7bスタングレネード\"",Lore:["\"\\u00A7r\\u00A7c移動速度低下 Ⅶ (0:10)\"","\"\\u00A7r\\u00A7c盲目 (0:10)\"","\"\"","\"\\u00A7r\\u00A75効果:\"","\"\\u00A7r\\u00A7c移動速度上昇 -120%\""]},CustomPotionEffects:[{Id:2,Amplifier:7,Duration:200},{Id:15,Duration:200}],HideFlags:32} 5

## Reset scoreboard
scoreboard players set @s Death 0
scoreboard players set @s Arrested 0