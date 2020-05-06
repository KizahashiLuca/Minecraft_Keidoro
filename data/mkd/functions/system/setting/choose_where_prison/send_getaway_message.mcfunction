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
tellraw @a ["",{"text":" - マイクラ ケイドロ - ","color":"red","bold":true}]
tellraw @a ["",{"text":" Getaway Start","color":"green","bold":true}]
tellraw @a ["",{"text":" - 逃走開始 -","color":"green","bold":true}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]

## Send title
title @a title [{"text":"Minecraft Keidoro","color":"red","bold":true}]
title @a subtitle [{"text":"Getaway start","color":"red","bold":true}]
title @a times 10 70 30

## Change to getaway
function mkd:system/getaway/change_to