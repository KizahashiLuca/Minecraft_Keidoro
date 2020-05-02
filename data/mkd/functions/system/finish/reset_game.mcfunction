###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Reset prison
scoreboard players operation #Keidoro PrisonNumber = #Keidoro NumPrison
function mkd:system/finish/reset_prison

## Remove teams
team remove Player
team remove Police
team remove Robber

## Remove scoreboards
function mkd:system/finish/reset_scoreboard

## Remove bossbar
bossbar remove minecraft:bossbar

## Remove tags
tag @a remove Host
tag @a remove Numbered
tag @a remove Robber
tag @a remove Burglar
tag @a remove SetRespawn
tag @a remove SettingRespawn
tag @s remove DetectArrest
tag @s remove Arrested

## Reset players
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:area_effect_cloud]
clear @a
effect clear @a
experience set @a 0 points
gamemode adventure @a

## Reset gamerule
gamerule announceAdvancements true
gamerule sendCommandFeedback true
gamerule commandBlockOutput true
gamerule showDeathMessages true
gamerule doLimitedCrafting false
gamerule keepInventory false
difficulty peaceful