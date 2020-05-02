###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Send messages
tellraw @a [""]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":" Minecraft Keidoro alpha-0.1","color":"red","bold":true}]
tellraw @a ["",{"text":" - マイクラ ケイドロ alpha-0.1 - ","color":"red","bold":true}]
tellraw @a ["",{"text":"         Setting Start","color":"green","bold":true}]
tellraw @a ["",{"text":"          - 設定開始 -","color":"green","bold":true}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"selector":"@p[tag=Host]","color":"green","bold":true},{"text":" はインベントリで","color":"white"}]
tellraw @s ["",{"text":"  初期設定を開始してください。","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]

## Change to choose setting
function mkd:system/setting/choose_setting/change_to