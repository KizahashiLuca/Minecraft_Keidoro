###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Calculate time
scoreboard players remove #Keidoro SECOND 1
execute if score #Keidoro SECOND matches ..-1 run scoreboard players set #Keidoro SECOND 0

## Store time for bossbar
execute store result bossbar minecraft:bossbar value run scoreboard players get #Keidoro SECOND
execute if score #Keidoro Phase matches 100 run bossbar set minecraft:bossbar name [{"text":"逃走時間  残り "},{"score":{"name":"#Keidoro","objective":"SECOND"}},{"text":" 秒"}]
execute if score #Keidoro Phase matches 10 run bossbar set minecraft:bossbar name [{"text":"制限時間  残り "},{"score":{"name":"#Keidoro","objective":"SECOND"}},{"text":" 秒"}]

## Process the sound system
execute if score #Keidoro SECOND matches 4..10 as @a run playsound minecraft:item.trident.return master @s ~ ~ ~ 1 1 1
execute if score #Keidoro SECOND matches 1..3 as @a run playsound minecraft:item.trident.throw master @s ~ ~ ~ 1 1 1
execute if score #Keidoro SECOND matches 0 as @a run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 1 1