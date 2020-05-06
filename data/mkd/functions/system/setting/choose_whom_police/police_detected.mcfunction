###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Add tag
tag @s add DetectPolice
execute store result score @s PrisonPosX run data get entity @s Pos[0] 1
execute store result score @s PrisonPosY run data get entity @s Pos[1] 1
execute store result score @s PrisonPosZ run data get entity @s Pos[2] 1

## Detect arrested robber
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=3}] if score @s PrisonMinX <= @p[tag=DetectPolice] PrisonPosX if score @p[tag=DetectPolice] PrisonPosX <= @s PrisonMaxX if score @s PrisonMinY <= @p[tag=DetectPolice] PrisonPosY if score @p[tag=DetectPolice] PrisonPosY <= @s PrisonMaxY if score @s PrisonMinZ <= @p[tag=DetectPolice] PrisonPosZ if score @p[tag=DetectPolice] PrisonPosZ <= @s PrisonMaxZ run tag @p[tag=DetectPolice] add Detected
scoreboard players set @p[tag=DetectPolice,tag=Detected] Detected 1
scoreboard players set @p[tag=DetectPolice,tag=!Detected] Detected 0

## Remove tag
tag @a remove DetectPolice
tag @a remove Detected