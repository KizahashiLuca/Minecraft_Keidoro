###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Set air
setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~ minecraft:air

## Set structure_block - small 
execute if score @s PrisonSize matches 1..3 run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",powered:0b,posY:0,showboundingbox:1b,showair:1b}

## Set scoreboards
scoreboard players operation @s PrisonMaxX = @s PrisonPosX
scoreboard players operation @s PrisonMaxY = @s PrisonPosY
scoreboard players operation @s PrisonMaxZ = @s PrisonPosZ
scoreboard players operation @s PrisonMinX = @s PrisonPosX
scoreboard players operation @s PrisonMinY = @s PrisonPosY
scoreboard players operation @s PrisonMinZ = @s PrisonPosZ

scoreboard players set #Keidoro PrisonSize 2
scoreboard players operation #Keidoro PrisonSize *= @s PrisonSize

scoreboard players operation @s PrisonMaxX += #Keidoro PrisonSize
scoreboard players operation @s PrisonMaxZ += #Keidoro PrisonSize
scoreboard players operation @s PrisonMinX -= #Keidoro PrisonSize
scoreboard players operation @s PrisonMinZ -= #Keidoro PrisonSize
scoreboard players add @s PrisonMaxY 2

execute if score @s PrisonRot matches 0 run scoreboard players add @s PrisonMinZ 1
execute if score @s PrisonRot matches 1 run scoreboard players remove @s PrisonMaxX 1
execute if score @s PrisonRot matches 2 run scoreboard players remove @s PrisonMaxZ 1
execute if score @s PrisonRot matches 3 run scoreboard players add @s PrisonMinX 1

## Merge data structure_block - small 
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 0 run data merge block ~ ~ ~ {name:"mkd:prison_small",posX:-3,posZ:-3,rotation:"NONE"}
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 1 run data merge block ~ ~ ~ {name:"mkd:prison_small",posX:3,posZ:-3,rotation:"CLOCKWISE_90"}
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 2 run data merge block ~ ~ ~ {name:"mkd:prison_small",posX:3,posZ:3,rotation:"CLOCKWISE_180"}
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 3 run data merge block ~ ~ ~ {name:"mkd:prison_small",posX:-3,posZ:3,rotation:"COUNTERCLOCKWISE_90"}

## Merge data structure_block - medium 
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 0 run data merge block ~ ~ ~ {name:"mkd:prison_medium",posX:-5,posZ:-5,rotation:"NONE"}
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 1 run data merge block ~ ~ ~ {name:"mkd:prison_medium",posX:5,posZ:-5,rotation:"CLOCKWISE_90"}
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 2 run data merge block ~ ~ ~ {name:"mkd:prison_medium",posX:5,posZ:5,rotation:"CLOCKWISE_180"}
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 3 run data merge block ~ ~ ~ {name:"mkd:prison_medium",posX:-5,posZ:5,rotation:"COUNTERCLOCKWISE_90"}

## Merge data structure_block - big 
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 0 run data merge block ~ ~ ~ {name:"mkd:prison_big",posX:-7,posZ:-7,rotation:"NONE"}
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 1 run data merge block ~ ~ ~ {name:"mkd:prison_big",posX:7,posZ:-7,rotation:"CLOCKWISE_90"}
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 2 run data merge block ~ ~ ~ {name:"mkd:prison_big",posX:7,posZ:7,rotation:"CLOCKWISE_180"}
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 3 run data merge block ~ ~ ~ {name:"mkd:prison_big",posX:-7,posZ:7,rotation:"COUNTERCLOCKWISE_90"}

## Set redstone block
setblock ~ ~1 ~ minecraft:redstone_block

## Set stone bricks
setblock ~ ~ ~ minecraft:stone_bricks

## Set air
setblock ~ ~1 ~ minecraft:air