# Name: ExtraBiomesXLChanges
# Version Information: ExtraBiomesXLChanges v3.16.4, Minecraft v1.7.10
# Author: shoe7ess
# Script Version: 1.1

#========================================================================================#
# Purpose: Allows ExtraBiomesXL to use the vanilla crafting recipes for slabs as well as #
#		   adding integration into Natura Crafting Tables                                #
#========================================================================================#

import minetweaker.item.IIngredient;
import minetweaker.oredict.IOreDictEntry;

print("Initializing 'Extra Biomex XL Changes' Script");

#*********** ExtraBiomesXL Vanilla Style Recipes Added and Mod Compatability ***********#

#================ Variables ================#

#----- Planks -----#
# ExtrabiomesXL Planks
val RedwoodPlanks = <ExtrabiomesXL:planks>;
val FirwoodPlanks = <ExtrabiomesXL:planks:1>;
val AcaciaPlanks = <ExtrabiomesXL:planks:2>;
val CypressPlanks = <ExtrabiomesXL:planks:3>;
val JapaneseMaplePlanks = <ExtrabiomesXL:planks:4>;
val RainbowEucalyptusPlanks = <ExtrabiomesXL:planks:5>;
val AutumnPlanks = <ExtrabiomesXL:planks:6>;
val BaldCypressPlanks = <ExtrabiomesXL:planks:7>;
val SakuraPlanks = <ExtrabiomesXL:planks:8>;
val RedRock = <ExtrabiomesXL:terrain_blocks1>;
val RedCobblestone = <ExtrabiomesXL:terrain_blocks1:1>;
val RedBrick = <ExtrabiomesXL:terrain_blocks1:2>;

# Natura Planks
val EucalyptusPlanks = <Natura:planks>;
val SakuraNaturaPlanks = <Natura:planks:1>;
val GhostwoodPlanks = <Natura:planks:2>;
val RedwoodNaturaPlanks = <Natura:planks:3>;
val BloodwoodPlanks = <Natura:planks:4>;
val HopseedPlanks = <Natura:planks:5>;
val MaplePlanks = <Natura:planks:6>;
val SilverbellPlanks = <Natura:planks:7>;
val AmaranthPlanks = <Natura:planks:8>;
val TigerwoodPlanks = <Natura:planks:9>;
val WillowPlanks = <Natura:planks:10>;
val DarkwoodPlanks = <Natura:planks:11>;
val FusewoodPlanks = <Natura:planks:12>;

# Natura Pressure Plates
val EucalyptusPressure = <Natura:pressureplate.eucalyptus>;
val SakuraNaturaPressure = <Natura:pressureplate.sakura>;
val GhostwoodPressure = <Natura:pressureplate.ghostwood>;
val RedwoodNaturaPressure = <Natura:pressureplate.redwood>;
val BloodwoodPressure = <Natura:pressureplate.bloodwood>;
val HopseedPressure = <Natura:pressureplate.hopseed>;
val MaplePressure = <Natura:pressureplate.maple>;
val SilverbellPressure = <Natura:pressureplate.silverbell>;
val AmaranthPressure = <Natura:pressureplate.amaranth>;
val TigerwoodPressure = <Natura:pressureplate.tiger>;
val WillowPressure = <Natura:pressureplate.willow>;
val DarkwoodPressure = <Natura:pressureplate.darkwood>;
val FusewoodPressure = <Natura:pressureplate.fusewood>;

# Vanilla Planks
val MinecraftPlanks = <minecraft:planks:*>;

# Vanilla Pressure Plates
val PressurePlate = <minecraft:wooden_pressure_plate>;

# Extra Utilities Planks
val ExtraUtilitiesPlanks = <ExtraUtilities:colorWoodPlanks:*>;

# Engineer's Toolbox Planks
val EngineersToolboxPlanks = <eng_toolbox:paintedPlanks:*>;

# Forestry Planks
val ForestryPlanks = <Forestry:planks:*>;
val ForestryPlanksFire = <Forestry:planksFireproof:*>;


#----- Slabs -----#
# ExtrabiomesXL Slabs
val SakuraSlab = <ExtrabiomesXL:woodslab2>;
val RedwoodSlab = <ExtrabiomesXL:woodslab>;
val FirwoodSlab = <ExtrabiomesXL:woodslab:1>;
val AcaciaSlab = <ExtrabiomesXL:woodslab:2>;
val CypressSlab = <ExtrabiomesXL:woodslab:3>;
val JapaneseMapleSlab = <ExtrabiomesXL:woodslab:4>;
val RainbowEucalyptusSlab = <ExtrabiomesXL:woodslab:5>;
val AutumnSlab = <ExtrabiomesXL:woodslab:6>;
val BaldCypressSlab = <ExtrabiomesXL:woodslab:7>;
val RedCobblestoneSlab = <ExtrabiomesXL:slabRedRock>;
val RedRockSlab = <ExtrabiomesXL:slabRedRock:1>;
val RedBrickSlab = <ExtrabiomesXL:slabRedRock:2>;

# Natura Slabs
val AmaranthSlab = <Natura:plankSlab2>;
val TigerwoodSlab = <Natura:plankSlab2:1>; 
val WillowSlab = <Natura:plankSlab2:2>;
val DarkwoodSlab = <Natura:plankSlab2:3>;
val FusewoodSlab = <Natura:plankSlab2:4>;
val EucalyptusSlab = <Natura:plankSlab1>;
val SakuraNaturaSlab = <Natura:plankSlab1:1>;
val GhostwoodSlab = <Natura:plankSlab1:2>;
val RedwoodNaturaSlab = <Natura:plankSlab1:3>;
val BloodwoodSlab = <Natura:plankSlab1:4>;
val HopseedSlab = <Natura:plankSlab1:5>;
val MapleSlab = <Natura:plankSlab1:6>;
val SilverbellSlab = <Natura:plankSlab1:7>;

#----- Double Slabs -----#
# ExtrabiomesXL Double Slabs
val SakuraDoubleSlab =  <ExtrabiomesXL:double_woodslab2>;
val RedwoodDoubleSlab = <ExtrabiomesXL:double_woodslab>;
val FirwoodDoubleSlab = <ExtrabiomesXL:double_woodslab:1>;
val AcaciaDoubleSlab = <ExtrabiomesXL:double_woodslab:2>;
val CypressDoubleSlab = <ExtrabiomesXL:double_woodslab:3>;
val JapaneseMapleDoubleSlab = <ExtrabiomesXL:double_woodslab:4>;
val RainbowEucalyptusDoubleSlab = <ExtrabiomesXL:double_woodslab:5>;
val AutumnDoubleSlab = <ExtrabiomesXL:double_woodslab:6>;
val BaldCypressDoubleSlab = <ExtrabiomesXL:double_woodslab:7>;
val RedCobblestoneDoubleSlab = <ExtrabiomesXL:double_slabRedRock>;
val RedRockDoubleSlab = <ExtrabiomesXL:double_slabRedRock:1>;
val RedBrickDoubleSlab = <ExtrabiomesXL:double_slabRedRock:2>;

#----- Crafting Tables -----#
val CraftingTable = <minecraft:crafting_table>;

# Natura Tables
val SakuraWoodTable = <Natura:Natura.workbench>;
val FirWoodTable =  <Natura:Natura.workbench:1>;
val CypressWoodTable = <Natura:Natura.workbench:2>;
val JapaneseMapleTable = <Natura:Natura.workbench:3>;
val AutumnWoodTable = <Natura:Natura.workbench:4>;
val BaldCypressTable = <Natura:Natura.workbench:5>;
val RedwoodTable = <Natura:Natura.workbench:6>;
val AcaciaTable = <Natura:Natura.workbench:7>;
val AmaranthTable = <Natura:Natura.workbench:8>;
val TigerwoodTable = <Natura:Natura.workbench:9>;
val WillowTable = <Natura:Natura.workbench:10>;
val RainbowEucalyptusTable = <Natura:Natura.workbench:11>;
val FusewoodTable = <Natura:Natura.workbench:12>;

#----- Slab Recipes -----#
# ExtrabiomesXL Slabs from Planks/Stone
recipes.addShaped(SakuraSlab * 6, [
[null, null, null],
[null, null, null],
[SakuraPlanks, SakuraPlanks, SakuraPlanks]]);
recipes.addShaped(RedwoodSlab * 6, [
[null, null, null],
[null, null, null],
[RedwoodPlanks, RedwoodPlanks, RedwoodPlanks]]);
recipes.addShaped(FirwoodSlab * 6, [
[null, null, null],
[null, null, null],
[FirwoodPlanks, FirwoodPlanks, FirwoodPlanks]]);
recipes.addShaped(AcaciaSlab * 6, [
[null, null, null],
[null, null, null],
[AcaciaPlanks, AcaciaPlanks, AcaciaPlanks]]);
recipes.addShaped(CypressSlab * 6, [
[null, null, null],
[null, null, null],
[CypressPlanks, CypressPlanks, CypressPlanks]]);
recipes.addShaped(JapaneseMapleSlab * 6, [
[null, null, null],
[null, null, null],
[JapaneseMaplePlanks, JapaneseMaplePlanks, JapaneseMaplePlanks]]);
recipes.addShaped(RainbowEucalyptusSlab * 6, [
[null, null, null],
[null, null, null],
[RainbowEucalyptusPlanks, RainbowEucalyptusPlanks, RainbowEucalyptusPlanks]]);
recipes.addShaped(AutumnSlab * 6, [
[null, null, null],
[null, null, null],
[AutumnPlanks, AutumnPlanks, AutumnPlanks]]);
recipes.addShaped(BaldCypressSlab * 6, [
[null, null, null],
[null, null, null],
[BaldCypressPlanks, BaldCypressPlanks, BaldCypressPlanks]]);
recipes.addShaped(RedRockSlab * 6, [
[null, null, null],
[null, null, null],
[RedRock, RedRock, RedRock]]);
recipes.addShaped(RedCobblestoneSlab * 6, [
[null, null, null],
[null, null, null],
[RedCobblestone, RedCobblestone, RedCobblestone]]);
recipes.addShaped(RedBrickSlab * 6, [
[null, null, null],
[null, null, null],
[RedBrick, RedBrick, RedBrick]]);

#------ Double Slab Recipes (No Current Use) -----#
# ExtrabiomesXL Double Slabs
recipes.addShaped(SakuraDoubleSlab, [
[SakuraSlab],
[SakuraSlab]]);
recipes.addShaped(RedwoodDoubleSlab, [
[RedwoodSlab],
[RedwoodSlab]]);
recipes.addShaped(FirwoodDoubleSlab, [
[FirwoodSlab],
[FirwoodSlab]]);
recipes.addShaped(AcaciaDoubleSlab, [
[AcaciaSlab],
[AcaciaSlab]]);
recipes.addShaped(CypressDoubleSlab, [
[CypressSlab],
[CypressSlab]]);
recipes.addShaped(JapaneseMapleDoubleSlab, [
[JapaneseMapleSlab],
[JapaneseMapleSlab]]);
recipes.addShaped(RainbowEucalyptusDoubleSlab, [
[RainbowEucalyptusSlab],
[RainbowEucalyptusSlab]]);
recipes.addShaped(AutumnDoubleSlab, [
[AutumnSlab],
[AutumnSlab]]);
recipes.addShaped(BaldCypressDoubleSlab, [
[BaldCypressSlab],
[BaldCypressSlab]]);
recipes.addShaped(RedCobblestoneDoubleSlab, [
[RedCobblestoneSlab],
[RedCobblestoneSlab]]);
recipes.addShaped(RedRockDoubleSlab, [
[RedRockSlab],
[RedRockSlab]]);
recipes.addShaped(RedBrickDoubleSlab, [
[RedBrickSlab],
[RedBrickSlab]]);

#----- Double Slabs to Planks -----#
# Natura Planks from Slabs
recipes.addShaped(EucalyptusPlanks, [
[EucalyptusSlab],
[EucalyptusSlab]]);
recipes.addShaped(SakuraNaturaPlanks, [
[SakuraNaturaSlab],
[SakuraNaturaSlab]]);
recipes.addShaped(GhostwoodPlanks, [
[GhostwoodSlab],
[GhostwoodSlab]]);
recipes.addShaped(RedwoodNaturaPlanks, [
[RedwoodNaturaSlab],
[RedwoodNaturaSlab]]);
recipes.addShaped(BloodwoodPlanks, [
[BloodwoodSlab],
[BloodwoodSlab]]);
recipes.addShaped(HopseedPlanks, [
[HopseedSlab],
[HopseedSlab]]);
recipes.addShaped(MaplePlanks, [
[MapleSlab],
[MapleSlab]]);
recipes.addShaped(SilverbellPlanks, [
[SilverbellSlab],
[SilverbellSlab]]);
recipes.addShaped(AmaranthPlanks, [
[AmaranthSlab],
[AmaranthSlab]]);
recipes.addShaped(TigerwoodPlanks, [
[TigerwoodSlab],
[TigerwoodSlab]]);
recipes.addShaped(WillowPlanks, [
[WillowSlab],
[WillowSlab]]);
recipes.addShaped(DarkwoodPlanks, [
[DarkwoodSlab],
[DarkwoodSlab]]);
recipes.addShaped(FusewoodPlanks, [
[FusewoodSlab],
[FusewoodSlab]]);

# ExtrabiomesXL Planks/Stones from Double Slab
recipes.addShapeless(CypressPlanks, [CypressDoubleSlab]);
recipes.addShapeless(RedwoodPlanks, [RedwoodDoubleSlab]);
recipes.addShapeless(FirwoodPlanks, [FirwoodDoubleSlab]);
recipes.addShapeless(AcaciaPlanks, [AcaciaDoubleSlab]);
recipes.addShapeless(JapaneseMaplePlanks, [JapaneseMapleDoubleSlab]);
recipes.addShapeless(RainbowEucalyptusPlanks, [RainbowEucalyptusDoubleSlab]);
recipes.addShapeless(AutumnPlanks, [AutumnDoubleSlab]);
recipes.addShapeless(BaldCypressPlanks, [BaldCypressDoubleSlab]);
recipes.addShapeless(SakuraPlanks, [SakuraDoubleSlab]);
recipes.addShapeless(RedRock, [RedRockDoubleSlab]);
recipes.addShapeless(RedCobblestone, [RedCobblestoneDoubleSlab]);
recipes.addShapeless(RedBrick, [RedBrickDoubleSlab]);

#===== Remove then Re-Add Vanilla Crafting Table and Pressure Plate Recipe(s) =====#
# Remove ALL Existing Crafting Table Recipes
recipes.remove(CraftingTable);
# Vanilla Planks Crafting Table
recipes.addShaped(CraftingTable, [
[MinecraftPlanks, MinecraftPlanks],
[MinecraftPlanks, MinecraftPlanks]]);
# Engineer's Toolbox Planks Crafting Table
recipes.addShaped(CraftingTable, [
[EngineersToolboxPlanks, EngineersToolboxPlanks],
[EngineersToolboxPlanks, EngineersToolboxPlanks]]);
# Extra Utilities Planks Crafting Table
recipes.addShaped(CraftingTable, [
[ExtraUtilitiesPlanks, ExtraUtilitiesPlanks],
[ExtraUtilitiesPlanks, ExtraUtilitiesPlanks]]);
# Forestry Crafting Table
recipes.addShaped(CraftingTable, [
[ForestryPlanks, ForestryPlanks],
[ForestryPlanks, ForestryPlanks]]);
recipes.addShaped(CraftingTable, [
[ForestryPlanksFire, ForestryPlanksFire],
[ForestryPlanksFire, ForestryPlanksFire]]);

# Remove ALL Existing Pressure Plate Recipes
recipes.remove(PressurePlate);
# Vanilla Planks Pressure Plate
recipes.addShaped(PressurePlate, [
[MinecraftPlanks, MinecraftPlanks]]);
# Engineer's Toolbox Planks Pressure Plate
recipes.addShaped(PressurePlate, [
[EngineersToolboxPlanks, EngineersToolboxPlanks]]);
# Extra Utilities Planks Pressure Plate
recipes.addShaped(PressurePlate, [
[ExtraUtilitiesPlanks, ExtraUtilitiesPlanks]]);
# Forestry Pressure Plate
recipes.addShaped(PressurePlate, [
[ForestryPlanks, ForestryPlanks]]);
recipes.addShaped(PressurePlate, [
[ForestryPlanksFire, ForestryPlanksFire]]);

#=========== Natura Recipes made with ExtraBiomexXL Wood ===========#
# Disable the following recipes if you do not use:                  #
# Natura, Extra Utilities, or Engineer's Toolbox                    #
# Disable by placing # or // in front of each line or delete recipe #
#===================================================================#

#---------- Natura Pressure Plates from ExtrabiomesXL ----------#

recipes.addShaped(RedwoodNaturaPressure, [
[RedwoodPlanks, RedwoodPlanks]]);
recipes.addShaped(SilverbellPressure, [
[FirwoodPlanks, FirwoodPlanks]]);
recipes.addShaped(WillowPressure, [
[AcaciaPlanks, AcaciaPlanks]]);
recipes.addShaped(GhostwoodPressure, [
[CypressPlanks, CypressPlanks]]);
recipes.addShaped(AmaranthPressure, [
[JapaneseMaplePlanks, JapaneseMaplePlanks]]);
recipes.addShaped(DarkwoodPressure, [
[RainbowEucalyptusPlanks, RainbowEucalyptusPlanks]]);
recipes.addShaped(BloodwoodPressure, [
[AutumnPlanks, AutumnPlanks]]);
recipes.addShaped(SakuraNaturaPressure, [
[BaldCypressPlanks, BaldCypressPlanks]]);
recipes.addShaped(EucalyptusPressure, [
[SakuraPlanks, SakuraPlanks]]);

#---------- Natura Crafting Table Recipes ----------#
recipes.addShaped(SakuraWoodTable, [
[SakuraPlanks, SakuraPlanks],
[SakuraPlanks, SakuraPlanks]]);
recipes.addShaped(FirWoodTable, [
[FirwoodPlanks, FirwoodPlanks],
[FirwoodPlanks, FirwoodPlanks]]);
recipes.addShaped(CypressWoodTable, [
[CypressPlanks, CypressPlanks],
[CypressPlanks, CypressPlanks]]);
recipes.addShaped(JapaneseMapleTable, [
[JapaneseMaplePlanks, JapaneseMaplePlanks],
[JapaneseMaplePlanks, JapaneseMaplePlanks]]);
recipes.addShaped(AutumnWoodTable, [
[AutumnPlanks, AutumnPlanks],
[AutumnPlanks, AutumnPlanks]]);
recipes.addShaped(BaldCypressTable, [
[BaldCypressPlanks, BaldCypressPlanks],
[BaldCypressPlanks, BaldCypressPlanks]]);
recipes.addShaped(RedwoodTable, [
[RedwoodPlanks, RedwoodPlanks],
[RedwoodPlanks, RedwoodPlanks]]);
recipes.addShaped(AcaciaTable, [
[AcaciaPlanks, AcaciaPlanks],
[AcaciaPlanks, AcaciaPlanks]]);
recipes.addShaped(RainbowEucalyptusTable, [
[RainbowEucalyptusPlanks, RainbowEucalyptusPlanks],
[RainbowEucalyptusPlanks, RainbowEucalyptusPlanks]]);

# Natura Pressure Plates to Normal Pressure Plates Shapeless
recipes.addShapeless(PressurePlate, [EucalyptusPressure]);
recipes.addShapeless(PressurePlate, [SakuraNaturaPressure]);
recipes.addShapeless(PressurePlate, [GhostwoodPressure]);
recipes.addShapeless(PressurePlate, [RedwoodNaturaPressure]);
recipes.addShapeless(PressurePlate, [BloodwoodPressure]);
recipes.addShapeless(PressurePlate, [HopseedPressure]);
recipes.addShapeless(PressurePlate, [MaplePressure]);
recipes.addShapeless(PressurePlate, [SilverbellPressure]);
recipes.addShapeless(PressurePlate, [AmaranthPressure]);
recipes.addShapeless(PressurePlate, [TigerwoodPressure]);
recipes.addShapeless(PressurePlate, [WillowPressure]);
recipes.addShapeless(PressurePlate, [DarkwoodPressure]);
recipes.addShapeless(PressurePlate, [FusewoodPressure]);

#---------- ExtraBiomexXL to Natura Planks Recipes ----------#
recipes.addShapeless(TigerwoodPlanks, [CypressPlanks, <minecraft:dye:11>]); #Mix with Yellow Dye
recipes.addShapeless(TigerwoodPlanks, [AutumnPlanks, <minecraft:dye:11>]);
recipes.addShapeless(WillowPlanks, [CypressPlanks, <minecraft:dye:2>]); # Mix with Green Dye
recipes.addShapeless(WillowPlanks, [AutumnPlanks, <minecraft:dye:2>]);
recipes.addShapeless(FusewoodPlanks, [CypressPlanks, <minecraft:dye:6>]); # Mix with Cyan Dye
recipes.addShapeless(FusewoodPlanks, [AutumnPlanks, <minecraft:dye:6>]);
recipes.addShapeless(AmaranthPlanks, [CypressPlanks, <minecraft:dye:5>]); # Mix with Purple Dye
recipes.addShapeless(AmaranthPlanks, [AutumnPlanks, <minecraft:dye:5>]);

print("Initialized 'Extra Biomex XL Changes' Script");
