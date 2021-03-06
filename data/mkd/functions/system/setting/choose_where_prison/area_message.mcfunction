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
tellraw @a ["",{"text":"  牢屋"},{"score":{"name":"@s","objective":"PrisonNumber"}},{"text":"箇所目が、","color":"white"}]

## Branch prison number 1
execute if score @s PrisonNumber matches 1 run tellraw @a ["",{"text":"  ","color":"white"},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"PrisonPosX"}},{"score":{"name":"@s","objective":"PrisonPosY"}},{"score":{"name":"@s","objective":"PrisonPosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"クリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportPrison set 1"}},{"text":" に設定されました。","color":"white"}]

## Branch prison number 2
execute if score @s PrisonNumber matches 2 run tellraw @a ["",{"text":"  ","color":"white"},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"PrisonPosX"}},{"score":{"name":"@s","objective":"PrisonPosY"}},{"score":{"name":"@s","objective":"PrisonPosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"クリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportPrison set 2"}},{"text":" に設定されました。","color":"white"}]

## Branch prison number 3
execute if score @s PrisonNumber matches 3 run tellraw @a ["",{"text":"  ","color":"white"},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"PrisonPosX"}},{"score":{"name":"@s","objective":"PrisonPosY"}},{"score":{"name":"@s","objective":"PrisonPosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"クリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportPrison set 3"}},{"text":" に設定されました。","color":"white"}]

## Branch prison number 4
execute if score @s PrisonNumber matches 4 run tellraw @a ["",{"text":"  ","color":"white"},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"PrisonPosX"}},{"score":{"name":"@s","objective":"PrisonPosY"}},{"score":{"name":"@s","objective":"PrisonPosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"クリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportPrison set 4"}},{"text":" に設定されました。","color":"white"}]

## Branch prison number 5
execute if score @s PrisonNumber matches 5 run tellraw @a ["",{"text":"  ","color":"white"},{"translate":"[%s, %s, %s]","with":[{"score":{"name":"@s","objective":"PrisonPosX"}},{"score":{"name":"@s","objective":"PrisonPosY"}},{"score":{"name":"@s","objective":"PrisonPosZ"}}],"color":"green","hoverEvent":{"action":"show_text","value":"クリックしてテレポート"},"clickEvent":{"action":"run_command","value":"/trigger TeleportPrison set 5"}},{"text":" に設定されました。","color":"white"}]

## Send messages
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]