###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Send exit messages
tellraw @a ["",{"text":" Draw","color":"white","bold":true}]
tellraw @a ["",{"text":" - 引き分け -","color":"white","bold":true}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]

## Send title
title @a title [{"text":"Draw","color":"white","bold":true}]
title @a subtitle [{"text":"Game finish","color":"white","bold":true}]
title @a times 10 70 30