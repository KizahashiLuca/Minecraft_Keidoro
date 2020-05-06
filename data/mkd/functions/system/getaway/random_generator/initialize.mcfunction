###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Initialize a seed
scoreboard players set #Keidoro RandomSeed 0
execute as @a store result score @s RandomSeed run data get entity @s Rotation[0] 1
execute as @a[scores={RandomSeed=..0}] run scoreboard players add @s RandomSeed 360
execute as @a run scoreboard players operation #Keidoro RandomSeed += @s RandomSeed
