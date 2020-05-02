###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Drop gunpowder
summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:gunpowder",Count:1b,tag:{Enchantments:[{}]}}}

## Loop
scoreboard players remove @s HasGunpowder 1
execute unless score @s HasGunpowder matches ..0 run function mkd:system/ongame/drop_gunpowder