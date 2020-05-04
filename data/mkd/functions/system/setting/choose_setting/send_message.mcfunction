###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Detect number of robber
scoreboard players operation #Keidoro NumRobberMax = #Keidoro NumPlayer
scoreboard players operation #Keidoro NumRobberMax -= #Keidoro NumPolice
execute if score #Keidoro NumRobber > #Keidoro NumRobberMax run scoreboard players operation #Keidoro NumRobber = #Keidoro NumRobberMax
scoreboard players operation #Keidoro NumBurglar = #Keidoro NumRobberMax

## Send setting messages
#execute if score #Keidoro PoliceManual matches 1 run function mkd:system/setting/choose_setting/send_police_message
execute if score #Keidoro PoliceManual matches 1 run function mkd:system/setting/choose_setting/send_prison_message
execute if score #Keidoro PoliceManual matches 0 run function mkd:system/setting/choose_setting/send_prison_message