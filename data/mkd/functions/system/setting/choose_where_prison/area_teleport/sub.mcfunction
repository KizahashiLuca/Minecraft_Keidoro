###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Branch prison - small
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 0 at @s run tp @p[tag=Teleport] ~ ~ ~-3 0 -15
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 1 at @s run tp @p[tag=Teleport] ~3 ~ ~ 90 -15
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 2 at @s run tp @p[tag=Teleport] ~ ~ ~3 180 -15
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 3 at @s run tp @p[tag=Teleport] ~-3 ~ ~ 270 -15

## Branch prison - medium
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 0 at @s run tp @p[tag=Teleport] ~ ~ ~-5 0 -15
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 1 at @s run tp @p[tag=Teleport] ~5 ~ ~ 90 -15
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 2 at @s run tp @p[tag=Teleport] ~ ~ ~5 180 -15
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 3 at @s run tp @p[tag=Teleport] ~-5 ~ ~ 270 -15

## Branch prison - big
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 0 at @s run tp @p[tag=Teleport] ~ ~ ~-7 0 -15
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 1 at @s run tp @p[tag=Teleport] ~7 ~ ~ 90 -15
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 2 at @s run tp @p[tag=Teleport] ~ ~ ~7 180 -15
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 3 at @s run tp @p[tag=Teleport] ~-7 ~ ~ 270 -15