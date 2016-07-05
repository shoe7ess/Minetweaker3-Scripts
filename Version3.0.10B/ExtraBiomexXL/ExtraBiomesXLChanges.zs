# Name: ExtraBiomesXLChanges
# Version Information: ExtraBiomesXLChanges v3.16.4, Minecraft v1.7.10
# Author: shoe7ess
# Purpose: Allows normal slab creation with Planks

import minetweaker.item.IIngredient;
import minetweaker.oredict.IOreDictEntry;

print("Initializing 'Extra Biomex XL Changes' Script");

#****************** ExtraBiomexXL Vanilla Style Recipes Added ******************#

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
val CraftingTable = <minecraft:workbench>;
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
#---- Natura Planks ----#
val TigerwoodPlanks = <Natura:planks:9>;
val WillowPlanks =  <Natura:planks:10>;
val FusewoodPlanks = <Natura:planks:12>;
val AmaranthPlanks = <Natura:planks:8>;

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
[SakuraSlab, null, null],
[SakuraSlab, null, null]]);
recipes.addShapedMirrored(RedwoodDoubleSlab, [
[RedwoodSlab, null, null],
[RedwoodSlab, null, null]]);
recipes.addShapedMirrored(FirwoodDoubleSlab, [
[FirwoodPlanks, FirwoodPlanks, null],
[FirwoodPlanks, FirwoodPlanks, null]]);
recipes.addShapedMirrored(AcaciaDoubleSlab, [
[AcaciaSlab, null, null],
[AcaciaSlab, null, null]]);
recipes.addShapedMirrored(CypressDoubleSlab, [
[CypressSlab, null, null],
[CypressSlab, null, null]]);
recipes.addShapedMirrored(JapaneseMapleDoubleSlab, [
[JapaneseMapleSlab, null, null],
[JapaneseMapleSlab, null, null]]);
recipes.addShapedMirrored(RainbowEucalyptusDoubleSlab, [
[RainbowEucalyptusSlab, null, null],
[RainbowEucalyptusSlab, null, null]]);
recipes.addShapedMirrored(AutumnDoubleSlab, [
[AutumnSlab, null, null],
[AutumnSlab, null, null]]);
recipes.addShapedMirrored(BaldCypressSlab, [
[BaldCypressSlab, null, null],
[BaldCypressSlab, null, null]]);
recipes.addShapedMirrored(RedCobblestoneDoubleSlab, [
[RedCobblestoneSlab, null, null],
[RedCobblestoneSlab, null, null]]);
recipes.addShapedMirrored(RedRockDoubleSlab, [
[RedRockSlab, null, null],
[RedRockSlab, null, null]]);
recipes.addShapedMirrored(RedBrickDoubleSlab, [
[RedBrickSlab, null, null],
[RedBrickSlab, null, null]]);

#======== Natura Recipes made with ExtraBiomexXL Wood ========#

#----- Remove Existing Crafting Table Recipes -----#
# Comment the following lines out if you do not use Natura by 
# placing # or // in front of each line or just delete them altogether
recipes.removeShaped(CraftingTable, [
[SakuraPlanks, SakuraPlanks, null],
[SakuraPlanks, SakuraPlanks, null]]);
recipes.removeShaped(CraftingTable, [
[FirwoodPlanks, FirwoodPlanks, null],
[FirwoodPlanks, FirwoodPlanks, null]]);
recipes.removeShaped(CraftingTable, [
[CypressPlanks, CypressPlanks, null],
[CypressPlanks, CypressPlanks, null]]);
recipes.removeShaped(CraftingTable, [
[JapaneseMaplePlanks, JapaneseMaplePlanks, null],
[JapaneseMaplePlanks, JapaneseMaplePlanks, null]]);
recipes.removeShaped(CraftingTable, [
[AutumnPlanks, AutumnPlanks, null],
[AutumnPlanks, AutumnPlanks, null]]);
recipes.removeShaped(CraftingTable, [
[BaldCypressPlanks, BaldCypressPlanks, null],
[BaldCypressPlanks, BaldCypressPlanks, null]]);
recipes.removeShaped(CraftingTable, [
[RedwoodPlanks, RedwoodPlanks, null],
[RedwoodPlanks, RedwoodPlanks, null]]);
recipes.removeShaped(CraftingTable, [
[AcaciaPlanks, AcaciaPlanks, null],
[AcaciaPlanks, AcaciaPlanks, null]]);
recipes.removeShaped(CraftingTable, [
[RainbowEucalyptusPlanks, RainbowEucalyptusPlanks, null],
[RainbowEucalyptusPlanks, RainbowEucalyptusPlanks, null]]);
#---------- Crafting Table Crafting ----------#
recipes.addShapedMirrored(SakuraWoodTable, [
[SakuraPlanks, SakuraPlanks, null],
[SakuraPlanks, SakuraPlanks, null]]);
recipes.addShapedMirrored(FirWoodTable, [
[FirwoodPlanks, FirwoodPlanks, null],
[FirwoodPlanks, FirwoodPlanks, null]]);
recipes.addShapedMirrored(CypressWoodTable, [
[CypressPlanks, CypressPlanks, null],
[CypressPlanks, CypressPlanks, null]]);
recipes.addShapedMirrored(JapaneseMapleTable, [
[JapaneseMaplePlanks, JapaneseMaplePlanks, null],
[JapaneseMaplePlanks, JapaneseMaplePlanks, null]]);
recipes.addShapedMirrored(AutumnWoodTable, [
[AutumnPlanks, AutumnPlanks, null],
[AutumnPlanks, AutumnPlanks, null]]);
recipes.addShapedMirrored(BaldCypressTable, [
[BaldCypressPlanks, BaldCypressPlanks, null],
[BaldCypressPlanks, BaldCypressPlanks, null]]);
recipes.addShapedMirrored(RedwoodTable, [
[RedwoodPlanks, RedwoodPlanks, null],
[RedwoodPlanks, RedwoodPlanks, null]]);
recipes.addShapedMirrored(AcaciaTable, [
[AcaciaPlanks, AcaciaPlanks, null],
[AcaciaPlanks, AcaciaPlanks, null]]);
recipes.addShapedMirrored(RainbowEucalyptusTable, [
[RainbowEucalyptusPlanks, RainbowEucalyptusPlanks, null],
[RainbowEucalyptusPlanks, RainbowEucalyptusPlanks, null]]);

#---- ExtraBiomexXL to Natura Planks Recipes ----#
recipes.addShapeless(TigerwoodPlanks, [CypressPlanks, <ore:dyeOrange]);
recipes.addShapeless(TigerwoodPlanks, [AutumnPlanks, <ore:dyeOrange]);
recipes.addShapeless(WillowPlanks, [CypressPlanks, <ore:dyeCyan>]);
recipes.addShapeless(WillowPlanks, [AutumnPlanks, <ore:dyeCyan>]);
recipes.addShapeless(FusewoodPlanks, [CypressPlanks, <ore:dyeGreen>, <ore:dyeBlue>]);
recipes.addShapeless(FusewoodPlanks, [AutumnPlanks, <ore:dyeGreen>, <ore:dyeBlue>]);
recipes.addShapeless(AmaranthPlanks, [CypressPlanks, <ore:dyeLime>]);
recipes.addShapeless(AmaranthPlanks, [AutumnPlanks, <ore:dyeLime>]);

print("Initialized 'Extra Biomex XL Changes' Script");
