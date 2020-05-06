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
tellraw @a [""]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":" Minecraft Keidoro alpha-0.1","color":"red","bold":true}]
tellraw @a ["",{"text":" - マイクラ ケイドロ - ","color":"red","bold":true}]
tellraw @a ["",{"text":" Installing Start","color":"green","bold":true}]
tellraw @a ["",{"text":" - 牢屋設置開始 -","color":"green","bold":true}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  ゲーム設定は以下のとおりです。","color":"white"}]
tellraw @a ["",{"text":"    牢屋戸数   :   ","color":"white"},{"score":{"name":"#Keidoro","objective":"NumPrison"},"color":"white","bold":true},{"text":"箇所","color":"white","bold":true}]
tellraw @a ["",{"text":"    警察人数   :   ","color":"white"},{"score":{"name":"#Keidoro","objective":"NumPolice"},"color":"white","bold":true},{"text":"人","color":"white","bold":true}]
tellraw @a ["",{"text":"    泥棒人数   :   ","color":"white"},{"score":{"name":"#Keidoro","objective":"NumBurglar"},"color":"white","bold":true},{"text":"人","color":"white","bold":true}]
tellraw @a ["",{"text":"    ( 内、強盗 :   ","color":"white"},{"score":{"name":"#Keidoro","objective":"NumRobber"},"color":"white","bold":true},{"text":"人","color":"white","bold":true},{"text":" )","color":"white"}]
tellraw @a ["",{"text":"    逃走時間   :   ","color":"white"},{"score":{"name":"#Keidoro","objective":"TimeGetaway"},"color":"white","bold":true},{"text":"秒","color":"white","bold":true}]
tellraw @a ["",{"text":"    制限時間   :   ","color":"white"},{"score":{"name":"#Keidoro","objective":"TimeLimit"},"color":"white","bold":true},{"text":"分","color":"white","bold":true}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"selector":"@p[tag=Host]","color":"green","bold":true},{"text":" は","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"translate":"item.minecraft.carrot_on_a_stick","color":"green","bold":true},{"text":" を右クリックして"}]
tellraw @a ["",{"text":"  牢屋の位置を設定してください。","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]

## Change to choose where prison
function mkd:system/setting/choose_where_prison/change_to