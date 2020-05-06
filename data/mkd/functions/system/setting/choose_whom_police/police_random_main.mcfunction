###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 06 May 2020
## Version: alpha-0.2
###############################

## Count team
scoreboard players set #Keidoro NumPlayerTmp 0
execute as @a[team=Player,scores={Detected=1}] run scoreboard players add #Keidoro NumPlayerTmp 1
#tellraw @a ["",{"text":"残り"},{"score":{"name":"#Keidoro","objective":"NumPlayerTmp"}},{"text":"人"}]
#tellraw @a ["",{"selector":"@a[team=Player,scores={Detected=1}]"}]

## Number
scoreboard players set #Keidoro PlayerNumber 1
scoreboard players set @a[team=Player,scores={Detected=1}] PlayerNumber 0
function mkd:system/setting/choose_whom_police/police_random_numbering
tag @a remove Numbered

## Randomize generator
scoreboard players set #Keidoro RandomCount 10
function mkd:system/getaway/random_generator/randomizing
scoreboard players operation #Keidoro RandomAnswer %= #Keidoro NumPlayerTmp
scoreboard players add #Keidoro RandomAnswer 1

## Join police team
#execute as @a[team=Player,scores={Detected=1}] if score @s PlayerNumber = #Keidoro RandomAnswer run tellraw @a ["",{"selector":"@s"},{"text":"が選ばれました"}]
execute as @a[team=Player,scores={Detected=1}] if score @s PlayerNumber = #Keidoro RandomAnswer run team join Police @s

## Loop 
scoreboard players add #Keidoro NumPoliceSet 1
scoreboard players remove #Keidoro NumPoliceTmp 1
execute unless score #Keidoro NumPoliceTmp matches ..0 run function mkd:system/setting/choose_whom_police/police_random_main