###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Calculate prison stick number
execute if score @p[tag=Host] PrisonStick matches 1.. unless score #Keidoro NumPrison = #Keidoro SetNumPrison run function mkd:system/setting/choose_where_prison/area_select

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"\\u00A7r牢屋箇所設定棒 - 小\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"\\u00A7r牢屋箇所設定棒 - 中\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"\\u00A7r牢屋箇所設定棒 - 大\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r設置済\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_door",tag:{display:{Name:"\"\\u00A7r1箇所目を除去\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_door",tag:{display:{Name:"\"\\u00A7r2箇所目を除去\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_door",tag:{display:{Name:"\"\\u00A7r3箇所目を除去\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_door",tag:{display:{Name:"\"\\u00A7r4箇所目を除去\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_door",tag:{display:{Name:"\"\\u00A7r5箇所目を除去\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dゲームキャンセル\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7bゲームスタート\""},HideFlags:39}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mkd:system/setting/choose_where_prison/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select02 1
scoreboard players set @p[tag=Host] Select04 1
scoreboard players set @p[tag=Host] Select06 1
execute if entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3,PrisonNumber=1}] run scoreboard players set @p[tag=Host] Select11 1
execute if entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3,PrisonNumber=2}] run scoreboard players set @p[tag=Host] Select12 1
execute if entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3,PrisonNumber=3}] run scoreboard players set @p[tag=Host] Select13 1
execute if entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3,PrisonNumber=4}] run scoreboard players set @p[tag=Host] Select14 1
execute if entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3,PrisonNumber=5}] run scoreboard players set @p[tag=Host] Select15 1
execute if score #Keidoro NumPrison matches 1.. run scoreboard players set @p[tag=Host] Select20 1
execute if score #Keidoro NumPrison matches 2.. run scoreboard players set @p[tag=Host] Select21 1
execute if score #Keidoro NumPrison matches 3.. run scoreboard players set @p[tag=Host] Select22 1
execute if score #Keidoro NumPrison matches 4.. run scoreboard players set @p[tag=Host] Select23 1
execute if score #Keidoro NumPrison matches 5.. run scoreboard players set @p[tag=Host] Select24 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select34 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"\\u00A7r牢屋箇所設定棒 - 小\""},HideFlags:39}}]}] Select02 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"\\u00A7r牢屋箇所設定棒 - 中\""},HideFlags:39}}]}] Select04 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"\\u00A7r牢屋箇所設定棒 - 大\""},HideFlags:39}}]}] Select06 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r設置済\""},HideFlags:39}}]}] Select11 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r設置済\""},HideFlags:39}}]}] Select12 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r設置済\""},HideFlags:39}}]}] Select13 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r設置済\""},HideFlags:39}}]}] Select14 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r設置済\""},HideFlags:39}}]}] Select15 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:iron_door",tag:{display:{Name:"\"\\u00A7r1箇所目を除去\""},HideFlags:39}}]}] Select20 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:iron_door",tag:{display:{Name:"\"\\u00A7r2箇所目を除去\""},HideFlags:39}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:iron_door",tag:{display:{Name:"\"\\u00A7r3箇所目を除去\""},HideFlags:39}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:iron_door",tag:{display:{Name:"\"\\u00A7r4箇所目を除去\""},HideFlags:39}}]}] Select23 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:iron_door",tag:{display:{Name:"\"\\u00A7r5箇所目を除去\""},HideFlags:39}}]}] Select24 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dゲームキャンセル\""},HideFlags:39}}]}] Select28 0
execute if score #Keidoro PoliceManual matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7bゲームスタート\""},HideFlags:39}}]}] Select34 0
execute if score #Keidoro PoliceManual matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7b警察設定箇所設置へ\""},HideFlags:39}}]}] Select34 0

## Change to each phase
execute if score @p[tag=Host] Select02 matches 1 run function mkd:system/setting/choose_where_prison/change_to
execute if score @p[tag=Host] Select04 matches 1 run function mkd:system/setting/choose_where_prison/change_to
execute if score @p[tag=Host] Select06 matches 1 run function mkd:system/setting/choose_where_prison/change_to
execute if score @p[tag=Host] Select11 matches 1 run function mkd:system/setting/choose_where_prison/change_to
execute if score @p[tag=Host] Select12 matches 1 run function mkd:system/setting/choose_where_prison/change_to
execute if score @p[tag=Host] Select13 matches 1 run function mkd:system/setting/choose_where_prison/change_to
execute if score @p[tag=Host] Select14 matches 1 run function mkd:system/setting/choose_where_prison/change_to
execute if score @p[tag=Host] Select15 matches 1 run function mkd:system/setting/choose_where_prison/change_to
execute if score @p[tag=Host] Select20 matches 1 run function mkd:system/setting/choose_where_prison/prison_remove
execute if score @p[tag=Host] Select21 matches 1 run function mkd:system/setting/choose_where_prison/prison_remove
execute if score @p[tag=Host] Select22 matches 1 run function mkd:system/setting/choose_where_prison/prison_remove
execute if score @p[tag=Host] Select23 matches 1 run function mkd:system/setting/choose_where_prison/prison_remove
execute if score @p[tag=Host] Select24 matches 1 run function mkd:system/setting/choose_where_prison/prison_remove
execute if score @p[tag=Host] Select28 matches 1 run function mkd:stop
execute if score @p[tag=Host] Select34 matches 1 unless score #Keidoro NumPrison = #Keidoro SetNumPrison run function mkd:system/setting/choose_where_prison/send_error_message
execute if score @p[tag=Host] Select34 matches 1 if score #Keidoro PoliceManual matches 0 if score #Keidoro NumPrison = #Keidoro SetNumPrison run function mkd:system/setting/choose_where_prison/send_getaway_message
execute if score @p[tag=Host] Select34 matches 1 if score #Keidoro PoliceManual matches 1 if score #Keidoro NumPrison = #Keidoro SetNumPrison run function mkd:system/setting/choose_where_prison/send_police_message