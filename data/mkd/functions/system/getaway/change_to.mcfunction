###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Clear inventory
clear @a

## Set scoreboards
scoreboard players set #Keidoro TICK 0
scoreboard players operation #Keidoro SECOND = #Keidoro TimeGetaway
scoreboard objectives setdisplay list Arrested
scoreboard objectives setdisplay sidebar NumAlive

## Set bossbar
bossbar add minecraft:bossbar [{"text":"逃走時間  残り "},{"score":{"name":"#Keidoro","objective":"SECOND"}},{"text":" 秒"}]
bossbar set minecraft:bossbar players @a
bossbar set minecraft:bossbar name [{"text":"逃走時間  残り "},{"score":{"name":"#Keidoro","objective":"SECOND"}},{"text":" 秒"}]
execute store result bossbar minecraft:bossbar max run scoreboard players get #Keidoro SECOND
execute store result bossbar minecraft:bossbar value run scoreboard players get #Keidoro SECOND

## Decide police
scoreboard players operation #Keidoro NumPoliceTmp = #Keidoro NumPolice
scoreboard players operation #Keidoro NumPoliceTmp -= #Keidoro NumPoliceSet
scoreboard players set #Keidoro NumPlayerTmp 0
execute as @a[team=Player] run scoreboard players add #Keidoro NumPlayerTmp 1
execute unless score #Keidoro NumPoliceTmp matches ..0 run function mkd:system/getaway/random_generator/main_police
function mkd:system/getaway/police/main

## Decide robber
scoreboard players operation #Keidoro NumRobberTmp = #Keidoro NumRobber
scoreboard players operation #Keidoro NumRobberTmp -= #Keidoro NumRobberSet
scoreboard players set #Keidoro NumPlayerTmp 0
execute as @a[team=Player] run scoreboard players add #Keidoro NumPlayerTmp 1
execute unless score #Keidoro NumRobberTmp matches ..0 run function mkd:system/getaway/random_generator/main_robber
tag @a[team=Robber] add Robber
tag @a[team=Player] add Burglar
team join Robber @a[team=Player]
function mkd:system/getaway/robber/main

## Set half number of robber 
scoreboard players operation #Keidoro NumRobberTmp = #Keidoro NumBurglar
scoreboard players operation #Keidoro NumRobberTmp /= #Keidoro 2

## Decide police respawn
scoreboard players operation #Keidoro NumPlayerTmp = #Keidoro NumPolice
function mkd:system/getaway/police/random_spawn_main

## Decide robber respawn
scoreboard players operation #Keidoro NumPlayerTmp = #Keidoro NumBurglar
function mkd:system/getaway/robber/random_spawn_main
tag @a remove SetRespawn

## Set rest of alive robber
scoreboard players operation 残り NumAlive = #Keidoro NumBurglar

## Send messages
function mkd:system/getaway/police/send_message
function mkd:system/getaway/robber/send_message

## Remove police setter
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=3}] at @s run function mkd:system/setting/choose_whom_police/area_load
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=3}] run kill @s

## Change phase
scoreboard players set #Keidoro Phase 100