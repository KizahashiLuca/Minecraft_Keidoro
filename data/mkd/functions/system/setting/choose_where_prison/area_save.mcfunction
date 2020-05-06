###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Detect host player rotation
function mkd:system/setting/choose_where_prison/detect_rotation

## Save area
setblock ~ ~ ~ minecraft:structure_block{mode:"SAVE",powered:0b,posX:-7,posY:0,posZ:-7,sizeX:15,sizeY:4,sizeZ:15,showboundingbox:1b,showair:1b}

execute if score #Keidoro PrisonNumber matches 1 as @p[tag=Host] at @s run data merge block ~ ~ ~ {name:"mkd:save1"}
execute if score #Keidoro PrisonNumber matches 2 as @p[tag=Host] at @s run data merge block ~ ~ ~ {name:"mkd:save2"}
execute if score #Keidoro PrisonNumber matches 3 as @p[tag=Host] at @s run data merge block ~ ~ ~ {name:"mkd:save3"}
execute if score #Keidoro PrisonNumber matches 4 as @p[tag=Host] at @s run data merge block ~ ~ ~ {name:"mkd:save4"}
execute if score #Keidoro PrisonNumber matches 5 as @p[tag=Host] at @s run data merge block ~ ~ ~ {name:"mkd:save5"}

## Set redstone block
execute as @p[tag=Host] at @s run setblock ~ ~1 ~ minecraft:redstone_block

## Summon area_effect_cloud
execute as @p[tag=Host] at @s align x align y align z run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {Duration:100000000,Radius:1,RadiusPerTick:0,Tags:["save","summoned"]}
scoreboard players operation @e[type=minecraft:area_effect_cloud,nbt={Tags:["save","summoned"]}] PrisonRot = #Keidoro PrisonRot
scoreboard players operation @e[type=minecraft:area_effect_cloud,nbt={Tags:["save","summoned"]}] PrisonNumber = #Keidoro PrisonNumber
scoreboard players set @e[type=minecraft:area_effect_cloud,nbt={Tags:["save","summoned"]}] PrisonBroken 0

## Set prison size
execute if entity @p[tag=Host,nbt={SelectedItemSlot:2}] run scoreboard players set @e[type=minecraft:area_effect_cloud,nbt={Tags:["save","summoned"]}] PrisonSize 1
execute if entity @p[tag=Host,nbt={SelectedItemSlot:4}] run scoreboard players set @e[type=minecraft:area_effect_cloud,nbt={Tags:["save","summoned"]}] PrisonSize 2
execute if entity @p[tag=Host,nbt={SelectedItemSlot:6}] run scoreboard players set @e[type=minecraft:area_effect_cloud,nbt={Tags:["save","summoned"]}] PrisonSize 3

scoreboard players set @e[type=minecraft:area_effect_cloud,nbt={Tags:["save","summoned"]}] SetPrison 1
tag @e[type=minecraft:area_effect_cloud,nbt={Tags:["save","summoned"]}] remove summoned

## Detect position of area_effect_cloud
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]}] if score @s PrisonNumber = #Keidoro PrisonNumber store result score @s PrisonPosX run data get entity @s Pos[0] 1
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]}] if score @s PrisonNumber = #Keidoro PrisonNumber store result score @s PrisonPosY run data get entity @s Pos[1] 1
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]}] if score @s PrisonNumber = #Keidoro PrisonNumber store result score @s PrisonPosZ run data get entity @s Pos[2] 1