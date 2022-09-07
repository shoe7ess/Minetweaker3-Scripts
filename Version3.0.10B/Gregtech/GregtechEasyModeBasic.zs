# Name: GregtechEasyMode.zs
# Version Information: Minetweaker 3 v3.0.10b, GTTweaker 1.7.10 v1.4.1, Minecraft v1.7.10
# Author: shoe7ess
# Script Version: 1.4.1

#=======================================================================#
# Purpose: Make IC² and GregTech work as they did in 1.4:               #
# i.e. Create IC² T1 Machines > then T2 Machines > and finally Advanced # 
#      Gregtech Machines is possible again                              #
# Also: Adds easier integration between Tech Reborn, MFR, etc, with IC2 #
#       crafting and machine recipes									#
# Next: In order for the rubber recipe changes to work, you may have to #
#		type /mt reload													#
# Finally: There are instructions for getting the GT machine recipes to #
#       work (involving changing Gregtech's Recipe.cfg file             #
#=======================================================================#


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
val Rubber = (<IC2:itemRubber>);

# Necessary Recipe Removal:
recipes.remove(<gregtech:gt.metaitem.01:2896>); # Raw Rubber Dust
recipes.remove(<gregtech:gt.metaitem.01:11880>); # GT Rubber Bar
recipes.remove(<gregtech:gt.metaitem.01:5822>); # Crushed Bauxite
recipes.remove(<gregtech:gt.metaitem.01:5526>); # Crushed Lapis
recipes.remove(CrushedCopper); # Next Few are Self Explanatory
recipes.remove(CrushedGold);
recipes.remove(CrushedIron);
recipes.remove(CrushedLead);
recipes.remove(CrushedSilver);
recipes.remove(CrushedTin);
recipes.remove(CrushedUranium);
recipes.remove(<gregtech:gt.metaitem.01:5019>); # Crushed Aluminium Ore

# Turn Ender Pearl Dust + Iron Dust into 9 Pulsating Iron Nuggets
recipes.addShapeless(<EnderIO:itemMaterial:3> * 9, [<ore:dustIron>, <ore:dustEnderPearl>]);

#******************* IC² Recipe Additions/Changes *******************#

# Empty Cell Recipe
recipes.addShapeless(<IC2:itemCellEmpty> * 3, [<ore:plateTin>]);

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

#----- Machine Casings Redone -----#

# Basic Machine Casing (Just 8 Iron Plates in a circle)
recipes.addShaped(MachineCasing, [
[IronPlate, IronPlate, IronPlate],
[IronPlate, null, IronPlate],
[IronPlate, IronPlate, IronPlate]]);
# GT Heat Proof Machine Casing
recipes.remove(<gregtech:gt.blockcasings:11>);
recipes.addShaped(<gregtech:gt.blockcasings:11>, [
[<ore:plateInvar>, null, <ore:plateInvar>],
[<ore:plateInvar>, <gregtech:gt.blockmachines:4398>, <ore:plateInvar>],
[<ore:plateInvar>, null, <ore:plateInvar>]]);
# GT Solid Steel Machine Casing
recipes.remove(<gregtech:gt.blockcasings2:0>);
recipes.addShaped(<gregtech:gt.blockcasings2:0>, [
[<ore:plateSteel>, null, <ore:plateSteel>],
[<ore:plateSteel>, <gregtech:gt.blockmachines:4401>, <ore:plateSteel>],
[<ore:plateSteel>, null, <ore:plateSteel>]]);
# GT Frost Proof Machine Casing
recipes.remove(<gregtech:gt.blockcasings2:1>);
recipes.addShaped(<gregtech:gt.blockcasings2:1>, [
[<ore:plateAluminium>, null, <ore:plateAluminium>],
[<ore:plateAluminium>, <gregtech:gt.blockmachines:4115>, <ore:plateAluminium>],
[<ore:plateAluminium>, null, <ore:plateAluminium>]]);
# GT ULV Machine Casing
recipes.remove(<gregtech:gt.blockcasings:0>);
recipes.addShaped(<gregtech:gt.blockcasings:0>, [
[<gregtech:gt.metaitem.01:17304>, <gregtech:gt.metaitem.01:17304>, <gregtech:gt.metaitem.01:17304>],
[<gregtech:gt.metaitem.01:17304>, null, <gregtech:gt.metaitem.01:17304>],
[<gregtech:gt.metaitem.01:17304>, <gregtech:gt.metaitem.01:17304>, <gregtech:gt.metaitem.01:17304>]]);
# GT LV Machine Casing
recipes.remove(<gregtech:gt.blockcasings:1>);
recipes.addShaped(<gregtech:gt.blockcasings:1>, [
[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
[<ore:plateSteel>, null, <ore:plateSteel>],
[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
# GT MV Machine Casing
recipes.remove(<gregtech:gt.blockcasings:2>);
recipes.addShaped(<gregtech:gt.blockcasings:2>, [
[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>],
[<ore:plateAluminium>, null, <ore:plateAluminium>],
[<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
# GT HV Machine Casing
recipes.remove(<gregtech:gt.blockcasings:3>);
recipes.addShaped(<gregtech:gt.blockcasings:3>, [
[<gregtech:gt.metaitem.01:17306>, <gregtech:gt.metaitem.01:17306>, <gregtech:gt.metaitem.01:17306>],
[<gregtech:gt.metaitem.01:17306>, null, <gregtech:gt.metaitem.01:17306>],
[<gregtech:gt.metaitem.01:17306>, <gregtech:gt.metaitem.01:17306>, <gregtech:gt.metaitem.01:17306>]]);
# GT EV Machine Casing
recipes.remove(<gregtech:gt.blockcasings:4>);
recipes.addShaped(<gregtech:gt.blockcasings:4>, [
[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],
[<ore:plateTitanium>, null, <ore:plateTitanium>],
[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]]);
# GT IV Machine Casing
recipes.remove(<gregtech:gt.blockcasings:5>);
recipes.addShaped(<gregtech:gt.blockcasings:5>, [
[<gregtech:gt.metaitem.01:17316>, <gregtech:gt.metaitem.01:17316>, <gregtech:gt.metaitem.01:17316>],
[<gregtech:gt.metaitem.01:17316>, null, <gregtech:gt.metaitem.01:17316>],
[<gregtech:gt.metaitem.01:17316>, <gregtech:gt.metaitem.01:17316>, <gregtech:gt.metaitem.01:17316>]]);
# GT LuV Machine Casing
recipes.remove(<gregtech:gt.blockcasings:6>);
recipes.addShaped(<gregtech:gt.blockcasings:6>, [
[<gregtech:gt.metaitem.01:17030>, <gregtech:gt.metaitem.01:17030>, <gregtech:gt.metaitem.01:17030>],
[<gregtech:gt.metaitem.01:17030>, null, <gregtech:gt.metaitem.01:17030>],
[<gregtech:gt.metaitem.01:17030>, <gregtech:gt.metaitem.01:17030>, <gregtech:gt.metaitem.01:17030>]]);
# GT ZPM Machine Casing
recipes.remove(<gregtech:gt.blockcasings:7>);
recipes.addShaped(<gregtech:gt.blockcasings:7>, [
[<ore:plateIridium>, <ore:plateIridium>, <ore:plateIridium>],
[<ore:plateIridium>, null, <ore:plateIridium>],
[<ore:plateIridium>, <ore:plateIridium>, <ore:plateIridium>]]);
# GT UV Machine Casing
recipes.remove(<gregtech:gt.blockcasings:8>);
recipes.addShaped(<gregtech:gt.blockcasings:8>, [
[<ore:plateOsmium>, <ore:plateOsmium>, <ore:plateOsmium>],
[<ore:plateOsmium>, null, <ore:plateOsmium>],
[<ore:plateOsmium>, <ore:plateOsmium>, <ore:plateOsmium>]]);
# GT MAX Machine Casing
recipes.remove(<gregtech:gt.blockcasings:9>);
recipes.addShaped(<gregtech:gt.blockcasings:9>, [
[<gregtech:gt.metaitem.01:17129>, <gregtech:gt.metaitem.01:17129>, <gregtech:gt.metaitem.01:17129>],
[<gregtech:gt.metaitem.01:17129>, null, <gregtech:gt.metaitem.01:17129>],
[<gregtech:gt.metaitem.01:17129>, <gregtech:gt.metaitem.01:17129>, <gregtech:gt.metaitem.01:17129>]]);
# TechReborn Advanced Machine Casing
recipes.remove(<techreborn:machinecasing:2>);
recipes.addShaped(<techreborn:machinecasing:2> * 4, [
[<gregtech:gt.metaitem.01:17030>, <gregtech:gt.metaitem.01:17030>, <gregtech:gt.metaitem.01:17030>],
[<ore:circuitAdvanced>, <techreborn:highlyadvancedmachine>, <ore:circuitAdvanced>],
[<gregtech:gt.metaitem.01:17030>, <gregtech:gt.metaitem.01:17030>, <gregtech:gt.metaitem.01:17030>]]);

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

# Forgehammer Recipes
recipes.addShapeless(CopperCasing * 2, [<ore:plateCopper>, ForgeHammer]);
recipes.addShapeless(TinCasing * 2, [<ore:plateTin>, ForgeHammer]);
recipes.addShapeless(BronzeCasing * 2, [<ore:plateBronze>, ForgeHammer]);
recipes.addShapeless(GoldCasing * 2, [<ore:plateGold>, ForgeHammer]);
recipes.addShapeless(IronCasing * 2, [<ore:plateIron>, ForgeHammer]);
recipes.addShapeless(LeadCasing * 2, [<ore:plateLead>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:17874>, [<gregtech:gt.metaitem.01:11874>, ForgeHammer]);
recipes.addShapeless(<IC2:itemDust:4>, [<ore:oreGold>, ForgeHammer]);
recipes.addShapeless(<IC2:itemDust:5>, [<ore:oreIron>, ForgeHammer]);
recipes.addShapeless(<IC2:itemDust:3>, [<ore:oreCopper>, ForgeHammer]);
recipes.addShapeless(<IC2:itemDust:7>, [<ore:oreTin>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:2098>, [<ore:oreUranium>, ForgeHammer]);
recipes.addShapeless(<IC2:itemDust:6>, [<ore:oreSilver>, ForgeHammer]);
recipes.addShapeless(<IC2:itemDust:10>, [<ore:oreLead>, ForgeHammer]);
recipes.addShapeless(ObsidianDust, [ObsidianStone, ForgeHammer]);
recipes.addShapeless(SteelDust, [<ore:oreSteel>, ForgeHammer]);
recipes.addShapeless(<BigReactors:BRIngot:4>, [<BigReactors:YelloriteOre>, ForgeHammer]);
recipes.addShapeless(<gregtech:gt.metaitem.01:2822>, [<ore:oreBauxite>, ForgeHammer]);
recipes.addShapeless(<minecraft:dye:4> * 6, [<ore:oreLapis>, ForgeHammer]);
recipes.addShapeless(<minecraft:dye:4> * 6, [<ore:oreLapis>, <ImmersiveEngineering:tool:0>]);
recipes.addShapeless(<gregtech:gt.metaitem.01:8525>, [<ore:oreSodalite>, ForgeHammer]);

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

#======= IC²/MFR Furnace Conversions =====#

# MFR Raw Rubber = Rubber
furnace.remove(<gregtech:gt.metaitem.01:11880>); # Original Rubber Ingot Furnace Recipe
furnace.remove(<gregtech:gt.metaitem.01:2874>); # Polyethylene pulp
furnace.addRecipe(Rubber, <MineFactoryReloaded:rubber.raw>);
furnace.addRecipe(Rubber, <IC2:itemHarz>);
furnace.addRecipe(<gregtech:gt.metaitem.01:11880>, <IC2:itemRubber>); # Smelt rubber into rubber ingots

#======= IC² Macerator Conversions =======#

# Macerates Ores Straight to Purified Dusts
Macerator.addRecipe(<IC2:itemDust:5> * 2, <ore:oreIron>);
Macerator.addRecipe(<IC2:itemDust:3> * 2, <ore:oreCopper>);
Macerator.addRecipe(<IC2:itemDust:4> * 2, <ore:oreGold>);
Macerator.addRecipe(<IC2:itemDust:7> * 2, <ore:oreTin>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2098> * 2, <ore:oreUranium>);
Macerator.addRecipe(<IC2:itemDust:6> * 2, <ore:oreSilver>);
Macerator.addRecipe(<IC2:itemDust:10> * 2, <ore:oreLead>);
Macerator.addRecipe(<IC2:itemDust:5> * 4, <ore:oreNetherIron>);
Macerator.addRecipe(<IC2:itemDust:5> * 4, <ore:oreNetherrackIron>);
Macerator.addRecipe(<IC2:itemDust:5> * 4, <ore:oreEndstoneIron>);
Macerator.addRecipe(<IC2:itemDust:5> * 2, <ore:oreBlackgraniteIron>);
Macerator.addRecipe(<IC2:itemDust:5> * 2, <ore:oreRedgraniteIron>);
Macerator.addRecipe(<IC2:itemDust:3> * 4, <ore:oreNetherCopper>);
Macerator.addRecipe(<IC2:itemDust:3> * 4, <ore:oreNetherrackCopper>);
Macerator.addRecipe(<IC2:itemDust:3> * 4, <ore:oreEndstoneCopper>);
Macerator.addRecipe(<IC2:itemDust:3> * 2, <ore:oreBlackgraniteCopper>);
Macerator.addRecipe(<IC2:itemDust:3> * 2, <ore:oreRedgraniteCopper>);
Macerator.addRecipe(<IC2:itemDust:4> * 4, <ore:oreNetherGold>);
Macerator.addRecipe(<IC2:itemDust:4> * 4, <ore:oreNetherrackGold>);
Macerator.addRecipe(<IC2:itemDust:4> * 4, <ore:oreEndstoneGold>);
Macerator.addRecipe(<IC2:itemDust:4> * 2, <ore:oreBlackgraniteGold>);
Macerator.addRecipe(<IC2:itemDust:4> * 2, <ore:oreRedgraniteGold>);
Macerator.addRecipe(<IC2:itemDust:7> * 4, <ore:oreNetherTin>);
Macerator.addRecipe(<IC2:itemDust:7> * 4, <ore:oreNetherrackTin>);
Macerator.addRecipe(<IC2:itemDust:7> * 4, <ore:oreEndstoneTin>);
Macerator.addRecipe(<IC2:itemDust:7> * 2, <ore:oreBlackgraniteTin>);
Macerator.addRecipe(<IC2:itemDust:7> * 2, <ore:oreRedgraniteTin>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2098> * 4, <ore:oreNetherUranium>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2098> * 4, <ore:oreNetherrackUranium>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2098> * 4, <ore:oreEndstoneUranium>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2098> * 2, <ore:oreBlackgraniteUranium>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2098> * 2, <ore:oreRedgraniteUranium>);
Macerator.addRecipe(<IC2:itemDust:6> * 4, <ore:oreNetherSilver>);
Macerator.addRecipe(<IC2:itemDust:6> * 4, <ore:oreNetherrackSilver>);
Macerator.addRecipe(<IC2:itemDust:6> * 4, <ore:oreEndstoneSilver>);
Macerator.addRecipe(<IC2:itemDust:6> * 2, <ore:oreBlackgraniteSilver>);
Macerator.addRecipe(<IC2:itemDust:6> * 2, <ore:oreRedgraniteSilver>);
Macerator.addRecipe(<IC2:itemDust:10> * 4, <ore:oreNetherLead>);
Macerator.addRecipe(<IC2:itemDust:10> * 4, <ore:oreNetherrackLead>);
Macerator.addRecipe(<IC2:itemDust:10> * 4, <ore:oreEndstoneLead>);
Macerator.addRecipe(<IC2:itemDust:10> * 2, <ore:oreBlackgraniteLead>);
Macerator.addRecipe(<IC2:itemDust:10> * 2, <ore:oreRedgraniteLead>);
Macerator.addRecipe(ObsidianDust * 2, ObsidianStone);
Macerator.addRecipe(SteelDust * 2, <ore:oreSteel>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2874>, <IC2:itemRubber>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2880>, <gregtech:gt.metaitem.01:11880>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2830> * 2, <gregtech:gt.blockores:830>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2830> * 2, <techreborn:techreborn.ore:0>);
Macerator.addRecipe(<MineFactoryReloaded:plastic.raw>, <gregtech:gt.metaitem.01:11874>);
Macerator.addRecipe(<BigReactors:BRIngot:4> * 2, <BigReactors:YelloriteOre>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2822> * 2, <ore:oreBauxite>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2822> * 4, <ore:oreNetherrackBauxite>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2822> * 2, <ore:oreBlackgraniteBauxite>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2822> * 4, <ore:oreEndstoneBauxite>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2822> * 2, <ore:oreRedgraniteBauxite>);
Macerator.addRecipe(<minecraft:dye:4> * 12, <ore:oreLapis>);
Macerator.addRecipe(<minecraft:dye:4> * 24, <ore:oreNetherrackLapis>);
Macerator.addRecipe(<minecraft:dye:4> * 24, <ore:oreNetherLapis>);
Macerator.addRecipe(<minecraft:dye:4> * 24, <ore:oreEndstoneLapis>);
Macerator.addRecipe(<minecraft:dye:4> * 12, <ore:oreRedgraniteLapis>);
Macerator.addRecipe(<minecraft:dye:4> * 12, <ore:oreBlackgraniteLapis>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:8525> * 12, <ore:oreSodalite>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:8525> * 24, <ore:oreNetherrackSodalite>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:8525> * 24, <ore:oreEndstoneSodalite>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:8525> * 24, <techreborn:techreborn.ore:11>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:8525> * 12, <ore:oreRedgraniteSodalite>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:8525> * 12, <ore:oreBlackgraniteSodalite>);
Macerator.addRecipe(<gregtech:gt.metaitem.01:2019> * 2, <ore:oreAluminium>);

#======= IC² Extractor Conversions =======#

Extractor.addRecipe(<IC2:itemRubber>, <IC2:blockRubLeaves> * 4);
Extractor.addRecipe(<IC2:itemRubber>, <MineFactoryReloaded:rubberwood.leaves> * 4);
Extractor.addRecipe(<IC2:itemRubber>, <IC2:blockRubSapling>);
Extractor.addRecipe(<IC2:itemRubber>, <MineFactoryReloaded:rubberwood.sapling>);
Extractor.addRecipe(<IC2:itemRubber> * 2, <IC2:blockRubWood>);
Extractor.addRecipe(<IC2:itemRubber> * 2, <MineFactoryReloaded:rubberwood.log>);
Extractor.addRecipe(<IC2:itemRubber> * 3, <IC2:itemHarz>);
Extractor.addRecipe(<IC2:itemRubber> * 3, <MineFactoryReloaded:rubber.raw>);

#======= IC² Thermal Centrifuge ======#

ThermalCentrifuge.addRecipe([<techreborn:ingot:23>, <techreborn:ingot:16>], <gregtech:gt.metaitem.01:2830>, 320);
ThermalCentrifuge.addRecipe([<techreborn:ingot:23>, <techreborn:ingot:16>], <techreborn:dust:32>, 320);
ThermalCentrifuge.addRecipe([<gregtech:gt.metaitem.01:7822>, <gregtech:gt.metaitem.01:375>, <gregtech:gt.metaitem.01:2299>], <gregtech:gt.metaitem.01:2822>, 320);

#*********************** Gregtech Recipe Changes/Additions *****************************#
# Note: For all Gregtech machine recipes, all recipes marked with '//EDITCONFIG' MUST   #
# have fields changed/removed from Gregtechs Recipes.cfg under their respective section #
#***************************************************************************************#

#===== Gregtech Centrifuge Recipes =====#
// Rules: OutputArray, InputFluid, InputStack, InputCell, OutputFluid, OutputArrayChances, Time in Ticks, EnergyUsage

# Gravel to Flint Dust (Taken from one of Dreammaster's configs)
Centrifuge.addRecipe([<gregtech:gt.metaitem.01:2802> * 8],  null, <minecraft:gravel> * 16, null, null, [10000], 50, 1920);

# Rubber to Raw Rubber Dust, Glue Cell [Unable to output liquid glue in array], and 50% chance of plantball
//EDITCONFIG 'Gregtech/Recipes.cfg: centrifuge {' section (default line: 14261) add below "I:ic2.itemHarz_300=300" the line "I:ic2.itemRubber_300=300" in the "ic2.*item* lines
Centrifuge.addRecipe([<gregtech:gt.metaitem.01:2896> * 3, <gregtech:gt.metaitem.01:30726>, <IC2:itemFuelPlantBall>,], null, <IC2:itemRubber>, null, null, [10000, 10000, 5000], 300, 5);

#===== Alloys Smelter Recipes =====#
// Rules: OutputStack, InputStack1, InputStack2, Time in Ticks, EnergyUsage
# Additional Bronze Ingot Recipe (Taken from one of Dreammaster's configs)
AlloySmelter.addRecipe(<gregtech:gt.metaitem.01:11300>, <gregtech:gt.metaitem.01:9057> * 9, <gregtech:gt.metaitem.01:11035>, 200, 16);

//EDITCONFIG 'Gregtech/Recipes.cfg: alloysmelting {' section (default line: 3) add in"I:ic2.itemRubber_130=130" in the "ic2.*item* lines
# Rubber to Rubber Bar
AlloySmelter.addRecipe(<gregtech:gt.metaitem.01:11880>, <IC2:itemRubber>, null, 130, 3);



#----- Miscellaneous Easier Recipes -----#
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
recipes.addShapeless(<IC2:blockMachine:13>, [<gregtech:gt.blockmachines:262>]);

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

recipes.addShapeless(<IC2NuclearControl:ItemEnergySensorLocationCard:*>, [<IC2NuclearControl:RFSensorCard:*>]);

print("Initialized 'GregtechEasyMode.zs' Script");
