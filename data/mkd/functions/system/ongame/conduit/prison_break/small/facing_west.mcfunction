###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Common
function mkd:system/ongame/conduit/prison_break/common_pre

## Merge data structure_block - small - west
data merge block ~ ~ ~ {name:"mkd:broken_prison_small",posX:-2,posZ:3,rotation:"COUNTERCLOCKWISE_90"}

## Common
function mkd:system/ongame/conduit/prison_break/common_post