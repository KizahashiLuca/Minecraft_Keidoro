###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Calculate prison stick number
execute if score @p[tag=Host] PrisonStick matches 1.. unless entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=3}] run function mkd:system/setting/choose_whom_police/area_select
execute as @a[team=Player] run function mkd:system/setting/choose_whom_police/police_detected

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"\\u00A7r警察設定場所設置棒\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r設置済\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:red_wool",tag:{display:{Name:"\"\\u00A7r除去\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dゲームキャンセル\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7bゲームスタート\""},HideFlags:39}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mkd:system/setting/choose_whom_police/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select04 1
execute if entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=3}] run scoreboard players set @p[tag=Host] Select13 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select34 1

scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"\\u00A7r警察設定場所設置棒\""},HideFlags:39}}]}] Select04 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r設置済\""},HideFlags:39}}]}] Select13 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:red_wool",tag:{display:{Name:"\"\\u00A7r除去\""},HideFlags:39}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dゲームキャンセル\""},HideFlags:39}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7bゲームスタート\""},HideFlags:39}}]}] Select34 0

## Change to each phase
execute if score @p[tag=Host] Select04 matches 1 run function mkd:system/setting/choose_whom_police/change_to
execute if score @p[tag=Host] Select13 matches 1 run function mkd:system/setting/choose_whom_police/change_to
execute if score @p[tag=Host] Select22 matches 1 run function mkd:system/setting/choose_whom_police/setter_remove
execute if score @p[tag=Host] Select28 matches 1 run function mkd:stop
execute if score @p[tag=Host] Select34 matches 1 unless entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=3}] run function mkd:system/setting/choose_whom_police/send_error_message
execute if score @p[tag=Host] Select34 matches 1 if entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["police"]},scores={SetPolice=3}] run function mkd:system/setting/choose_whom_police/send_message