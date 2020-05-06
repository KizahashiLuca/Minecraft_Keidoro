###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Common
function mkd:system/ongame/conduit/prison_break/common_pre

## Merge data structure_block - big_north - south
data merge block ~ ~ ~ {name:"mkd:broken_prison_big_north",posX:7,posZ:7,rotation:"CLOCKWISE_180"}

## Common
function mkd:system/ongame/conduit/prison_break/common_post