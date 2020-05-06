###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Send exit messages
function mkd:system/finish/message_exit

execute if score #Keidoro Phase matches 11 run function mkd:system/finish/winner_robber
execute if score #Keidoro Phase matches 12 run function mkd:system/finish/winner_police
execute unless score #Keidoro Phase matches 11..12 run function mkd:system/finish/winner_none

## Reset game
function mkd:system/finish/reset_game
