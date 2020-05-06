###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Decide police
execute as @a[team=Player] run function mkd:system/setting/choose_whom_police/police_detected
scoreboard players set #Keidoro NumPoliceSet 0
scoreboard players operation #Keidoro NumPoliceTmp = #Keidoro NumPolice
scoreboard players set #Keidoro NumPlayerTmp 0
execute as @a[team=Player,scores={Detected=1}] run scoreboard players add #Keidoro NumPlayerTmp 1
execute if score #Keidoro NumPlayerTmp >= #Keidoro NumPoliceTmp run scoreboard players operation #Keidoro NumPoliceTmp = #Keidoro NumPlayerTmp

function mkd:system/getaway/random_generator/initialize
execute unless score #Keidoro NumPoliceTmp matches ..0 run function mkd:system/setting/choose_whom_police/police_random

## Remove police setter
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]}] at @s run function mkd:system/setting/choose_whom_police/area_load

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