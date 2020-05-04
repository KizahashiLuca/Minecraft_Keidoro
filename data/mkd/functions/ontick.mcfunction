###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Login with en route
execute if score #Keidoro Phase matches 1..100 run function mkd:system/en_route

## Run every tick
execute if score #Keidoro Phase matches 90 run function mkd:system/setting/choose_setting/main
execute if score #Keidoro Phase matches 91 run function mkd:system/setting/choose_num_prison/main
execute if score #Keidoro Phase matches 92 run function mkd:system/setting/choose_num_police/main
execute if score #Keidoro Phase matches 93 run function mkd:system/setting/choose_num_robber/main
execute if score #Keidoro Phase matches 94 run function mkd:system/setting/choose_time_getaway/main
execute if score #Keidoro Phase matches 95 run function mkd:system/setting/choose_time_limit/main
execute if score #Keidoro Phase matches 97 run function mkd:system/setting/choose_whom_police/main
execute if score #Keidoro Phase matches 98 run function mkd:system/setting/choose_where_prison/main
execute if score #Keidoro Phase matches 100 run function mkd:system/getaway/main
execute if score #Keidoro Phase matches 90..100 as @a run function mkd:system/setting/choose_where_prison/area_teleport/main
execute if score #Keidoro Phase matches 10 run function mkd:system/ongame/main
execute if score #Keidoro Phase matches 11..12 run function mkd:system/finish/game_exit