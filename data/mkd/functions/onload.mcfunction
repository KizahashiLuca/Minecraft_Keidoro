###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Change gamerules always
gamerule maxCommandChainLength 65536
gamerule doMobSpawning false
gamerule doFireTick false

## Send Title Message
tellraw @a [""]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":" Minecraft Keidoro alpha-0.2","color":"red","bold":true}]
tellraw @a ["",{"text":" - マイクラ ケイドロ alpha-0.2 - ","color":"red","bold":true}]
tellraw @a ["",{"text":"    Thank you for Downloading!","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲームの必要人数は","color":"white"},{"text":" 3 ","color":"red","bold":true},{"text":"人からです。","color":"white"}]
tellraw @a ["",{"text":"  以下のコマンドで、ゲームを開始して","color":"white"}]
tellraw @a ["",{"text":"  ください。","color":"white"}]
tellraw @a ["",{"text":"      ","color":"white"},{"text":"/function #mkd:start","color":"light_purple","hoverEvent":{"action":"show_text","value":"クリックしてゲーム開始"},"clickEvent":{"action":"suggest_command","value":"/function #mkd:start"}}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]