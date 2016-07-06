# Name: ExtraBiomesXLChanges
<<<<<<< HEAD
# Version Information: ExtraBiomesXLChanges v3.16.4, Minecraft v1.7.10, Extra Utilities
# Author: shoe7ess
# Script Version: 1.1
# Purpose: Allows ExtraBiomesXL to use the vanilla crafting recipes for slabs as well as
#		   adding integration into Natura Crafting Tables
=======
# Version Information: ExtraBiomesXL v3.16.4, Natura v2.2.0.1, Minecraft v1.7.10
# Script Version: v1.0.0c
# Author: shoe7ess
# Purpose: Allows normal slab creation with Planks as well as Natura supprot/integration
>>>>>>> origin/master

import minetweaker.item.IIngredient;
import minetweaker.oredict.IOreDictEntry;

print("Initializing 'Extra Biomex XL Changes' Script");

#****************** ExtraBiomexXL Vanilla Style Recipes Added and Mod Compatability ******************#

#================ Variables ================#

#---- Planks ----#
val RedwoodPlanks = <ExtrabiomesXL:planks>;
val FirwoodPlanks = <ExtrabiomesXL:planks:1>;
val AcaciaPlanks = <ExtrabiomesXL:planks:2>;
val CypressPlanks = <ExtrabiomesXL:planks:3>;
val JapaneseMaplePlanks = <ExtrabiomesXL:planks:4>;
val RainbowEucalyptusPlanks = <ExtrabiomesXL:planks:5>;
val AutumnPlanks = <ExtrabiomesXL:planks:6>;
val BaldCypressPlanks = <ExtrabiomesXL:planks:7>;
val SakuraPlanks = <ExtrabiomesXL:planks:8>;
# Natura Planks
val TigerwoodPlanks = <Natura:planks:9>;
val WillowPlanks =  <Natura:planks:10>;
val FusewoodPlanks = <Natura:planks:12>;
val AmaranthPlanks = <Natura:planks:8>;
# Vanilla Planks
val MinecraftPlanks = <minecraft:planks:*>;
# Extra Utilities Planks
val ExtraUtilitiesPlanks = <ExtraUtilities:colorWoodPlanks:*>;
# Engineer's Toolbox Planks
val EngineersToolboxPlanks = <eng_toolbox:paintedPlanks:*>;

#---- Slabs ----#
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
#---- Double Slabs ----#
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
#---- Crafting Tables ----#
val CraftingTable = <minecraft:crafting_table>;
val SakuraWoodTable = <Natura:Natura.workbench>;
val FirWoodTable =  <Natura:Natura.workbench:1>;
val CypressWoodTable = <Natura:Natura.workbench:2>;
val JapaneseMapleTable = <Natura:Natura.workbench:3>;
val AutumnWoodTable = <Natura:Natura.workbench:4>;
val BaldCypressTable = <Natura:Natura.workbench:5>;
val RedwoodTable = <Natura:Natura.workbench:6>;
val AcaciaTable = <Natura:Natura.workbench:7>;
val RainbowEucalyptusTable = <Natura:Natura.workbench:11>;
val TigerwoodTable = <Natura:Natura.workbench:9>;
val WillowTable = <Natura:Natura.workbench:10>;
val FusewoodTable = <Natura:Natura.workbench:12>;
val AmaranthTable = <Natura:Natura.workbench:8>;

# Slab Recipes
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

# Double Slab Recipes
recipes.addShapedMirrored(SakuraDoubleSlab, [
[SakuraSlab],
[SakuraSlab]]);
recipes.addShapedMirrored(RedwoodDoubleSlab, [
[RedwoodSlab],
[RedwoodSlab]]);
recipes.addShapedMirrored(FirwoodDoubleSlab, [
[FirwoodSlab],
[FirwoodSlab]]);
recipes.addShapedMirrored(AcaciaDoubleSlab, [
[AcaciaSlab],
[AcaciaSlab]]);
recipes.addShapedMirrored(CypressDoubleSlab, [
[CypressSlab],
[CypressSlab]]);
recipes.addShapedMirrored(JapaneseMapleDoubleSlab, [
[JapaneseMapleSlab],
[JapaneseMapleSlab]]);
recipes.addShapedMirrored(RainbowEucalyptusDoubleSlab, [
[RainbowEucalyptusSlab],
[RainbowEucalyptusSlab]]);
recipes.addShapedMirrored(AutumnDoubleSlab, [
[AutumnSlab],
[AutumnSlab]]);
recipes.addShapedMirrored(BaldCypressSlab, [
[BaldCypressSlab],
[BaldCypressSlab]]);
recipes.addShapedMirrored(RedCobblestoneDoubleSlab, [
[RedCobblestoneSlab],
[RedCobblestoneSlab]]);
recipes.addShapedMirrored(RedRockDoubleSlab, [
[RedRockSlab],
[RedRockSlab]]);
recipes.addShapedMirrored(RedBrickDoubleSlab, [
[RedBrickSlab],
[RedBrickSlab]]);

# Remove Existing ALL Crafting Table Recipes
recipes.remove(CraftingTable);

# Re-Add Vanilla Crafting Table Recipe(s)
# Disable the following recipes if you do not use Natura, Extra Utilities, or Engineer's Toolbox
# bye placing # or // in front of each line or just delete them altogether

// Using Vanilla Planks
recipes.addShaped(CraftingTable, [
[MinecraftPlanks, MinecraftPlanks],
[MinecraftPlanks, MinecraftPlanks]]);
// Using Engineer's Toolbox Planks
recipes.addShaped(CraftingTable, [
[EngineersToolboxPlanks, EngineersToolboxPlanks],
[EngineersToolboxPlanks, EngineersToolboxPlanks]]);
// Using Extra Utilities Planks
recipes.addShaped(CraftingTable, [
[ExtraUtilitiesPlanks, ExtraUtilitiesPlanks],
[ExtraUtilitiesPlanks, ExtraUtilitiesPlanks]]);

#======== Natura Recipes made with ExtraBiomexXL Wood ========#

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

#---- ExtraBiomexXL to Natura Planks Recipes ----#
recipes.addShapeless(TigerwoodPlanks, [CypressPlanks, <minecraft:dye:14>]);
recipes.addShapeless(TigerwoodPlanks, [AutumnPlanks, <minecraft:dye:14>]);
recipes.addShapeless(WillowPlanks, [CypressPlanks, <minecraft:dye:6>]);
recipes.addShapeless(WillowPlanks, [AutumnPlanks, <minecraft:dye:6>]);
recipes.addShapeless(FusewoodPlanks, [CypressPlanks, <minecraft:dye:2>, <minecraft:dye:4>]);
recipes.addShapeless(FusewoodPlanks, [AutumnPlanks, <minecraft:dye:2>, <minecraft:dye:4>]);
recipes.addShapeless(AmaranthPlanks, [CypressPlanks, <minecraft:dye:10>]);
recipes.addShapeless(AmaranthPlanks, [AutumnPlanks, <minecraft:dye:10>]);

print("Initialized 'Extra Biomex XL Changes' Script");
