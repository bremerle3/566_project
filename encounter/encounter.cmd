#######################################################
#                                                     
#  Encounter Command Logging File                     
#  Created on Mon Dec  7 17:45:51 2015                
#                                                     
#######################################################

#@(#)CDS: Encounter v14.23-s044_1 (64bit) 03/20/2015 11:30 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute v14.23-s028 NR150319-1745/14_23-UB (database version 2.30, 255.6.1) {superthreading v1.25}
#@(#)CDS: CeltIC v14.23-s013_1 (64bit) 03/09/2015 04:15:07 (Linux 2.6.18-194.el5)
#@(#)CDS: AAE 14.23-s010 (64bit) 03/20/2015 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 14.23-s014_1 (64bit) Mar  9 2015 03:15:25 (Linux 2.6.18-194.el5)
#@(#)CDS: CPE v14.23-s032
#@(#)CDS: IQRC/TQRC 14.1.6-s260 (64bit) Mon Mar  2 11:26:49 PST 2015 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set init_gnd_net VSS
set init_lef_file /project/linuxlab/cadence/vendors/VTVT/vtvt_tsmc180/vtvt_tsmc180_lef/vtvt_tsmc180.lef
set init_verilog system_top.syn.v
set init_pwr_net VDD
init_design
init_design
set init_mmmc_file Default.view
init_design
create_library_set -name vtvt_tsmc180 -timing {/project/linuxlab/cadence/vendors/VTVT/vtvt_tsmc180/Synopsys_Libraries/libs/vtvt_tsmc180.lib}
create_constraint_mode -name CORTEXM0DS -sdc_files {CORTEXM0DS.sdc}
init_design
zoomOut
zoomOut
zoomOut
zoomOut
zoomOut
zoomOut
zoomOut
zoomIn
zoomIn
windowSelect 145.476 -144.799 -252.592 -377.878
uiSetTool move
uiSetTool select
windowSelect 396.888 415.640 195.235 287.315
windowSelect -134.743 517.776 -370.441 407.784
zoomSelected
zoomSelected
fit
fit
fit
fit
fit
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -r 1 0.699982 10 10 10 10
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect {VDD VSS} -type pgpin -pin {VDD VSS} -inst * -module {}
clearGlobalNets
globalNetConnect {VDD VSS} -type pgpin -pin {VDD VSS} -inst * -module {}
set sprCreateIeRingNets {}
set sprCreateIeRingLayers {}
set sprCreateIeRingWidth 1.0
set sprCreateIeRingSpacing 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -stacked_via_top_layer metal6 -type core_rings -jog_distance 0.81 -threshold 0.81 -nets {VDD VSS} -follow core -stacked_via_bottom_layer metal1 -layer {bottom metal1 top metal1 right metal2 left metal2} -width 0.45 -spacing 0.45 -offset 0.81
zoomIn
zoomOut
windowSelect -21.322 813.965 143.706 602.300
zoomIn
zoomOut
uiSetTool move
getPinAssignMode -pinEditInBatch -quiet
setPinAssignMode -pinEditInBatch false
getPinAssignMode -pinEditInBatch -quiet
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1 metal6 } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1 metal6 } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1 metal6 }
setPlaceMode -fp false
placeDesign
createClockTreeSpec -bufferList {buf_1 buf_2 buf_4 cd_12 cd_16 cd_8 inv_1 inv_2 inv_4} -file Clock.ctstch
specifyClockTree -clkfile Clock.ctstch
setCTSMode -routeGuide true -routeClkNet true
clockDesign -outDir Clock_reports
setOptMode -simplifyNetlist false
clearClockDomains
optDesign -postCTS -outDir Clock_reports/PostCTS
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
getFillerMode -quiet
addFiller -cell filler -prefix FILLER
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
verifyConnectivity -type all -error 1000 -warning 50
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -idealClock -pathReports -drvReports -slackReports -numPaths 50 -prefix system_top_preCTS -outDir timingReports
saveFPlan system_top.fp
savePlace system_top.place.gz
saveNetlist system_top.v
global dbgLefDefOutVersion
set dbgLefDefOutVersion 5.8
defOut -floorplan -netlist -routing system_top.def
set dbgLefDefOutVersion 5.8
