#============================================================================#
# Name: FTBInventionsMiscFixes.zs                                            #
# Version Information: Miscellaneous mods found in FTB's Inventions modpack  #
#                      *See note below*                                      #
# Author: shoe7ess                                                           #
# Script Version: 1.1b                                                       #
# Purpose: Waystation for recipes too specific to misc mods                  #
# *NOTE* My install includes Gregtech, TConstruct, Immibis Mods, and many    #
#        other mods not in FTBInventions by default, so these may not all    #
#        apply for straight FTBInvention installs
#============================================================================#


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
import mods.mfr.Harvester;
import mods.mfr.MiningLaser;
import mods.mfr.Planter;
import mods.mfr.SludgeBoiler;
import minetweaker.item.IIngredient;
import minetweaker.oredict.IOreDictEntry;


#************ Vals **************#
val VerdantDust = <EE3:alchemicalDust:1>;


#********* Regular Tweaks/Fixes *********#

# Furnace recipe fixing cactus turning into wrong dye in furnace
furnace.remove(<gregtech:gt.metaitem.01:2526>);
furnace.addRecipe(<gregtech:gt.metaitem.01:2526>, <ore:oreLapis>);
furnace.addRecipe(<minecraft:dye:2>, <minecraft:cactus>);
furnace.addRecipe(<minecraft:dye:2>, <ExtrabiomesXL:extrabiomes.paste>);
furnace.addRecipe(<minecraft:dye:2>, <eng_toolbox:hempPlant>);
furnace.addRecipe(<minecraft:dye:2>, <ore:reedTypha>);
recipes.addShaped(<minecraft:paper> * 3, [
[<ore:reedTypha>, <ore:reedTypha>, <ore:reedTypha>],
]);

# Shapeless recipe Glowstone Block to Glowstone Powder
recipes.addShapeless(<minecraft:glowstone_dust> * 4, [<minecraft:glowstone>]);

#********* IC2 *********#

#--- Extractor ---#
Extractor.addRecipe(<ExtrabiomesXL:extrabiomes.dye:2> * 3, <ExtrabiomesXL:flower1:6>);
Extractor.addRecipe(<minecraft:dye:2> * 4, <eng_toolbox:hempPlant>);
Extractor.addRecipe(<minecraft:dye:2> * 4, <ore:reedTypha>);
Extractor.addRecipe(<minecraft:dye:2> * 6, <minecraft:cactus>);
Extractor.addRecipe(<minecraft:dye:2> * 6, <ExtrabiomesXL:extrabiomes.paste>);

#********* Tinker's Construct *********#

# Crafting Station Slab to Vanilla Workbench (full circle)
recipes.addShapeless(<minecraft:crafting_table>, [<TConstruct:CraftingSlab>]);

#********* Logistics Pipes/Additional Buildcraft Objects *********#

# Teleport Pipe Recipe (Sans-Assembly Table)
recipes.addShaped(<additionalpipes:item.PipeItemsTeleport> * 8, [
[<ore:gearDiamond>, <ore:glass>, <ore:gearDiamond>],
]);

#********* TechReborn *********#

#----- Cells/Items with no uses in FTB Inventions converted to Gregtech version -----#

# Chlorine Cell to Gregtech Cell
recipes.addShapeless(<gregtech:gt.metaitem.01:31023>, [<techreborn:cell:5>]);

#********* EE3 *********#

# Verdant Dust Recipe(s)

recipes.addShaped(VerdantDust * 3, [
[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
]);
recipes.addShaped(VerdantDust * 2, [
[<ore:ingotCopper>, <ore:ingotCopper>],
]);

recipes.addShapeless(VerdantDust, [<eng_toolbox:gem:0>]);