###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Add scoreboards for game phase
scoreboard objectives add Phase dummy
scoreboard objectives add Death deathCount
scoreboard objectives add Arrested deathCount
scoreboard objectives setdisplay list Arrested
scoreboard objectives add NumAlive dummy {"text":"泥棒人数"}
scoreboard objectives setdisplay sidebar NumAlive
scoreboard objectives add SpawnTime minecraft.custom:minecraft.time_since_death
scoreboard objectives add UseConduit minecraft.used:minecraft.conduit
scoreboard objectives add HasConduit dummy
scoreboard objectives add HasGunpowder dummy
scoreboard objectives add NumPlayer dummy
scoreboard objectives add NumPrison dummy
scoreboard objectives add NumPolice dummy
scoreboard objectives add NumRobber dummy
scoreboard objectives add NumBurglar dummy
scoreboard objectives add TimeLimit dummy
scoreboard objectives add TimeGetaway dummy
scoreboard objectives add Teleport trigger
scoreboard objectives add SECOND dummy
scoreboard objectives add TICK dummy
## Add scoreboards for prison area
scoreboard objectives add PrisonMinX dummy
scoreboard objectives add PrisonMinY dummy
scoreboard objectives add PrisonMinZ dummy
scoreboard objectives add PrisonMaxX dummy
scoreboard objectives add PrisonMaxY dummy
scoreboard objectives add PrisonMaxZ dummy
## Add scoreboards for getaway phase
scoreboard objectives add NumPlayerTmp dummy
scoreboard objectives add PlayerNumber dummy
scoreboard objectives add RandomSeed dummy
scoreboard objectives add RandomCount dummy
scoreboard objectives add RandomAnswer dummy
scoreboard objectives add RandomModder dummy
scoreboard objectives add RandomMultiplier dummy
## Add scoreboards for setting phase - common
scoreboard objectives add ThrowItem dummy
scoreboard objectives add Select02 dummy
scoreboard objectives add Select04 dummy
scoreboard objectives add Select06 dummy
scoreboard objectives add Select11 dummy
scoreboard objectives add Select12 dummy
scoreboard objectives add Select13 dummy
scoreboard objectives add Select14 dummy
scoreboard objectives add Select15 dummy
scoreboard objectives add Select18 dummy
scoreboard objectives add Select19 dummy
scoreboard objectives add Select20 dummy
scoreboard objectives add Select21 dummy
scoreboard objectives add Select22 dummy
scoreboard objectives add Select23 dummy
scoreboard objectives add Select24 dummy
scoreboard objectives add Select25 dummy
scoreboard objectives add Select26 dummy
scoreboard objectives add Select28 dummy
scoreboard objectives add Select34 dummy
scoreboard objectives add Selected dummy
## Add scoreboards for setting phase - choose num prison
scoreboard objectives add NumPrisonPrv dummy
## Add scoreboards for setting phase - choose num police
scoreboard objectives add 2 dummy
scoreboard objectives add 3 dummy
scoreboard objectives add NumPoliceMax dummy
scoreboard objectives add NumPoliceMin dummy
scoreboard objectives add NumPolicePrv dummy
scoreboard objectives add NumPoliceTmp dummy
scoreboard objectives add NumPoliceSet dummy
scoreboard objectives add PoliceManual dummy
scoreboard objectives add PoliceManualPrv dummy
## Add scoreboards for setting phase - choose num robber
scoreboard objectives add NumRobberMax dummy
scoreboard objectives add NumRobberMin dummy
scoreboard objectives add NumRobberPrv dummy
scoreboard objectives add NumRobberTmp dummy
scoreboard objectives add NumRobberSet dummy
## Add scoreboards for setting phase - choose time getaway
scoreboard objectives add TimeGetawayPrv dummy
## Add scoreboards for setting phase - choose time limit
scoreboard objectives add TimeLimitPrv dummy
## Add scoreboards for setting phase - choose where prison
scoreboard objectives add PrisonPosX dummy
scoreboard objectives add PrisonPosY dummy
scoreboard objectives add PrisonPosZ dummy
scoreboard objectives add PrisonStick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add SetPrison dummy
scoreboard objectives add SetNumPrison dummy
## Add scoreboards for prison state
scoreboard objectives add PrisonRot dummy
scoreboard objectives add PrisonSize dummy
scoreboard objectives add PrisonBroken dummy
scoreboard objectives add PrisonNumber dummy

## Set scoreboards for game phase
scoreboard players set #Keidoro Phase 0
scoreboard players set @a Death 0
scoreboard players set @a Arrested 0
scoreboard players set @a UseConduit 0
scoreboard players set #Keidoro NumPlayer 0
scoreboard players set #Keidoro NumPrison 3
scoreboard players set #Keidoro NumPolice 1
scoreboard players set #Keidoro NumRobber 1
scoreboard players set #Keidoro NumBurglar 1
scoreboard players set #Keidoro TimeLimit 20
scoreboard players set #Keidoro TimeGetaway 90
scoreboard players enable @a Teleport
scoreboard players set #Keidoro SECOND 0
scoreboard players set #Keidoro TICK 0
## Add scoreboards for getaway phase
scoreboard players set #Keidoro NumPlayerTmp 1
scoreboard players set #Keidoro PlayerNumber 1
scoreboard players set @a[team=Player] PlayerNumber 1
scoreboard players set #Keidoro RandomSeed 1
scoreboard players set @a[team=Player] RandomSeed 1
scoreboard players set #Keidoro RandomCount 10
scoreboard players set #Keidoro RandomAnswer 1
scoreboard players set #Keidoro RandomModder 2147483647
scoreboard players set #Keidoro RandomMultiplier 48271
## Set scoreboards for setting phase - choose num prison
scoreboard players set #Keidoro NumPrisonPrv 3
## Set scoreboards for setting phase - choose num police
scoreboard players set #Keidoro 2 2
scoreboard players set #Keidoro 3 3
scoreboard players set #Keidoro NumPoliceMax 1
scoreboard players set #Keidoro NumPoliceMin 1
scoreboard players set #Keidoro NumPolicePrv 1
scoreboard players set #Keidoro NumPoliceTmp 1
scoreboard players set #Keidoro NumPoliceSet 0
scoreboard players set #Keidoro PoliceManual 0
## Set scoreboards for setting phase - choose num police
scoreboard players set #Keidoro NumRobberMax 1
scoreboard players set #Keidoro NumRobberMin 1
scoreboard players set #Keidoro NumRobberPrv 1
scoreboard players set #Keidoro NumRobberTmp 1
scoreboard players set #Keidoro NumRobberSet 0
## Set scoreboards for setting phase - choose time limit
scoreboard players set #Keidoro TimeLimitPrv 20
## Set scoreboards for setting phase - choose time getaway
scoreboard players set #Keidoro TimeGetawayPrv 90
## Set scoreboards for setting phase - choose where prison
scoreboard players set #Keidoro PrisonPosX 0
scoreboard players set #Keidoro PrisonPosY 0
scoreboard players set #Keidoro PrisonPosZ 0
scoreboard players set @p[tag=Host] PrisonStick 0
scoreboard players set #Keidoro SetNumPrison 0
## Add scoreboards for prison state
scoreboard players set #Keidoro PrisonRot 0
scoreboard players set #Keidoro PrisonNumber 0