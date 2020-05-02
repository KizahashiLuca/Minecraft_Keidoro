###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Explosion
playsound minecraft:entity.generic.explode master @a ~ ~2 ~-2
particle minecraft:explosion ~ ~2 ~-2 2 2 2 5 100 normal @a

## Set air
setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~ minecraft:air

## Set structure_block
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",powered:0b,posY:0,showboundingbox:1b,showair:1b}