###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Send messages
tellraw @a ["",{"text":"  泥棒が決定しました。","color":"white"}]
tellraw @a ["",{"text":"  以下のプレイヤーです。","color":"white"}]
tellraw @a ["",{"text":"    ","color":"white"},{"selector":"@a[team=Robber]","color":"blue","bold":true}]
tellraw @a ["",{"text":"  泥棒は逃走を開始してください。","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a[team=Robber] ["",{"text":"  強盗が決定しました。","color":"white"}]
tellraw @a[team=Robber] ["",{"text":"  以下のプレイヤーです。","color":"white"}]
tellraw @a[team=Robber] ["",{"text":"    ","color":"white"},{"selector":"@a[team=Robber,tag=Robber]","color":"red","bold":true}]
tellraw @a[team=Robber] ["",{"text":"  警察は強盗が誰かを知りません。","color":"white"}]
tellraw @a[team=Robber] ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]