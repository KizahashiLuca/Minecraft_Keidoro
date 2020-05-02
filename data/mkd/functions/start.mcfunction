###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Detect Gamemode
execute if entity @p[tag=Host] run function mkd:system/finish/game_reject
execute unless entity @p[tag=Host] run function mkd:system/setting/initial/set_game