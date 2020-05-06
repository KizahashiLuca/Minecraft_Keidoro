###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_door",tag:{display:{Name:"\"\\u00A7r牢屋個数設定\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:lead",tag:{display:{Name:"\"\\u00A7r警察人数設定\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:arrow",tag:{display:{Name:"\"\\u00A7r強盗人数設定\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r逃走時間設定\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r制限時間設定\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dゲームキャンセル\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7b牢屋箇所設定へ\""},HideFlags:39}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mkd:system/setting/choose_setting/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select20 1
scoreboard players set @p[tag=Host] Select21 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select23 1
scoreboard players set @p[tag=Host] Select24 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select34 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:iron_door",tag:{display:{Name:"\"\\u00A7r牢屋個数設定\""},HideFlags:39}}]}] Select20 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:lead",tag:{display:{Name:"\"\\u00A7r警察人数設定\""},HideFlags:39}}]}] Select21 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:arrow",tag:{display:{Name:"\"\\u00A7r強盗人数設定\""},HideFlags:39}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r逃走時間設定\""},HideFlags:39}}]}] Select23 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r制限時間設定\""},HideFlags:39}}]}] Select24 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dゲームキャンセル\""},HideFlags:39}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7b牢屋箇所設定へ\""},HideFlags:39}}]}] Select34 0

## Change to each phase
execute if score @p[tag=Host] Select20 matches 1 run function mkd:system/setting/choose_num_prison/change_to
execute if score @p[tag=Host] Select21 matches 1 run function mkd:system/setting/choose_num_police/change_to
execute if score @p[tag=Host] Select22 matches 1 run function mkd:system/setting/choose_num_robber/change_to
execute if score @p[tag=Host] Select23 matches 1 run function mkd:system/setting/choose_time_getaway/change_to
execute if score @p[tag=Host] Select24 matches 1 run function mkd:system/setting/choose_time_limit/change_to
execute if score @p[tag=Host] Select28 matches 1 run function mkd:stop
execute if score @p[tag=Host] Select34 matches 1 run function mkd:system/setting/choose_setting/send_message