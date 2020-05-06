###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Merge data structure_block - big
execute if score @s PrisonRot matches 0 at @s if block ~ ~2 ~-6 minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big/facing_north
execute if score @s PrisonRot matches 1 at @s if block ~6 ~2 ~ minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big/facing_east
execute if score @s PrisonRot matches 2 at @s if block ~ ~2 ~6 minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big/facing_south
execute if score @s PrisonRot matches 3 at @s if block ~-6 ~2 ~ minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big/facing_west

execute if score @s PrisonRot matches 0 at @s if block ~ ~2 ~7 minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big/facing_north
execute if score @s PrisonRot matches 1 at @s if block ~-7 ~2 ~ minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big/facing_east
execute if score @s PrisonRot matches 2 at @s if block ~ ~2 ~-7 minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big/facing_south
execute if score @s PrisonRot matches 3 at @s if block ~7 ~2 ~ minecraft:conduit run function mkd:system/ongame/conduit/prison_break/big/facing_west