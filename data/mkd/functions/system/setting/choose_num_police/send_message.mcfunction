###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Detect number of robber
scoreboard players operation #Keidoro NumRobberMax = #Keidoro NumPlayer
scoreboard players operation #Keidoro NumRobberMax -= #Keidoro NumPolice
execute if score #Keidoro NumRobber > #Keidoro NumRobberMax run scoreboard players operation #Keidoro NumRobberPrv = #Keidoro NumRobberMax
execute if score #Keidoro NumRobber > #Keidoro NumRobberMax run scoreboard players operation #Keidoro NumRobber = #Keidoro NumRobberMax

## Send number of police messages
tellraw @a ["",{"text":"[初期設定] 警察人数は ","color":"green"},{"score":{"name":"#Keidoro","objective":"NumPolice"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #Keidoro PoliceManual matches 1 run tellraw @a ["",{"text":"[初期設定] 警察設定は ","color":"green"},{"text":"手動","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]
execute if score #Keidoro PoliceManual matches 0 run tellraw @a ["",{"text":"[初期設定] 警察設定は ","color":"green"},{"text":"ランダム","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Change to choose setting
function mkd:system/setting/choose_setting/change_to