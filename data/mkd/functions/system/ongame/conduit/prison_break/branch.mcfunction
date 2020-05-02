###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Branch data structure_block - small
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 0 at @s if block ~ ~2 ~-2 minecraft:conduit run function mkd:system/ongame/conduit/prison_break/small/facing_north
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 1 at @s if block ~2 ~2 ~ minecraft:conduit run function mkd:system/ongame/conduit/prison_break/small/facing_east
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 2 at @s if block ~ ~2 ~2 minecraft:conduit run function mkd:system/ongame/conduit/prison_break/small/facing_south
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 3 at @s if block ~-2 ~2 ~ minecraft:conduit run function mkd:system/ongame/conduit/prison_break/small/facing_west

## Merge data structure_block - medium
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 0 at @s if block ~ ~2 ~-4 minecraft:conduit run function mkd:system/ongame/conduit/prison_break/medium/facing_north
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 1 at @s if block ~4 ~2 ~ minecraft:conduit run function mkd:system/ongame/conduit/prison_break/medium/facing_east
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 2 at @s if block ~ ~2 ~4 minecraft:conduit run function mkd:system/ongame/conduit/prison_break/medium/facing_south
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 3 at @s if block ~-4 ~2 ~ minecraft:conduit run function mkd:system/ongame/conduit/prison_break/medium/facing_west

## Merge data structure_block - big
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 0 at @s if block ~ ~2 ~-6 minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big_north/facing_north
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 1 at @s if block ~6 ~2 ~ minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big_north/facing_east
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 2 at @s if block ~ ~2 ~6 minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big_north/facing_south
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 3 at @s if block ~-6 ~2 ~ minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big_north/facing_west

execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 0 at @s if block ~ ~2 ~7 minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big_south/facing_north
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 1 at @s if block ~-7 ~2 ~ minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big_south/facing_east
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 2 at @s if block ~ ~2 ~-7 minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big_south/facing_south
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 3 at @s if block ~7 ~2 ~ minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big_south/facing_west