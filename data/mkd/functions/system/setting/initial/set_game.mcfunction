###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Set gamerule
gamerule announceAdvancements false
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
gamerule showDeathMessages false
gamerule doLimitedCrafting true
gamerule keepInventory true
difficulty peaceful

## Set world
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:spectral_arrow]
kill @e[type=minecraft:area_effect_cloud]
clear @a
effect clear @a
experience set @a 0 points
gamemode adventure @a[gamemode=!spectator]
recipe give @a mkd:tnt

## Set effect
effect give @a[gamemode=!spectator] minecraft:resistance 1000000 6 true

## Add tags
tag @p[sort=nearest] add Host

## Add teams
team add Player {"text":"参加者"}
team join Player @a[gamemode=adventure]

team add Police {"text":"警察"}
team modify Police color blue
team modify Police friendlyFire true
team modify Police collisionRule always
team modify Police nametagVisibility hideForOtherTeams
team modify Police seeFriendlyInvisibles true
team modify Police deathMessageVisibility hideForOtherTeams

team add Robber {"text":"泥棒"}
team modify Robber color red
team modify Robber friendlyFire true
team modify Robber collisionRule always
team modify Robber nametagVisibility never
team modify Robber seeFriendlyInvisibles true
team modify Robber deathMessageVisibility hideForOtherTeams

## Add scoreboards
function mkd:system/setting/initial/add_scoreboard

## Count players
execute as @a[team=Player] run scoreboard players add #Keidoro NumPlayer 1

## Test
#scoreboard players set #Keidoro NumPlayer 9

## Send messages
execute if score #Keidoro NumPlayer matches 3.. run function mkd:system/setting/initial/send_message
execute if score #Keidoro NumPlayer matches ..2 run function mkd:system/finish/game_short