###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Send exit messages
tellraw @a ["",{"text":" Police Win","color":"blue","bold":true}]
tellraw @a ["",{"text":" - 警察勝利 -","color":"blue","bold":true}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]

## Send title
title @a title [{"text":"Police Win","color":"blue","bold":true}]
title @a subtitle [{"text":"Game finish","color":"blue","bold":true}]
title @a times 10 70 30