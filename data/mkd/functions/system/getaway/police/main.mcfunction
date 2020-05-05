###############################
## Minecraft Version 1.15.2
## Minecraft Keidoro
## Author : KizahashiLuca
## Date   : 02 May 2020
## Version: alpha-0.1
###############################

## Give for Police
give @a[team=Police] minecraft:lead{display:{Name:"\"\\u00A7r\\u00A7b手錠\"",Lore:["\"\\u00A7r\\u00A77ダメージ増加 ⅭⅭ\""]},Unbreakable:1,Enchantments:[{id:"minecraft:sharpness",lvl:200}],HideFlags:1} 1
give @a[team=Police] minecraft:crossbow{display:{Name:"\"\\u00A7r\\u00A7bグレネードランチャー\""},Unbreakable:1} 1
give @a[team=Police] minecraft:tipped_arrow{display:{Name:"\"\\u00A7r\\u00A7bスタングレネード\"",Lore:["\"\\u00A7r\\u00A7c移動速度低下 Ⅶ (0:10)\"","\"\\u00A7r\\u00A7c盲目 (0:10)\"","\"\"","\"\\u00A7r\\u00A75効果:\"","\"\\u00A7r\\u00A7c移動速度上昇 -120%\""]},CustomPotionEffects:[{Id:2,Amplifier:7,Duration:200},{Id:15,Duration:200}],HideFlags:32} 5

replaceitem entity @a[team=Police] armor.head minecraft:diamond_helmet{display:{Name:"\"\\u00A7r\\u00A7b警官帽\""},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1}
replaceitem entity @a[team=Police] armor.chest minecraft:diamond_chestplate{display:{Name:"\"\\u00A7r\\u00A7b警官制服\""},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1}
replaceitem entity @a[team=Police] armor.legs minecraft:diamond_leggings{display:{Name:"\"\\u00A7r\\u00A7b警官制服\""},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1}
replaceitem entity @a[team=Police] armor.feet minecraft:diamond_boots{display:{Name:"\"\\u00A7r\\u00A7b警官靴\""},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],Unbreakable:1}