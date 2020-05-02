###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Drop gunpowder
execute at @s run summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:gunpowder",Count:1b,tag:{Enchantments:[{}]}}}

## Clear items
clear @s minecraft:gunpowder
clear @s minecraft:conduit

## Reset scoreboard
scoreboard players set @s Death 0