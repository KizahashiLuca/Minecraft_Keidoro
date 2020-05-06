###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Add tag
tag @s add Teleport

## Teleport
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3}] if score @p[tag=Teleport] TeleportPrison = @s PrisonNumber run function mkd:system/setting/choose_where_prison/area_teleport/sub

## Reset scoreboard
scoreboard players reset @s TeleportPrison
scoreboard players enable @s TeleportPrison

## Remove tag
tag @p[tag=Teleport] remove Teleport