###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Number the players
scoreboard players operation @r[team=Robber,tag=!SetRespawn,tag=!Numbered] PlayerNumber = #Keidoro PlayerNumber
execute as @a[team=Robber,tag=!SetRespawn,tag=!Numbered] if score @s PlayerNumber = #Keidoro PlayerNumber run tag @s add Numbered

## Loop
scoreboard players add #Keidoro PlayerNumber 1
execute if score #Keidoro PlayerNumber <= #Keidoro NumPlayerTmp run function mkd:system/getaway/robber/random_spawn_numbering