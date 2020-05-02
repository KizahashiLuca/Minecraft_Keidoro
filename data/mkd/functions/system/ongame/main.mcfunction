###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Process timer system
function mkd:system/time/time

## Detect item
kill @e[type=item,nbt={Item:{id:"minecraft:iron_door"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_torch"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:stone_pressure_plate"}}]

## Detect arrow
execute as @e[type=minecraft:arrow] run data merge entity @s {pickup:2b}
execute as @e[type=minecraft:spectral_arrow] run data merge entity @s {pickup:2b}

## Detect arrested robber
execute as @a[team=Robber,scores={SpawnTime=1..}] run function mkd:system/ongame/detect_arrested

## Detect drop
execute as @a[team=Robber,scores={Death=1..}] at @s run function mkd:system/ongame/drop_item

## Decide police respawn
scoreboard players operation #Keidoro NumPlayerTmp = #Keidoro NumPolice
function mkd:system/getaway/police/random_spawn_main

## Decide robber respawn
scoreboard players operation #Keidoro NumPlayerTmp = #Keidoro NumBurglar
function mkd:system/getaway/robber/random_spawn_main
tag @a remove SetRespawn

## Conduit system
execute as @a[team=Police,scores={Death=1..}] run function mkd:system/ongame/conduit/gunpowder_drop
execute as @a[team=Robber,nbt={SelectedItem:{id:"minecraft:conduit"}}] run function mkd:system/ongame/conduit/weapon_mainhand
execute as @a[team=Robber,nbt={Inventory:[{Slot:-106b,id:"minecraft:conduit"}]}] run function mkd:system/ongame/conduit/weapon_offhand
execute if entity @p[team=Robber,scores={UseConduit=1..}] as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3,PrisonBroken=0}] run function mkd:system/ongame/conduit/prison_break/branch
execute if entity @p[team=Robber,scores={UseConduit=1..}] as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3,PrisonSize=3,PrisonBroken=1}] run function mkd:system/ongame/conduit/prison_break/branch_2nd

## Judge win / loss
execute unless entity @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3,PrisonBroken=0}] run scoreboard players set #Keidoro Phase 11
#execute unless entity @p[team=Robber,scores={Arrested=0}] run scoreboard players set #Keidoro Phase 12

## Game Finish
scoreboard players set #Keidoro Arrested 0
execute as @a[team=Robber,scores={Arrested=1}] run scoreboard players add #Keidoro Arrested 1
execute if score #Keidoro SECOND matches 0 if score #Keidoro TICK matches 0 if score #Keidoro Arrested < #Keidoro NumRobberTmp run scoreboard players set #Keidoro Phase 11
execute if score #Keidoro SECOND matches 0 if score #Keidoro TICK matches 0 if score #Keidoro Arrested >= #Keidoro NumRobberTmp run scoreboard players set #Keidoro Phase 12