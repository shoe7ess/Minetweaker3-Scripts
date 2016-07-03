# Name: GregtechEasyMode.zs
# Version Information: Minetweaker 3 v3.0.10b, GTTweaker 1.7.10 v1.4.1, Minecraft v1.7.10
# Author: shoe7ess
# Purpose: Make IC² and GregTech work as they did in 1.4:
# i.e. Create IC² T1 Machines > then T2 Machines > and finally Advanced Gregtech Machines is possible again

import mods.ic2.Macerator;
import minetweaker.item.IIngredient;
import minetweaker.oredict.IOreDictEntry;

# General Coal to Charcoal Converter (Just a little helpful script that allows coal/charcoal to be placed in a crafting grid and converted to its' counterpart)
recipes.addShapeless(<minecraft:coal:0>, [<minecraft:coal:1>]);
recipes.addShapeless(<minecraft:coal:1>, [<minecraft:coal:0>]);

#------------------------- Gregtech IC² Compatability ----------------------#

#================ Variables ================#
val ElectricFurnace = <IC2:blockMachine:2>; # Not used yet, if I find any GT Dusts unable to be processed by this machine I will add them
val InductionFurnace = <IC2:blockMachine:13>; # See Above
val MachineCasing = <IC2:blockMachine:0>;
val IronPlate = <ore:plateIron>;
val ElectronicCircuit = <IC2:itemPartCircuit>;
val AdvancedCircuit = <IC2:itemPartCircuitAdv>;
val REBattery = <IC2:itemBatREDischarged>;
val AdvREBattery = <IC2:itemAdvBat>;
val EnergiumDust = <IC2:itemDust2:2>;
val EnergyCrystal = <IC2:itemBatCrystal>;
val EnergyCrystalCharge = <IC2:itemBatCrystal:*>;
val LapotronCrystal = <IC2:itemBatLamaCrystal>;
val DiamondDust = <ore:dustDiamond>;
val Redstone = <ore:dustRedstone>;
val RawCarbonFibre = <IC2:itemPartCarbonFibre>;
val BronzeDust = <ore:dustBronze>;
val ForgeHammer = <IC2:itemToolForgeHammer>;
val CopperCasing = <IC2:itemCasing>;
val TinCasing = <IC2:itemCasing:1>;
val BronzeCasing = <IC2:itemCasing:2>;
val GoldCasing = <IC2:itemCasing:3>;
val IronCasing = <IC2:itemCasing:4>;
val LeadCasing = <IC2:itemCasing:6>;
val SteelDust = <gregtech:gt.metaitem.01:2305>;
val SteelIngot = <ore:ingotSteel>;
val NANDChip = <gregtech:gt.metaitem.01:32700>;

#*************** IC² Recipe Additions/Changes ***************#

# Empty Cell
recipes.addShapeless(<IC2:itemCellEmpty> * 3, [<ore:plateTin>]);

# Basic Machine Casing (Just 8 Iron Plates in a circle
recipes.addShaped(MachineCasing, [
[IronPlate, IronPlate, IronPlate],
[IronPlate, null, IronPlate],
[IronPlate, IronPlate, IronPlate]]);

# Electronic Circuit
recipes.addShaped(ElectronicCircuit, [
[<ore:wireCopper>, <ore:wireCopper>, <ore:wireCopper>],
[Redstone, IronPlate, Redstone],
[<ore:wireCopper>, <ore:wireCopper>, <ore:wireCopper>]]);

recipes.addShaped(ElectronicCircuit, [
[<ore:wireCopper>, Redstone, <ore:wireCopper>],
[<ore:wireCopper>, IronPlate, <ore:wireCopper>],
[<ore:wireCopper>, Redstone, <ore:wireCopper>]]);

recipes.addShaped(ElectronicCircuit * 2, [
[<ore:wireCopper>, <ore:wireCopper>, <ore:wireCopper>],
[<ore:ingotElectrum>, IronPlate, <ore:ingotElectrum>],
[<ore:wireCopper>, <ore:wireCopper>, <ore:wireCopper>]]);

recipes.addShaped(ElectronicCircuit * 2, [
[<ore:wireCopper>, <ore:ingotElectrum>, <ore:wireCopper>],
[<ore:wireCopper>, IronPlate, <ore:wireCopper>],
[<ore:wireCopper>, <ore:ingotElectrum>, <ore:wireCopper>]]);

# Advanced Circuit
recipes.addShaped(AdvancedCircuit, [
[<ore:dustRedstone>, <ore:dustGlowstone>, <ore:dustRedstone>],
[<ore:dustLapis>, ElectronicCircuit, <ore:dustLapis>],
[<ore:dustRedstone>, <ore:dustGlowstone>, <ore:dustRedstone>]]);


# Energium Dust 
recipes.addShaped(EnergiumDust * 9, [
[Redstone, DiamondDust, Redstone],
[DiamondDust, Redstone, DiamondDust],
[Redstone, DiamondDust, Redstone]]);

# IC² 2x Ingot-> Double Plate Stacking possible with IC² Forge Hammer
recipes.addShapeless(<gregtech:gt.metaitem.01:18035>, [<ore:ingotCopper>, <ore:ingotCopper>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:18057>, [<ore:ingotTin>, <ore:ingotTin>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:18300>, [<ore:ingotBronze>, <ore:ingotBronze>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:18086>, [<ore:ingotGold>, <ore:ingotGold>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:18032>, [<ore:ingotIron>, <ore:ingotIron>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:18089>, [<ore:ingotLead>, <ore:ingotLead>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:18303>, [<ore:ingotElectrum>, <ore:ingotElectrum>, ForgeHammer]);

# IC² Plate-> Double Plate Stacking
recipes.addShapeless(<gregtech:gt.metaitem.01:18035>, [<ore:plateCopper>, <ore:plateCopper>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:18057>, [<ore:plateTin>, <ore:plateTin>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:18300>, [<ore:plateBronze>, <ore:platetBronze>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:18086>, [<ore:plateGold>, <ore:plateGold>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:18032>, [<ore:plateIron>, <ore:plateIron>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:18089>, [<ore:plateLead>, <ore:plateLead>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:18303>, [<ore:plateElectrum>, <ore:plateElectrum>, ForgeHammer]);

# Item Casings with ForgeHammer (This may be redundant)
recipes.addShapeless(CopperCasing * 2, [<ore:plateCopper>, ForgeHammer]);
recipes.addShapeless(TinCasing * 2, [<ore:plateTin>, ForgeHammer]);
recipes.addShapeless(BronzeCasing * 2, [<ore:plateBronze>, ForgeHammer]);
recipes.addShapeless(GoldCasing * 2, [<ore:plateGold>, ForgeHammer]);
recipes.addShapeless(IronCasing * 2, [<ore:plateIron>, ForgeHammer]);
recipes.addShapeless(LeadCasing * 2, [<ore:plateLead>, ForgeHammer]);

# RE-Battery
recipes.addShaped(REBattery, [
[null, <IC2:itemCable:13>, null],
[TinCasing, Redstone, TinCasing],
[TinCasing, Redstone, TinCasing]]);

# Advanced RE-Battery
recipes.addShaped(AdvREBattery, [
[<IC2:itemCable>, BronzeCasing, <IC2:itemCable>],
[BronzeCasing, <ore:dustSulfur>, BronzeCasing],
[BronzeCasing, <ore:dustLead>, BronzeCasing]]);

# Energy Crystal
recipes.addShapeless(EnergyCrystal, [EnergiumDust * 9]);

# Lapotron Crystal
recipes.addShaped(LapotronCrystal, [
[<ore:dustLapis>, AdvancedCircuit, <ore:dustLapis>],
[<ore:dustLapis>, EnergyCrystalCharge, <ore:dustLapis>],
[<ore:dustLapis>, AdvancedCircuit, <ore:dustLapis>]]);

# Raw Carbon Fibre from Coal Dust
recipes.addShapedMirrored(RawCarbonFibre, [
[<ore:dustCoal>, <ore:dustCoal>, null],
[<ore:dustCoal>, <ore:dustCoal>, null],
[null, null, null]]);

#======= IC² Macerator Conversions =======#

# Removes Crushed Ore Recipes
recipes.remove(<ore:crushedCopper>);
recipes.remove(<ore:crushedGold>);
recipes.remove(<ore:crushedIron>);
recipes.remove(<ore:crushedLead>);
recipes.remove(<ore:crushedSilver>);
recipes.remove(<ore:crushedTin>);

# Macerates Ores Straight to Dusts
Macerator.addRecipe(<IC2:itemDust:3> * 2, <ore:oreCopper>);
Macerator.addRecipe(<IC2:itemDust:4> * 2, <ore:oreGold>);
Macerator.addRecipe(<IC2:itemDust:5> * 2, <ore:oreIron>);
Macerator.addRecipe(<IC2:itemDust:10> * 2, <ore:oreLead>);
Macerator.addRecipe(<IC2:itemDust:6> * 2, <ore:oreSilver>);
Macerator.addRecipe(<IC2:itemDust:7> * 2, <ore:oreTin>);
Macerator.addRecipe(SteelDust * 2, <ore:oreSteel>);

#----- Gregtech Recipe Changes/Additions -----#

# Steel Dust Crafting and Processing
recipes.addShapeless(SteelDust, [<ore:dustIron>, <ore:dustCoal> * 2]);

# NAND Chip from 2xRedstone
recipes.addShapeless(NANDChip, [Redstone, Redstone]);


print("Initialized 'GregtechEasyMode.zs' with IC2 Recipe Changes");