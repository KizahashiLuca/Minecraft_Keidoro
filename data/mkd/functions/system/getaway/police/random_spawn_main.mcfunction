###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Decrement
#tellraw @a ["",{"text":"残り"},{"score":{"name":"#Keidoro","objective":"NumPlayerTmp"}},{"text":"人"}]

## Number
scoreboard players set #Keidoro PlayerNumber 1
scoreboard players set @a[team=Police,tag=!SetRespawn] PlayerNumber 0
function mkd:system/getaway/police/random_spawn_numbering
tag @a remove Numbered
#execute as @a[team=Police,tag=!SetRespawn] run tellraw @a ["",{"selector":"@s"},{"text":"  "},{"score":{"name":"@s","objective":"PlayerNumber"}}]

## Randomize respawner
scoreboard players set #Keidoro RandomCount 10
function mkd:system/getaway/random_generator/randomizing
scoreboard players operation #Keidoro RandomAnswer %= #Keidoro NumPrison
scoreboard players operation #Keidoro PrisonNumber = #Keidoro RandomAnswer
scoreboard players add #Keidoro PrisonNumber 1

## Randomize generator
scoreboard players set #Keidoro RandomCount 10
function mkd:system/getaway/random_generator/randomizing
scoreboard players operation #Keidoro RandomAnswer %= #Keidoro NumPlayerTmp
scoreboard players add #Keidoro RandomAnswer 1

## Set police respawn point
#execute as @a[team=Police,tag=!SetRespawn] if score @s PlayerNumber = #Keidoro RandomAnswer run tellraw @a ["",{"selector":"@s"},{"text":"が選ばれました。"}]
execute as @a[team=Police,tag=!SetRespawn] if score @s PlayerNumber = #Keidoro RandomAnswer run tag @s add SettingRespawn
execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3}] if score @s PrisonNumber = #Keidoro PrisonNumber at @s run function mkd:system/getaway/police/random_spawn_branch
#execute as @e[type=minecraft:area_effect_cloud,nbt={Tags:["save"]},scores={SetPrison=3}] if score @s PrisonNumber = #Keidoro PrisonNumber at @s run tellraw @a ["",{"selector":"@p[team=Police,tag=SettingRespawn]"},{"text":"のスポーン位置が ["},{"nbt":"Pos[0]","entity":"@p[team=Police,tag=SettingRespawn]"},{"text":", "},{"nbt":"Pos[1]","entity":"@p[team=Police,tag=SettingRespawn]"},{"text":", "},{"nbt":"Pos[2]","entity":"@p[team=Police,tag=SettingRespawn]"},{"text":"] に設定されました。"}]
tag @a[team=Police,tag=SettingRespawn] add SetRespawn
tag @a[team=Police,tag=SettingRespawn] remove SettingRespawn
scoreboard players reset @a[team=Police,tag=SetRespawn] PlayerNumber

## Loop 
scoreboard players remove #Keidoro NumPlayerTmp 1
execute unless score #Keidoro NumPlayerTmp matches ..0 run function mkd:system/getaway/police/random_spawn_main