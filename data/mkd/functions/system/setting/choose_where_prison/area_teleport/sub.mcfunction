###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Branch prison - small
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 0 at @s run tp @p[tag=Teleport] ~ ~1 ~-3 0 0
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 1 at @s run tp @p[tag=Teleport] ~3 ~1 ~ 90 0
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 2 at @s run tp @p[tag=Teleport] ~ ~1 ~3 180 0
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 3 at @s run tp @p[tag=Teleport] ~-3 ~1 ~ 270 0

## Branch prison - medium
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 0 at @s run tp @p[tag=Teleport] ~ ~1 ~-5 0 0
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 1 at @s run tp @p[tag=Teleport] ~5 ~1 ~ 90 0
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 2 at @s run tp @p[tag=Teleport] ~ ~1 ~5 180 0
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 3 at @s run tp @p[tag=Teleport] ~-5 ~1 ~ 270 0

## Branch prison - big
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 0 at @s run tp @p[tag=Teleport] ~ ~1 ~-7 0 0
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 1 at @s run tp @p[tag=Teleport] ~7 ~1 ~ 90 0
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 2 at @s run tp @p[tag=Teleport] ~ ~1 ~7 180 0
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 3 at @s run tp @p[tag=Teleport] ~-7 ~1 ~ 270 0