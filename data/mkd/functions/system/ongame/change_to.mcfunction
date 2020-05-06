###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Clear inventory
effect clear @a

## Set scoreboards
scoreboard players set #Keidoro TICK 0
scoreboard players set #Keidoro SECOND 60
scoreboard players operation #Keidoro SECOND *= #Keidoro TimeLimit

## Set bossbar
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar name [{"text":"制限時間  残り "},{"score":{"name":"#Keidoro","objective":"SECOND"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar max run scoreboard players get #Keidoro SECOND
execute store result bossbar minecraft:bossbar value run scoreboard players get #Keidoro SECOND

## Change phase
scoreboard players set #Keidoro Phase 10