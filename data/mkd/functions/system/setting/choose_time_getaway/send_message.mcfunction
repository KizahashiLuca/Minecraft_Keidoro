###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Send time getaway messages
tellraw @a ["",{"text":"[初期設定] 逃走時間は ","color":"green"},{"score":{"name":"#Keidoro","objective":"TimeGetaway"},"color":"green","bold":true},{"text":"秒","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Change to choose setting
function mkd:system/setting/choose_setting/change_to