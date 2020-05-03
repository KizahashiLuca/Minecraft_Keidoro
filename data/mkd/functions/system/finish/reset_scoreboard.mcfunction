###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Remove scoreboards for game phase
scoreboard objectives remove Phase
scoreboard objectives remove Death
scoreboard objectives remove Arrested
scoreboard objectives remove SpawnTime
scoreboard objectives remove UseConduit
scoreboard objectives remove HasConduit
scoreboard objectives remove HasGunpowder
scoreboard objectives remove NumPlayer
scoreboard objectives remove NumPrison
scoreboard objectives remove NumPolice
scoreboard objectives remove NumRobber
scoreboard objectives remove NumBurglar
scoreboard objectives remove TimeGetaway
scoreboard objectives remove TimeLimit
scoreboard objectives remove Teleport
scoreboard objectives remove SECOND
scoreboard objectives remove TICK
## Remove scoreboards for prison area
scoreboard objectives remove PrisonMinX
scoreboard objectives remove PrisonMinY
scoreboard objectives remove PrisonMinZ
scoreboard objectives remove PrisonMaxX
scoreboard objectives remove PrisonMaxY
scoreboard objectives remove PrisonMaxZ
## Remove scoreboards for getaway phase
scoreboard objectives remove NumPlayerTmp
scoreboard objectives remove PlayerNumber
scoreboard objectives remove RandomSeed
scoreboard objectives remove RandomCount
scoreboard objectives remove RandomAnswer
scoreboard objectives remove RandomModder
scoreboard objectives remove RandomMultiplier
## Remove scoreboards for setting phase - common
scoreboard objectives remove ThrowItem
scoreboard objectives remove Select02
scoreboard objectives remove Select04
scoreboard objectives remove Select06
scoreboard objectives remove Select11
scoreboard objectives remove Select12
scoreboard objectives remove Select13
scoreboard objectives remove Select14
scoreboard objectives remove Select15
scoreboard objectives remove Select18
scoreboard objectives remove Select19
scoreboard objectives remove Select20
scoreboard objectives remove Select21
scoreboard objectives remove Select22
scoreboard objectives remove Select23
scoreboard objectives remove Select24
scoreboard objectives remove Select25
scoreboard objectives remove Select26
scoreboard objectives remove Select28
scoreboard objectives remove Select34
scoreboard objectives remove Selected
## Remove scoreboards for setting phase - choose num prison
scoreboard objectives remove NumPrisonPrv
## Remove scoreboards for setting phase - choose num police
scoreboard objectives remove 2
scoreboard objectives remove 3
scoreboard objectives remove NumPoliceMax
scoreboard objectives remove NumPoliceMin
scoreboard objectives remove NumPolicePrv
scoreboard objectives remove NumPoliceTmp
## Remove scoreboards for setting phase - choose num robber
scoreboard objectives remove NumRobberMax
scoreboard objectives remove NumRobberMin
scoreboard objectives remove NumRobberPrv
scoreboard objectives remove NumRobberTmp
## Remove scoreboards for setting phase - choose time getaway
scoreboard objectives remove TimeGetawayPrv
## Remove scoreboards for setting phase - choose time limit
scoreboard objectives remove TimeLimitPrv
## Remove scoreboards for setting phase - choose where prison
scoreboard objectives remove PrisonPosX
scoreboard objectives remove PrisonPosY
scoreboard objectives remove PrisonPosZ
scoreboard objectives remove PrisonStick
scoreboard objectives remove SetPrison
scoreboard objectives remove SetNumPrison
## Remove scoreboards for prison state
scoreboard objectives remove PrisonRot
scoreboard objectives remove PrisonSize
scoreboard objectives remove PrisonBroken
scoreboard objectives remove PrisonNumber

## Remove players
scoreboard players reset @a
scoreboard players reset #Keidoro