###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Send messages
tellraw @a [""]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":" Minecraft Keidoro alpha-0.2","color":"red","bold":true}]
tellraw @a ["",{"text":" - マイクラ ケイドロ - ","color":"red","bold":true}]
tellraw @a ["",{"text":" Game Start","color":"green","bold":true}]
tellraw @a ["",{"text":" - ゲーム開始 -","color":"green","bold":true}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]

## Send title
title @a title [{"text":"Minecraft Keidoro","color":"red","bold":true}]
title @a subtitle [{"text":"Game start","color":"red","bold":true}]
title @a times 10 70 30

## Game Start
function mkd:system/ongame/change_to