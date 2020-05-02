###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Send time limit messages
tellraw @a ["",{"text":"[初期設定] 制限時間は ","color":"green"},{"score":{"name":"#Keidoro","objective":"TimeLimit"},"color":"green","bold":true},{"text":"分","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Change to choose setting
function mkd:system/setting/choose_setting/change_to