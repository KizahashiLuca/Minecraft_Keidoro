###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Add tag
tag @s add Teleport

## Teleport
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=3}] at @s if score @p[tag=Teleport] TeleportPolice matches 1 run tp @p[tag=Teleport] ~ ~1 ~ 0 0

## Reset scoreboard
scoreboard players reset @s TeleportPolice
scoreboard players enable @s TeleportPolice

## Remove tag
tag @p[tag=Teleport] remove Teleport