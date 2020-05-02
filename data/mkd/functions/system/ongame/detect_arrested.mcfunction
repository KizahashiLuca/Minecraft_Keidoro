###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Add tag
tag @s add DetectArrest
execute store result score @s PrisonPosX run data get entity @s Pos[0] 1
execute store result score @s PrisonPosY run data get entity @s Pos[1] 1
execute store result score @s PrisonPosZ run data get entity @s Pos[2] 1

## Detect arrested robber
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3,PrisonBroken=0}] if score @s PrisonMinX <= @p[tag=DetectArrest] PrisonPosX if score @p[tag=DetectArrest] PrisonPosX <= @s PrisonMaxX if score @s PrisonMinY <= @p[tag=DetectArrest] PrisonPosY if score @p[tag=DetectArrest] PrisonPosY <= @s PrisonMaxY if score @s PrisonMinZ <= @p[tag=DetectArrest] PrisonPosZ if score @p[tag=DetectArrest] PrisonPosZ <= @s PrisonMaxZ run tag @p[tag=DetectArrest] add Arrested
scoreboard players set @p[tag=DetectArrest,tag=Arrested] Arrested 1
scoreboard players set @p[tag=DetectArrest,tag=!Arrested] Arrested 0

## Remove tag
tag @a remove DetectArrest
tag @a remove Arrested