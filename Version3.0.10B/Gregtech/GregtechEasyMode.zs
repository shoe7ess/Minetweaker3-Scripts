# Name: GregtechEasyMode.zs
# Version Information: Minetweaker 3 v3.0.10b, GTTweaker 1.7.10 v1.4.1, Minecraft v1.7.10
# Author: shoe7ess
# Script Version: 1.1
# Purpose: Make IC² and GregTech work as they did in 1.4:
# i.e. Create IC² T1 Machines > then T2 Machines > and finally Advanced Gregtech Machines is possible again


# May need to import ALL IC² machines
import mods.ic2.Canner;
import mods.ic2.Compressor;
import mods.ic2.Extractor;
import mods.ic2.Macerator;
import mods.ic2.MetalFormer;
import mods.ic2.OreWasher;
import mods.ic2.ThermalCentrifuge;
import mods.gregtech.AlloySmelter;
import mods.gregtech.ArcFurnace;
import mods.gregtech.Assembler;
import mods.gregtech.Autoclave;
import mods.gregtech.BlastFurnace;
import mods.gregtech.Centrifuge;
import mods.gregtech.ChemicalReactor;
import mods.gregtech.ChemicalBath;
import mods.gregtech.Distillery;
import mods.gregtech.Extruder;
import mods.gregtech.Fermenter;
import mods.gregtech.FluidExtractor;
import mods.gregtech.FluidCanner;
import mods.gregtech.ForgeHammer;
import mods.gregtech.FormingPress;
import mods.gregtech.PlasmaArcFurnace;
import mods.gregtech.PlateBender;
import mods.gregtech.PrecisionLaser;
import mods.gregtech.Pulverizer;
import mods.gregtech.Wiremill;
import mods.gregtech.Polarizer;
import mods.gregtech.VacuumFreezer;
import minetweaker.item.IIngredient;
import minetweaker.oredict.IOreDictEntry;

print("Initializing 'GregtechEasyMode.zs' with IC2 Recipe Changes Minetweaker3 Script");

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
val ForgeHammer = <IC2:itemToolForgeHammer:*>;
val CopperCasing = <IC2:itemCasing>;
val TinCasing = <IC2:itemCasing:1>;
val BronzeCasing = <IC2:itemCasing:2>;
val GoldCasing = <IC2:itemCasing:3>;
val IronCasing = <IC2:itemCasing:4>;
val LeadCasing = <IC2:itemCasing:6>;
val SteelDust = <gregtech:gt.metaitem.01:2305>;
val SteelIngot = <ore:ingotSteel>;
val NANDChip = <gregtech:gt.metaitem.01:32700>;
val ObsidianStone = <minecraft:obsidian>;
val ObsidianDust = <IC2:itemDust:11>;
val CrushedIron = (<IC2:itemCrushedOre>);
val CrushedCopper = (<IC2:itemCrushedOre:1>);
val CrushedGold = (<IC2:itemCrushedOre:2>);
val CrushedTin = (<IC2:itemCrushedOre:3>);
val CrushedUranium = (<IC2:itemCrushedOre:4>);
val CrushedSilver = (<IC2:itemCrushedOre:5>);
val CrushedLead = (<IC2:itemCrushedOre:6>);

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
[<ore:dustCoal>, <ore:dustCoal>],
[<ore:dustCoal>, <ore:dustCoal>]]);

#======= IC² Macerator Conversions =======#

# Removes Crushed Ore Recipes
recipes.remove(CrushedCopper);
recipes.remove(CrushedGold);
recipes.remove(CrushedIron);
recipes.remove(CrushedLead);
recipes.remove(CrushedSilver);
recipes.remove(CrushedTin);
recipes.remove(CrushedUranium);

# Macerates Ores Straight to Dusts
Macerator.addRecipe(<IC2:itemDust:3> * 2, <ore:oreCopper>);
Macerator.addRecipe(<IC2:itemDust:4> * 2, <ore:oreGold>);
Macerator.addRecipe(<IC2:itemDust:5> * 2, <ore:oreIron>);
Macerator.addRecipe(<IC2:itemDust:10> * 2, <ore:oreLead>);
Macerator.addRecipe(<IC2:itemDust:6> * 2, <ore:oreSilver>);
Macerator.addRecipe(<IC2:itemDust:7> * 2, <ore:oreTin>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2098> * 2, <IC2:blockOreUran>);
Macerator.addRecipe(ObsidianDust * 2, ObsidianStone);
Macerator.addRecipe(SteelDust * 2, <ore:oreSteel>);

#======= Gregtech Recipe Changes/Additions =======#

# Steel Dust Crafting and Processing
recipes.addShapeless(SteelDust, [<ore:dustIron>, <ore:dustCoal> * 2]);

# NAND Chip from 2x Redstone
recipes.addShapeless(NANDChip, [Redstone, Redstone]);

#----- IC² Machines to Gregtech Counterpart Machine Conversions -----#

# Basic Macerator
recipes.addShapeless(<gregtech:gt.blockmachines:301>, [<IC2:blockMachine:3>]);
# Rotary Macerator
recipes.addShapeless(<gregtech:gt.blockmachines:302>, [<AdvancedMachines:advancedmachines.block>]);

# Electric Furnace
recipes.addShapeless(<gregtech:gt.blockmachines:261>, [<IC2:blockMachine:2>]);
# Induction Furnace
recipes.addShapeless(<gregtech:gt.blockmachines:262>, [<IC2:blockMachine:13>]);

# Extractor
recipes.addShapeless(<gregtech:gt.blockmachines:271>, [<IC2:blockMachine:4>]);
# Centrifuge Extractor
recipes.addShapeless(<gregtech:gt.blockmachines:272>, [<AdvancedMachines:advancedmachines.block:2>]);

# Compressor
recipes.addShapeless(<gregtech:gt.blockmachines:241>, [<IC2:blockMachine:5>]);
# Singularity Compressor
recipes.addShapeless(<gregtech:gt.blockmachines:242>, [<AdvancedMachines:advancedmachines.block:1>]);

# Recycler
recipes.addShapeless(<gregtech:gt.blockmachines:331>, [<IC2:blockMachine:11>]);
# Compacting Recycler
recipes.addShapeless(<gregtech:gt.blockmachines:332>, [<AdvancedMachines:advancedmachines.block:5>]);

# Solid Canning Machine
recipes.addShapeless(<gregtech:gt.blockmachines:231>, [<IC2:blockMachine:9>]);
# Vacuum Canner
recipes.addShapeless(<gregtech:gt.blockmachines:232>, [<AdvancedMachines:advancedmachines.block:3>]);

# Pump
recipes.addShapeless(<gregtech:gt.blockmachines:1140>, [<IC2:blockMachine:8>]);

# Electrolyzer
recipes.addShapeless(<gregtech:gt.blockmachines:371>, [<IC2:blockMachine:10>]);
# Industrial Electrolyzer
recipes.addShapeless(<gregtech:gt.blockmachines:372>, [<techreborn:industrialelectrolyzer>]);

# Metal Former
recipes.addShapeless(<gregtech:gt.blockmachines:281>, [<IC2:blockMachine:4>]);
# Liquescent Extruder
recipes.addShapeless(<gregtech:gt.blockmachines:282>, [<AdvancedMachines:advancedmachines.block:6>]);
# Adv Canning Machine
recipes.addShapeless(<gregtech:gt.blockmachines:282>, [<AdvancedMachines:advancedmachines.block:7>]);

# Ore Washing Plant
recipes.addShapeless(<gregtech:gt.blockmachines:391>, [<IC2:blockMachine:5>]);
# Thermal Washer
recipes.addShapeless(<gregtech:gt.blockmachines:392>, [<AdvancedMachines:advancedmachines.block:4>]);


print("Initialized 'GregtechEasyMode.zs' with IC2 Recipe Changes");
