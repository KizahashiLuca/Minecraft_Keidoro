###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Detect host player rotation
execute store result score @s PrisonRot run data get entity @s Rotation[0] 1
execute if score @s PrisonRot matches -360..-316 run scoreboard players set #Keidoro PrisonRot 0
execute if score @s PrisonRot matches -315..-226 run scoreboard players set #Keidoro PrisonRot 1
execute if score @s PrisonRot matches -225..-136 run scoreboard players set #Keidoro PrisonRot 2
execute if score @s PrisonRot matches -135..-46 run scoreboard players set #Keidoro PrisonRot 3
execute if score @s PrisonRot matches -45..44 run scoreboard players set #Keidoro PrisonRot 0
execute if score @s PrisonRot matches 45..134 run scoreboard players set #Keidoro PrisonRot 1
execute if score @s PrisonRot matches 135..224 run scoreboard players set #Keidoro PrisonRot 2
execute if score @s PrisonRot matches 225..314 run scoreboard players set #Keidoro PrisonRot 3
execute if score @s PrisonRot matches 315..359 run scoreboard players set #Keidoro PrisonRot 0

## Send messages
execute if score #Keidoro PrisonRot matches 0 run tellraw @a ["",{"text":"[牢屋設定] ","color":"green"},{"score":{"name":"#Keidoro","objective":"PrisonNumber"},"color":"green"},{"text":"箇所目の牢屋は ","color":"green"},{"text":"北向き","color":"green","bold":true},{"text":" に設置されます。","color":"green"}]
execute if score #Keidoro PrisonRot matches 1 run tellraw @a ["",{"text":"[牢屋設定] ","color":"green"},{"score":{"name":"#Keidoro","objective":"PrisonNumber"},"color":"green"},{"text":"箇所目の牢屋は ","color":"green"},{"text":"東向き","color":"green","bold":true},{"text":" に設置されます。","color":"green"}]
execute if score #Keidoro PrisonRot matches 2 run tellraw @a ["",{"text":"[牢屋設定] ","color":"green"},{"score":{"name":"#Keidoro","objective":"PrisonNumber"},"color":"green"},{"text":"箇所目の牢屋は ","color":"green"},{"text":"南向き","color":"green","bold":true},{"text":" に設置されます。","color":"green"}]
execute if score #Keidoro PrisonRot matches 3 run tellraw @a ["",{"text":"[牢屋設定] ","color":"green"},{"score":{"name":"#Keidoro","objective":"PrisonNumber"},"color":"green"},{"text":"箇所目の牢屋は ","color":"green"},{"text":"西向き","color":"green","bold":true},{"text":" に設置されます。","color":"green"}]