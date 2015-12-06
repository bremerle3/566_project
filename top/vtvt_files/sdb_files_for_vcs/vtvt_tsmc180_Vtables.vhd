
----------------------------------------------------------------
-- 
-- Created by the Synopsys Library Compiler Y-2006.06-SP2
-- FILENAME     :    /home/jddjig01/standard_cells_library/vtvt_tsmc180/vtvt_tsmc180_release/Synopsys_Libraries/vtvt_tsmc180_Vtables.vhd
-- FILE CONTENTS:    VITAL Table Package
-- DATE CREATED :    Thu Nov  1 22:32:09 2007
-- 
-- LIBRARY      :    vtvt_tsmc180
-- REVISION     :    Not Specified
-- TECHNOLOGY   :    cmos
-- TIME SCALE   :    1 ps
-- LOGIC SYSTEM :    IEEE-1164
-- NOTES        :    
-- HISTORY      :
-- 
----------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- synopsys translate_off

library IEEE;
use IEEE.VITAL_Timing.all;
use IEEE.VITAL_Primitives.all;
-- synopsys translate_on

package VTABLES is

   CONSTANT L : VitalTableSymbolType := '0';
   CONSTANT H : VitalTableSymbolType := '1';
   CONSTANT x : VitalTableSymbolType := '-';
   CONSTANT S : VitalTableSymbolType := 'S';
   CONSTANT R : VitalTableSymbolType := '/';
   CONSTANT U : VitalTableSymbolType := 'X';
   CONSTANT V : VitalTableSymbolType := 'B'; -- valid clock signal (non-rising)

   CONSTANT dksp_1_q_tab : VitalStateTableType := (
    ( L,  L,  H,  H,  x,  L ),
    ( L,  H,  x,  H,  x,  H ),
    ( L,  x,  L,  H,  x,  H ),
    ( H,  x,  x,  x,  x,  S ),
    ( x,  x,  x,  L,  x,  S ));

   CONSTANT dp_1_q_tab : VitalStateTableType := (
    ( L,  L,  H,  x,  L ),
    ( L,  H,  H,  x,  H ),
    ( H,  x,  x,  x,  S ),
    ( x,  x,  L,  x,  S ));

   CONSTANT drp_1_q_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  x,  L ),
    ( H,  L,  H,  H,  x,  H ),
    ( H,  H,  x,  x,  x,  S ),
    ( H,  x,  x,  L,  x,  S ),
    ( x,  L,  L,  H,  x,  L ));

   CONSTANT drsp_1_q_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  x,  x,  L ),
    ( H,  L,  H,  x,  H,  x,  H ),
    ( H,  H,  x,  L,  x,  x,  S ),
    ( H,  x,  x,  L,  L,  x,  S ),
    ( H,  x,  x,  H,  x,  x,  H ),
    ( x,  L,  L,  L,  H,  x,  L ));

   CONSTANT dtrsp_2_q_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  x,  x,  x,  x,  L ),
    ( H,  L,  x,  H,  H,  x,  H,  x,  H ),
    ( H,  L,  x,  H,  x,  H,  H,  x,  H ),
    ( H,  L,  x,  x,  H,  L,  H,  x,  H ),
    ( H,  H,  L,  x,  x,  x,  x,  x,  S ),
    ( H,  x,  L,  x,  x,  x,  L,  x,  S ),
    ( H,  x,  H,  x,  x,  x,  x,  x,  H ),
    ( x,  L,  L,  L,  L,  x,  H,  x,  L ),
    ( x,  L,  L,  L,  x,  H,  H,  x,  L ),
    ( x,  L,  L,  x,  L,  L,  H,  x,  L ));

   CONSTANT jkrp_2_q_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  x,  x,  x,  L ),
    ( H,  L,  L,  H,  H,  H,  x,  H ),
    ( H,  L,  H,  L,  L,  H,  x,  H ),
    ( H,  H,  x,  x,  x,  x,  x,  S ),
    ( H,  x,  x,  x,  x,  L,  x,  S ),
    ( x,  L,  L,  L,  x,  H,  x,  L ),
    ( x,  L,  L,  x,  L,  H,  x,  L ),
    ( x,  L,  H,  H,  x,  H,  x,  L ),
    ( x,  L,  H,  x,  H,  H,  x,  L ),
    ( x,  L,  x,  L,  H,  H,  x,  L ),
    ( x,  L,  x,  H,  L,  H,  x,  L ));

   CONSTANT lp_1_q_tab : VitalStateTableType := (
    ( L,  H,  x,  L ),
    ( H,  H,  x,  H ),
    ( x,  L,  x,  S ));

   CONSTANT lrp_1_q_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  L ),
    ( H,  H,  H,  x,  H ),
    ( H,  x,  L,  x,  S ),
    ( x,  L,  H,  x,  L ));

   CONSTANT lrsp_1_q_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  x,  L ),
    ( H,  H,  x,  H,  x,  H ),
    ( H,  x,  L,  L,  x,  S ),
    ( H,  x,  H,  x,  x,  H ),
    ( x,  L,  L,  H,  x,  L ));


end VTABLES;

---- end of VITAL tables library ----
