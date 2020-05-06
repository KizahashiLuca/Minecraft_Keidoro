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
tellraw @a ["",{"text":" Setting Police","color":"green","bold":true}]
tellraw @a ["",{"text":" - 警察手動設定 -","color":"green","bold":true}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"selector":"@p[tag=Host]","color":"green","bold":true},{"text":" は","color":"white"}]
tellraw @a ["",{"text":"  ","color":"white"},{"translate":"item.minecraft.carrot_on_a_stick","color":"green","bold":true},{"text":" を右クリックして"}]
tellraw @a ["",{"text":"  警察設定場所を設置してください。","color":"white"}]
tellraw @a ["",{"text":"-----------------------------","color":"white"}]
tellraw @a [""]

## Change to choose whom police
function mkd:system/setting/choose_whom_police/change_to