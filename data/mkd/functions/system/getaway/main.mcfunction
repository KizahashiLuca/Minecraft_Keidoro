###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Process timer system
function mkd:system/time/time

## Detect arrow
execute as @e[type=minecraft:arrow] run data merge entity @s {pickup:2b}
execute as @e[type=minecraft:spectral_arrow] run data merge entity @s {pickup:2b}

## Give Effect
effect give @a[team=Police] minecraft:blindness 1000000 1 true
effect give @a[team=Police] minecraft:slowness 1000000 7 true
effect give @a[gamemode=!spectator] minecraft:resistance 1000000 6 true

## Game Start
execute if score #Keidoro SECOND matches 0 if score #Keidoro TICK matches 0 run function mkd:system/getaway/send_message