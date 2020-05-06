###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Calculate time every tick
scoreboard players remove #Keidoro TICK 1
execute if score #Keidoro TICK matches ..-1 run scoreboard players set #Keidoro TICK 19

## Calculate time every second
execute if score #Keidoro TICK matches 0 run function mkd:system/time/second