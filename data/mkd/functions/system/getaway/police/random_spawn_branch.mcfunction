###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Branch prison - small
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 0 run spawnpoint @p[team=Police,tag=SettingRespawn] ~ ~1 ~-3
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 1 run spawnpoint @p[team=Police,tag=SettingRespawn] ~3 ~1 ~
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 2 run spawnpoint @p[team=Police,tag=SettingRespawn] ~ ~1 ~3
execute if score @s PrisonSize matches 1 if score @s PrisonRot matches 3 run spawnpoint @p[team=Police,tag=SettingRespawn] ~-3 ~1 ~

## Branch prison - medium
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 0 run spawnpoint @p[team=Police,tag=SettingRespawn] ~ ~1 ~-5
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 1 run spawnpoint @p[team=Police,tag=SettingRespawn] ~5 ~1 ~
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 2 run spawnpoint @p[team=Police,tag=SettingRespawn] ~ ~1 ~5
execute if score @s PrisonSize matches 2 if score @s PrisonRot matches 3 run spawnpoint @p[team=Police,tag=SettingRespawn] ~-5 ~1 ~

## Branch prison - big
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 0 run spawnpoint @p[team=Police,tag=SettingRespawn] ~ ~1 ~-7
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 1 run spawnpoint @p[team=Police,tag=SettingRespawn] ~7 ~1 ~
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 2 run spawnpoint @p[team=Police,tag=SettingRespawn] ~ ~1 ~7
execute if score @s PrisonSize matches 3 if score @s PrisonRot matches 3 run spawnpoint @p[team=Police,tag=SettingRespawn] ~-7 ~1 ~