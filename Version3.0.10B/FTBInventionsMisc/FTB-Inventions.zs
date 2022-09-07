#Name: FTB-Inventions.zs
#Author: Feed the Beast

print("Initializing 'FTB-Inventions'...");

#AE2 Presses
mods.railcraft.Rolling.addShapeless(<appliedenergistics2:item.ItemMultiMaterial:13>, [<minecraft:iron_block>, <minecraft:quartz>]);
mods.railcraft.Rolling.addShapeless(<appliedenergistics2:item.ItemMultiMaterial:14>, [<minecraft:iron_block>, <minecraft:diamond>]);
mods.railcraft.Rolling.addShapeless(<appliedenergistics2:item.ItemMultiMaterial:15>, [<minecraft:iron_block>, <minecraft:gold_ingot>]);
mods.railcraft.Rolling.addShapeless(<appliedenergistics2:item.ItemMultiMaterial:19>, [<minecraft:iron_block>, <EnderIO:itemMaterial>]);

#AE2 Skystone
recipes.addShaped(<appliedenergistics2:tile.BlockSkyStone> * 2, [[<ore:stone>, <ore:dustCoal>, <ore:stone>], [<ore:dustCoal>, <ore:dustCoal>, <ore:dustCoal>], [<ore:stone>, <ore:dustCoal>, <ore:stone>]]);

#Techreborn Chunkloader
recipes.remove(<techreborn:chunkloader>);

#Ore Dictionary Removal
#MFR Pink Slimeball ore dict removal to fix pink slime block crafting
val entry = <ore:slimeball>;
entry.remove(<MineFactoryReloaded:pinkslime>);

print("Initialized 'FTB-Inventions.zs'");