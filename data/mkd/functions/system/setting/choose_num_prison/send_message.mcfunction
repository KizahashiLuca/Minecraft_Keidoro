###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Send number of prison messages
tellraw @a ["",{"text":"[初期設定] 牢屋戸数は ","color":"green"},{"score":{"name":"#Keidoro","objective":"NumPrison"},"color":"green","bold":true},{"text":"箇所","color":"green","bold":true},{"text":" に設定されました。","color":"green"}]

## Change to choose setting
function mkd:system/setting/choose_setting/change_to