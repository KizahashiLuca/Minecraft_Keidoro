###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Send number of robber messages
tellraw @a ["",{"text":"[初期設定] 強盗人数は ","color":"green"},{"score":{"name":"#Keidoro","objective":"NumRobber"},"color":"green","bold":true},{"text":"人","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Change to choose setting
function mkd:system/setting/choose_setting/change_to