###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Number the players
scoreboard players operation @r[team=Police,tag=!SetRespawn,tag=!Numbered] PlayerNumber = #Keidoro PlayerNumber
execute as @a[team=Police,tag=!SetRespawn,tag=!Numbered] if score @s PlayerNumber = #Keidoro PlayerNumber run tag @s add Numbered

## Loop
scoreboard players add #Keidoro PlayerNumber 1
execute if score #Keidoro PlayerNumber <= #Keidoro NumPlayerTmp run function mkd:system/getaway/police/random_spawn_numbering