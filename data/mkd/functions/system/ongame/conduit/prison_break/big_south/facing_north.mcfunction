###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Common
function mkd:system/ongame/conduit/prison_break/common_pre

## Merge data structure_block - big_south - north
data merge block ~ ~ ~ {name:"mkd:broken_prison_big_south",posX:-7,posZ:-7,rotation:"NONE"}

## Common
function mkd:system/ongame/conduit/prison_break/common_post