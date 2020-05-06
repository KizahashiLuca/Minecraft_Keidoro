###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Detect dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:glowstone",tag:{display:{Name:"\"\\u00A7r警察を手動で指定\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:redstone_lamp",tag:{display:{Name:"\"\\u00A7r警察をランダム指定\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:white_banner",tag:{display:{Name:"\"\\u00A7r-10\""},BlockEntityTag:{Patterns:[{Pattern:hh,Color:14},{Pattern:ts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:white_banner",tag:{display:{Name:"\"\\u00A7r-1\""},BlockEntityTag:{Patterns:[{Pattern:hh,Color:14},{Pattern:ts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:lead",tag:{display:{Name:"\"\\u00A7r警察人数\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:white_banner",tag:{display:{Name:"\"\\u00A7r+1\""},BlockEntityTag:{Patterns:[{Pattern:sc,Color:14},{Pattern:bo,Color:0},{Pattern:bs,Color:0},{Pattern:ts,Color:0}]},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:white_banner",tag:{display:{Name:"\"\\u00A7r+10\""},BlockEntityTag:{Patterns:[{Pattern:sc,Color:14},{Pattern:bo,Color:0},{Pattern:bs,Color:0},{Pattern:ts,Color:0}]},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mkd:system/setting/choose_num_police/drop

## Detect inventory
scoreboard players set @p[tag=Host] Select13 1
scoreboard players set @p[tag=Host] Select19 1
scoreboard players set @p[tag=Host] Select20 1
scoreboard players set @p[tag=Host] Select22 1
scoreboard players set @p[tag=Host] Select24 1
scoreboard players set @p[tag=Host] Select25 1
scoreboard players set @p[tag=Host] Select28 1
scoreboard players set @p[tag=Host] Select34 1

execute if score #Keidoro PoliceManual matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:glowstone",tag:{display:{Name:"\"\\u00A7r警察を手動で指定\""},HideFlags:39}}]}] Select13 0
execute if score #Keidoro PoliceManual matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:redstone_lamp",tag:{display:{Name:"\"\\u00A7r警察をランダム指定\""},HideFlags:39}}]}] Select13 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:19b,Count:10b,id:"minecraft:white_banner",tag:{display:{Name:"\"\\u00A7r-10\""},BlockEntityTag:{Patterns:[{Pattern:hh,Color:14},{Pattern:ts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39}}]}] Select19 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,Count:1b,id:"minecraft:white_banner",tag:{display:{Name:"\"\\u00A7r-1\""},BlockEntityTag:{Patterns:[{Pattern:hh,Color:14},{Pattern:ts,Color:0},{Pattern:bo,Color:0}]},HideFlags:39}}]}] Select20 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:lead",tag:{display:{Name:"\"\\u00A7r警察人数\""},HideFlags:39}}]}] Select22 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,Count:1b,id:"minecraft:white_banner",tag:{display:{Name:"\"\\u00A7r+1\""},BlockEntityTag:{Patterns:[{Pattern:sc,Color:14},{Pattern:bo,Color:0},{Pattern:bs,Color:0},{Pattern:ts,Color:0}]},HideFlags:39}}]}] Select24 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:25b,Count:10b,id:"minecraft:white_banner",tag:{display:{Name:"\"\\u00A7r+10\""},BlockEntityTag:{Patterns:[{Pattern:sc,Color:14},{Pattern:bo,Color:0},{Pattern:bs,Color:0},{Pattern:ts,Color:0}]},HideFlags:39}}]}] Select25 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7r\\u00A7dキャンセル\""},HideFlags:39}}]}] Select28 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:"\"\\u00A7r\\u00A7b決定\""},HideFlags:39}}]}] Select34 0

## Change to each phase
execute if score @p[tag=Host] Select13 matches 1 run function mkd:system/setting/choose_num_police/select_manual_or_auto
execute if score @p[tag=Host] Select19 matches 1 run function mkd:system/setting/choose_num_police/select_minus10
execute if score @p[tag=Host] Select20 matches 1 run function mkd:system/setting/choose_num_police/select_minus01
execute if score @p[tag=Host] Select22 matches 1 run function mkd:system/setting/choose_num_police/change_to
execute if score @p[tag=Host] Select24 matches 1 run function mkd:system/setting/choose_num_police/select_plus01
execute if score @p[tag=Host] Select25 matches 1 run function mkd:system/setting/choose_num_police/select_plus10
execute if score @p[tag=Host] Select28 matches 1 run function mkd:system/setting/choose_num_police/select_cancel
execute if score @p[tag=Host] Select34 matches 1 run function mkd:system/setting/choose_num_police/select_ok