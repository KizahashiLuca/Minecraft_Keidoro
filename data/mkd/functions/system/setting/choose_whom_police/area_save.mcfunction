###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Save area
setblock ~ ~ ~ minecraft:structure_block{mode:"SAVE",powered:0b,posX:-2,posY:0,posZ:-2,sizeX:5,sizeY:4,sizeZ:5,name:"mkd:save_police",showboundingbox:1b,showair:1b}

## Set redstone block
execute as @p[tag=Host] at @s run setblock ~ ~1 ~ minecraft:redstone_block

## Summon area_effect_cloud
execute as @p[tag=Host] at @s align x align y align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Duration:100000000,Radius:1,RadiusPerTick:0,Tags:["police","summoned"]}
scoreboard players set @e[type=minecraft:area_effect_cloud,nbt={Tags:["police","summoned"]}] SetPolice 1
tag @e[type=minecraft:area_effect_cloud,nbt={Tags:["police","summoned"]}] remove summoned

## Detect position of area_effect_cloud
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1}] store result score @s PrisonPosX run data get entity @s Pos[0] 1
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1}] store result score @s PrisonPosY run data get entity @s Pos[1] 1
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1}] store result score @s PrisonPosZ run data get entity @s Pos[2] 1

execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1}] run scoreboard players operation @s PrisonMaxX = @s PrisonPosX
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1}] run scoreboard players operation @s PrisonMaxY = @s PrisonPosY
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1}] run scoreboard players operation @s PrisonMaxZ = @s PrisonPosZ
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1}] run scoreboard players operation @s PrisonMinX = @s PrisonPosX
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1}] run scoreboard players operation @s PrisonMinY = @s PrisonPosY
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1}] run scoreboard players operation @s PrisonMinZ = @s PrisonPosZ

execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1}] run scoreboard players add @s PrisonMaxX 2
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1}] run scoreboard players add @s PrisonMaxZ 2
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1}] run scoreboard players remove @s PrisonMinX 2
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1}] run scoreboard players remove @s PrisonMinZ 2
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=1}] run scoreboard players add @s PrisonMaxY 3