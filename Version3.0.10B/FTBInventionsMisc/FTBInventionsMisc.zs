#============================================================================#
# Name: FTBInventionsMisc.zs                                                 #
# Version Information: Miscellaneous mods found in FTB's Inventions modpack  #
# Author: shoe7ess                                                           #
# Script Version: 1.0                                                        #
# Purpose: Waystation for recipes too specific to misc mods                  #
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

#********* Logistics Pipes/Additional Buildcraft Objects *********#
// Teleport Pipe Recipe (Sans-Assembly Table)
recipes.addShaped(<additionalpipes:item.PipeItemsTeleport> * 8, [
[<ore:gearDiamond>, <ore:glass>, <ore:gearDiamond>],
]);