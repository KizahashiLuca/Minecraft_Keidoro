###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Common
function mkd:system/ongame/conduit/prison_break/common_pre

## Merge data structure_block - small - north
data merge block ~ ~ ~ {name:"mkd:broken_prison_small",posX:-3,posZ:-3,rotation:"NONE"}

## Common
function mkd:system/ongame/conduit/prison_break/common_post