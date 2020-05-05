###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Drop gunpowder
execute store result score @s HasGunpowder run clear @s minecraft:gunpowder
execute unless score @s HasGunpowder matches ..0 run function mkd:system/ongame/drop_gunpowder

## Drop conduit
execute store result score @s HasConduit run clear @s minecraft:conduit
execute unless score @s HasConduit matches ..0 run function mkd:system/ongame/drop_conduit

## Reset scoreboard
scoreboard players set @s Death 0