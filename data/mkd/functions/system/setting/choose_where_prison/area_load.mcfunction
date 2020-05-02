###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Set air
setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~ minecraft:air

## Set structure_block
setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD",powered:0b,posX:-7,posY:0,posZ:-7,rotation:"NONE",showboundingbox:1b,showair:1b}

execute if score #Keidoro PrisonNumber matches 1 at @s run data merge block ~ ~ ~ {name:"mkd:save1"}
execute if score #Keidoro PrisonNumber matches 2 at @s run data merge block ~ ~ ~ {name:"mkd:save2"}
execute if score #Keidoro PrisonNumber matches 3 at @s run data merge block ~ ~ ~ {name:"mkd:save3"}
execute if score #Keidoro PrisonNumber matches 4 at @s run data merge block ~ ~ ~ {name:"mkd:save4"}
execute if score #Keidoro PrisonNumber matches 5 at @s run data merge block ~ ~ ~ {name:"mkd:save5"}

## Set redstone block
setblock ~ ~1 ~ minecraft:redstone_block

## Set air
setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~ minecraft:air