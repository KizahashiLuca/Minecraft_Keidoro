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

## Branch police setter
tellraw @a ["",{"text":"  警察設定箇所が、","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"PrisonPosX"}},{"score":{"name":"@s","objective":"PrisonPosY"}},{"score":{"name":"@s","objective":"PrisonPosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"クリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportPolice set 1"}},{"text":" に設定されました。","color":"white"}]

## Send messages
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]