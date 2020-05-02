###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Recount
scoreboard players remove #Keidoro RandomCount 1

## Randomize
scoreboard players operation #Keidoro RandomSeed *= #Keidoro RandomMultiplier
scoreboard players operation #Keidoro RandomSeed %= #Keidoro RandomModder
scoreboard players operation #Keidoro RandomAnswer = #Keidoro RandomSeed

## Loop
execute unless score #Keidoro RandomCount matches ..0 run function mkd:system/getaway/random_generator/randomizing