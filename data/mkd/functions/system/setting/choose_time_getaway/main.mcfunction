###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r30秒\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r60秒\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r90秒\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r120秒\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r180秒\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mkd:system/setting/choose_time_getaway/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select20 1
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select23 1
scoreboard players set @p[tag=Host] Select24 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select34 1
scoreboard players set @p[tag=Host] Selected 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r30秒\""},HideFlags:39}}]}] Select20 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r60秒\""},HideFlags:39}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r90秒\""},HideFlags:39}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r120秒\""},HideFlags:39}}]}] Select23 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r180秒\""},HideFlags:39}}]}] Select24 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39}}]}] Select34 0

execute if score #Keidoro TimeGetaway matches 30 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39}}]}] Selected 0
execute if score #Keidoro TimeGetaway matches 60 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39}}]}] Selected 0
execute if score #Keidoro TimeGetaway matches 90 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39}}]}] Selected 0
execute if score #Keidoro TimeGetaway matches 120 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39}}]}] Selected 0
execute if score #Keidoro TimeGetaway matches 180 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済\""},HideFlags:39}}]}] Selected 0

## Change to each phase
execute if score @p[tag=Host] Select20 matches 1 run function mkd:system/setting/choose_time_getaway/select_030secs
execute if score @p[tag=Host] Select21 matches 1 run function mkd:system/setting/choose_time_getaway/select_060secs
execute if score @p[tag=Host] Select22 matches 1 run function mkd:system/setting/choose_time_getaway/select_090secs
execute if score @p[tag=Host] Select23 matches 1 run function mkd:system/setting/choose_time_getaway/select_120secs
execute if score @p[tag=Host] Select24 matches 1 run function mkd:system/setting/choose_time_getaway/select_180secs
execute if score @p[tag=Host] Select28 matches 1 run function mkd:system/setting/choose_time_getaway/select_cancel
execute if score @p[tag=Host] Select34 matches 1 run function mkd:system/setting/choose_time_getaway/select_ok
execute if score @p[tag=Host] Selected matches 1 run function mkd:system/setting/choose_time_getaway/change_to