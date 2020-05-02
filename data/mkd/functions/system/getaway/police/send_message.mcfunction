###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Send messages
tellraw @a ["",{"text":"  警察が決定しました。","color":"white"}]
tellraw @a ["",{"text":"  以下のプレイヤーです。","color":"white"}]
tellraw @a ["",{"text":"    ","color":"white"},{"selector":"@a[team=Police]","color":"blue","bold":true}]
tellraw @a ["",{"text":"  警察は","color":"white"},{"score":{"name":"#Keidoro","objective":"TimeGetaway"}},{"text":"秒後に追跡を開始します。","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]