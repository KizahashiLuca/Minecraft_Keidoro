###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Drop conduit
summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:conduit",Count:1b,tag:{CanPlaceOn:["minecraft:iron_door"]}}}

## Loop
scoreboard players remove @s HasConduit 1
execute unless score @s HasConduit matches ..0 run function mkd:system/ongame/drop_conduit