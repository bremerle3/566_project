
----------------------------------------------------------------
-- 
-- Created by the Synopsys Library Compiler Y-2006.06-SP2
-- FILENAME     :    /home/jddjig01/standard_cells_library/vtvt_tsmc180/vtvt_tsmc180_release/Synopsys_Libraries/vtvt_tsmc180_VITAL.vhd
-- FILE CONTENTS:    Entity, Structural Architecture(VITAL),
--                   and Configuration
-- DATE CREATED :    Thu Nov  1 22:32:09 2007
-- 
-- LIBRARY      :    vtvt_tsmc180
-- REVISION     :    Not Specified
-- TECHNOLOGY   :    cmos
-- TIME SCALE   :    1 ps
-- LOGIC SYSTEM :    IEEE-1164
-- NOTES        :    VITAL, TimingChecksOn(TRUE), XGenerationOn(FALSE), TimingMessage(TRUE), OnDetect 
-- HISTORY      :
-- 
----------------------------------------------------------------

----- CELL abnorc -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity abnorc is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (40220.000 ps, 40072.000 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (40220.000 ps, 40072.000 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (40220.000 ps, 40058.000 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of abnorc : entity is TRUE;
end abnorc;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of abnorc is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip3_ipd) OR ((ip2_ipd) AND (ip1_ipd))));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_abnorc_VITAL of abnorc is
   for VITAL
   end for;
end CFG_abnorc_VITAL;


----- CELL aborc -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity aborc is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (128.520 ps, 120.920 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (128.520 ps, 120.920 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (78.105 ps, 133.320 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of aborc : entity is TRUE;
end aborc;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of aborc is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip3_ipd) OR ((ip2_ipd) AND (ip1_ipd));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_aborc_VITAL of aborc is
   for VITAL
   end for;
end CFG_aborc_VITAL;


----- CELL ab_or_c_or_d -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity ab_or_c_or_d is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (100.620 ps, 133.640 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (97.206 ps, 133.640 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (61.837 ps, 133.640 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (54.060 ps, 133.640 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of ab_or_c_or_d : entity is TRUE;
end ab_or_c_or_d;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of ab_or_c_or_d is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip3_ipd) OR ((ip2_ipd) AND (ip1_ipd)) OR (ip4_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_ab_or_c_or_d_VITAL of ab_or_c_or_d is
   for VITAL
   end for;
end CFG_ab_or_c_or_d_VITAL;


----- CELL and2_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity and2_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (81.491 ps, 71.170 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (81.491 ps, 76.250 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of and2_1 : entity is TRUE;
end and2_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of and2_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) AND (ip1_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_and2_1_VITAL of and2_1 is
   for VITAL
   end for;
end CFG_and2_1_VITAL;


----- CELL and2_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity and2_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (82.098 ps, 71.737 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (82.098 ps, 76.223 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of and2_2 : entity is TRUE;
end and2_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of and2_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) AND (ip1_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_and2_2_VITAL of and2_2 is
   for VITAL
   end for;
end CFG_and2_2_VITAL;


----- CELL and2_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity and2_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (101.640 ps, 89.679 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (101.640 ps, 94.098 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of and2_4 : entity is TRUE;
end and2_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of and2_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) AND (ip1_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_and2_4_VITAL of and2_4 is
   for VITAL
   end for;
end CFG_and2_4_VITAL;


----- CELL and3_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity and3_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (128.970 ps, 103.900 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (128.970 ps, 112.250 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (128.970 ps, 112.330 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of and3_1 : entity is TRUE;
end and3_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of and3_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) AND (ip1_ipd) AND (ip3_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_and3_1_VITAL of and3_1 is
   for VITAL
   end for;
end CFG_and3_1_VITAL;


----- CELL and3_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity and3_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (132.380 ps, 105.900 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (132.380 ps, 113.440 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (132.380 ps, 117.070 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of and3_2 : entity is TRUE;
end and3_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of and3_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) AND (ip1_ipd) AND (ip3_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_and3_2_VITAL of and3_2 is
   for VITAL
   end for;
end CFG_and3_2_VITAL;


----- CELL and3_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity and3_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (160.320 ps, 129.050 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (160.320 ps, 135.960 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (160.320 ps, 139.260 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of and3_4 : entity is TRUE;
end and3_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of and3_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) AND (ip1_ipd) AND (ip3_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_and3_4_VITAL of and3_4 is
   for VITAL
   end for;
end CFG_and3_4_VITAL;


----- CELL and4_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity and4_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (175.740 ps, 133.000 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (175.740 ps, 146.220 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (175.740 ps, 148.350 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (175.740 ps, 151.420 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of and4_1 : entity is TRUE;
end and4_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of and4_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) AND (ip1_ipd) AND (ip3_ipd) AND (ip4_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_and4_1_VITAL of and4_1 is
   for VITAL
   end for;
end CFG_and4_1_VITAL;


----- CELL and4_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity and4_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (175.210 ps, 131.640 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (175.210 ps, 142.210 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (175.210 ps, 148.280 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (175.210 ps, 150.170 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of and4_2 : entity is TRUE;
end and4_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of and4_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) AND (ip1_ipd) AND (ip3_ipd) AND (ip4_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_and4_2_VITAL of and4_2 is
   for VITAL
   end for;
end CFG_and4_2_VITAL;


----- CELL and4_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity and4_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (214.580 ps, 161.710 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (214.580 ps, 172.020 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (214.580 ps, 178.130 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (214.580 ps, 180.650 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of and4_4 : entity is TRUE;
end and4_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of and4_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) AND (ip1_ipd) AND (ip3_ipd) AND (ip4_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_and4_4_VITAL of and4_4 is
   for VITAL
   end for;
end CFG_and4_4_VITAL;


----- CELL bufzp_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity bufzp_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_c_op                       :	VitalDelayType01z := 
               (114.230 ps, 121.020 ps, 114.230 ps, 114.230 ps, 121.020 ps, 121.020 ps);
      tpd_ip_op                      :	VitalDelayType01 := (119.170 ps, 126.530 ps);
      tipd_c                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      c                              :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of bufzp_2 : entity is TRUE;
end bufzp_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of bufzp_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL c_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (c_ipd, c, tipd_c);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (c_ipd, ip_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := VitalBUFIF0 (data => ip_ipd,
              enable => c_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01Z (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (c_ipd'last_event, VitalExtendToFillDelay(tpd_c_op), TRUE),
                 1 => (ip_ipd'last_event, VitalExtendToFillDelay(tpd_ip_op), TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING,
       OutputMap => "UX01ZWLH-");

end process;

end VITAL;

configuration CFG_bufzp_2_VITAL of bufzp_2 is
   for VITAL
   end for;
end CFG_bufzp_2_VITAL;


----- CELL buf_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity buf_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip_op                      :	VitalDelayType01 := (46.674 ps, 49.504 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of buf_1 : entity is TRUE;
end buf_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of buf_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := TO_X01(ip_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip_ipd'last_event, tpd_ip_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_buf_1_VITAL of buf_1 is
   for VITAL
   end for;
end CFG_buf_1_VITAL;


----- CELL buf_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity buf_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip_op                      :	VitalDelayType01 := (47.513 ps, 49.522 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of buf_2 : entity is TRUE;
end buf_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of buf_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := TO_X01(ip_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip_ipd'last_event, tpd_ip_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_buf_2_VITAL of buf_2 is
   for VITAL
   end for;
end CFG_buf_2_VITAL;


----- CELL buf_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity buf_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip_op                      :	VitalDelayType01 := (42.195 ps, 43.730 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of buf_4 : entity is TRUE;
end buf_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of buf_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := TO_X01(ip_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip_ipd'last_event, tpd_ip_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_buf_4_VITAL of buf_4 is
   for VITAL
   end for;
end CFG_buf_4_VITAL;


----- CELL cd_8 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity cd_8 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip_op                      :	VitalDelayType01 := (110.790 ps, 112.290 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of cd_8 : entity is TRUE;
end cd_8;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of cd_8 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := TO_X01(ip_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip_ipd'last_event, tpd_ip_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_cd_8_VITAL of cd_8 is
   for VITAL
   end for;
end CFG_cd_8_VITAL;


----- CELL cd_12 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity cd_12 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip_op                      :	VitalDelayType01 := (179.240 ps, 180.760 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of cd_12 : entity is TRUE;
end cd_12;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of cd_12 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := TO_X01(ip_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip_ipd'last_event, tpd_ip_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_cd_12_VITAL of cd_12 is
   for VITAL
   end for;
end CFG_cd_12_VITAL;


----- CELL cd_16 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity cd_16 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip_op                      :	VitalDelayType01 := (247.870 ps, 249.440 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of cd_16 : entity is TRUE;
end cd_16;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of cd_16 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := TO_X01(ip_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip_ipd'last_event, tpd_ip_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_cd_16_VITAL of cd_16 is
   for VITAL
   end for;
end CFG_cd_16_VITAL;


----- CELL dksp_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity dksp_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ck_q                       :	VitalDelayType01 := (324.230 ps, 303.450 ps);
      tpd_ck_qb                      :	VitalDelayType01 := (245.060 ps, 227.390 ps);
      tsetup_ip_ck                   :	VitalDelayType := 136.720 ps;
      tsetup_sb_ck                   :	VitalDelayType := 97.656 ps;
      thold_sb_ck                    :	VitalDelayType := 0.000 ps;
      thold_ip_ck                    :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_sb_ck                     :	VitalDelayType := 0.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_sb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      sb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC;
      qb                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of dksp_1 : entity is TRUE;
end dksp_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of dksp_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL sb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL sb_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   VitalWireDelay (sb_ipd, sb, tipd_sb);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (sb_ck_dly, sb_ipd, tisd_sb_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, sb_ck_dly, ip_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_sb_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_sb_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 3);
   VARIABLE ck_delayed : STD_ULOGIC := 'X';
   VARIABLE ip_delayed : STD_ULOGIC := 'X';
   VARIABLE sb_delayed : STD_ULOGIC := 'X';
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);
   ALIAS qb_zd : STD_LOGIC is Results(2);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;
   VARIABLE qb_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TRUE,
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/dksp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalSetupHoldCheck (
          Violation               => Tviol_sb_ck_posedge,
          TimingData              => Tmkr_sb_ck_posedge,
          TestSignal              => sb_ck_dly,
          TestSignalName          => "sb",
          TestDelay               => tisd_sb_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_sb_ck,
          SetupLow                => tsetup_sb_ck,
          HoldHigh                => thold_sb_ck,
          HoldLow                 => thold_sb_ck,
          CheckEnabled            => 
                           TRUE,
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/dksp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TRUE,
          HeaderMsg               => InstancePath &"/dksp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Tviol_sb_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => dksp_1_q_tab,
        DataIn => (
               ck_delayed, ip_delayed, sb_delayed, ck_dly));
      q_zd := Violation XOR q_zd;
      qb_zd := (NOT q_zd);
      ck_delayed := ck_dly;
      ip_delayed := ip_ck_dly;
      sb_delayed := sb_ck_dly;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (ck_dly'last_event, tpd_ck_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);
      VitalPathDelay01 (
       OutSignal => qb,
       GlitchData => qb_GlitchData,
       OutSignalName => "qb",
       OutTemp => qb_zd,
       Paths => (0 => (ck_dly'last_event, tpd_ck_qb, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_dksp_1_VITAL of dksp_1 is
   for VITAL
   end for;
end CFG_dksp_1_VITAL;


----- CELL dp_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity dp_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ck_q                       :	VitalDelayType01 := (91.633 ps, 184.590 ps);
      thold_ip_ck                    :	VitalDelayType := 0.000 ps;
      tsetup_ip_ck                   :	VitalDelayType := 136.720 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of dp_1 : entity is TRUE;
end dp_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of dp_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 2);
   VARIABLE ck_delayed : STD_ULOGIC := 'X';
   VARIABLE ip_delayed : STD_ULOGIC := 'X';
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TRUE,
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/dp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TRUE,
          HeaderMsg               => InstancePath &"/dp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => dp_1_q_tab,
        DataIn => (
               ck_delayed, ip_delayed, ck_dly));
      q_zd := Violation XOR q_zd;
      ck_delayed := ck_dly;
      ip_delayed := ip_ck_dly;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (ck_dly'last_event, tpd_ck_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_dp_1_VITAL of dp_1 is
   for VITAL
   end for;
end CFG_dp_1_VITAL;


----- CELL dp_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity dp_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ck_q                       :	VitalDelayType01 := (100.920 ps, 203.740 ps);
      thold_ip_ck                    :	VitalDelayType := 0.000 ps;
      tsetup_ip_ck                   :	VitalDelayType := 136.720 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of dp_2 : entity is TRUE;
end dp_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of dp_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 2);
   VARIABLE ck_delayed : STD_ULOGIC := 'X';
   VARIABLE ip_delayed : STD_ULOGIC := 'X';
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TRUE,
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/dp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TRUE,
          HeaderMsg               => InstancePath &"/dp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => dp_1_q_tab,
        DataIn => (
               ck_delayed, ip_delayed, ck_dly));
      q_zd := Violation XOR q_zd;
      ck_delayed := ck_dly;
      ip_delayed := ip_ck_dly;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (ck_dly'last_event, tpd_ck_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_dp_2_VITAL of dp_2 is
   for VITAL
   end for;
end CFG_dp_2_VITAL;


----- CELL dp_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity dp_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ck_q                       :	VitalDelayType01 := (134.120 ps, 252.660 ps);
      thold_ip_ck                    :	VitalDelayType := 0.000 ps;
      tsetup_ip_ck                   :	VitalDelayType := 136.720 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of dp_4 : entity is TRUE;
end dp_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of dp_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 2);
   VARIABLE ck_delayed : STD_ULOGIC := 'X';
   VARIABLE ip_delayed : STD_ULOGIC := 'X';
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TRUE,
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/dp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TRUE,
          HeaderMsg               => InstancePath &"/dp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => dp_1_q_tab,
        DataIn => (
               ck_delayed, ip_delayed, ck_dly));
      q_zd := Violation XOR q_zd;
      ck_delayed := ck_dly;
      ip_delayed := ip_ck_dly;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (ck_dly'last_event, tpd_ck_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_dp_4_VITAL of dp_4 is
   for VITAL
   end for;
end CFG_dp_4_VITAL;


----- CELL drp_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity drp_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_rb_q                       :	VitalDelayType01 := (90.924 ps, 333.130 ps);
      tpd_ck_q                       :	VitalDelayType01 := (90.924 ps, 181.680 ps);
      thold_ip_ck                    :	VitalDelayType := 0.000 ps;
      tsetup_ip_ck                   :	VitalDelayType := 175.780 ps;
      trecovery_rb_ck                :	VitalDelayType := 175.780 ps;
      thold_rb_ck                    :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_rb_ck                     :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_rb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of drp_1 : entity is TRUE;
end drp_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of drp_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL rb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL rb_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   VitalWireDelay (rb_ipd, rb, tipd_rb);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   VitalSignalDelay (rb_ck_dly, rb_ipd, tisd_rb_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly, rb_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_rb_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_rb_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 3);
   VARIABLE ck_delayed : STD_ULOGIC := 'X';
   VARIABLE ip_delayed : STD_ULOGIC := 'X';
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_rb_ck_posedge,
          TimingData              => Tmkr_rb_ck_posedge,
          TestSignal              => rb_ck_dly,
          TestSignalName          => "rb",
          TestDelay               => tisd_rb_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_rb_ck,
          Removal                 => thold_rb_ck,
          ActiveLow               => TRUE,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          HeaderMsg               => InstancePath &"/drp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Tviol_rb_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => drp_1_q_tab,
        DataIn => (
               rb_ck_dly, ck_delayed, ip_delayed, ck_dly));
      q_zd := Violation XOR q_zd;
      ck_delayed := ck_dly;
      ip_delayed := ip_ck_dly;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (rb_ck_dly'last_event, tpd_rb_q, TRUE),
                 1 => (ck_dly'last_event, tpd_ck_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_drp_1_VITAL of drp_1 is
   for VITAL
   end for;
end CFG_drp_1_VITAL;


----- CELL drp_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity drp_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_rb_q                       :	VitalDelayType01 := (110.920 ps, 363.950 ps);
      tpd_ck_q                       :	VitalDelayType01 := (110.920 ps, 212.120 ps);
      thold_ip_ck                    :	VitalDelayType := 0.000 ps;
      tsetup_ip_ck                   :	VitalDelayType := 175.780 ps;
      trecovery_rb_ck                :	VitalDelayType := 175.780 ps;
      thold_rb_ck                    :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_rb_ck                     :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_rb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of drp_2 : entity is TRUE;
end drp_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of drp_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL rb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL rb_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   VitalWireDelay (rb_ipd, rb, tipd_rb);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   VitalSignalDelay (rb_ck_dly, rb_ipd, tisd_rb_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly, rb_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_rb_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_rb_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 3);
   VARIABLE ck_delayed : STD_ULOGIC := 'X';
   VARIABLE ip_delayed : STD_ULOGIC := 'X';
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_rb_ck_posedge,
          TimingData              => Tmkr_rb_ck_posedge,
          TestSignal              => rb_ck_dly,
          TestSignalName          => "rb",
          TestDelay               => tisd_rb_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_rb_ck,
          Removal                 => thold_rb_ck,
          ActiveLow               => TRUE,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          HeaderMsg               => InstancePath &"/drp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Tviol_rb_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => drp_1_q_tab,
        DataIn => (
               rb_ck_dly, ck_delayed, ip_delayed, ck_dly));
      q_zd := Violation XOR q_zd;
      ck_delayed := ck_dly;
      ip_delayed := ip_ck_dly;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (rb_ck_dly'last_event, tpd_rb_q, TRUE),
                 1 => (ck_dly'last_event, tpd_ck_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_drp_2_VITAL of drp_2 is
   for VITAL
   end for;
end CFG_drp_2_VITAL;


----- CELL drp_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity drp_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_rb_q                       :	VitalDelayType01 := (142.600 ps, 415.570 ps);
      tpd_ck_q                       :	VitalDelayType01 := (142.600 ps, 260.840 ps);
      thold_ip_ck                    :	VitalDelayType := 0.000 ps;
      tsetup_ip_ck                   :	VitalDelayType := 175.780 ps;
      trecovery_rb_ck                :	VitalDelayType := 175.780 ps;
      thold_rb_ck                    :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_rb_ck                     :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_rb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of drp_4 : entity is TRUE;
end drp_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of drp_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL rb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL rb_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   VitalWireDelay (rb_ipd, rb, tipd_rb);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   VitalSignalDelay (rb_ck_dly, rb_ipd, tisd_rb_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly, rb_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_rb_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_rb_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 3);
   VARIABLE ck_delayed : STD_ULOGIC := 'X';
   VARIABLE ip_delayed : STD_ULOGIC := 'X';
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_rb_ck_posedge,
          TimingData              => Tmkr_rb_ck_posedge,
          TestSignal              => rb_ck_dly,
          TestSignalName          => "rb",
          TestDelay               => tisd_rb_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_rb_ck,
          Removal                 => thold_rb_ck,
          ActiveLow               => TRUE,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          HeaderMsg               => InstancePath &"/drp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Tviol_rb_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => drp_1_q_tab,
        DataIn => (
               rb_ck_dly, ck_delayed, ip_delayed, ck_dly));
      q_zd := Violation XOR q_zd;
      ck_delayed := ck_dly;
      ip_delayed := ip_ck_dly;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (rb_ck_dly'last_event, tpd_rb_q, TRUE),
                 1 => (ck_dly'last_event, tpd_ck_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_drp_4_VITAL of drp_4 is
   for VITAL
   end for;
end CFG_drp_4_VITAL;


----- CELL drsp_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity drsp_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_rb_q                       :	VitalDelayType01 := (315.060 ps, 347.230 ps);
      tpd_s_q                        :	VitalDelayType01 := (315.060 ps, 347.230 ps);
      tpd_ck_q                       :	VitalDelayType01 := (92.325 ps, 183.320 ps);
      thold_ip_ck                    :	VitalDelayType := 0.000 ps;
      tsetup_ip_ck                   :	VitalDelayType := 253.910 ps;
      trecovery_rb_ck                :	VitalDelayType := 175.780 ps;
      trecovery_s_ck                 :	VitalDelayType := 253.910 ps;
      thold_s_ck                     :	VitalDelayType := 0.000 ps;
      thold_rb_ck                    :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_s_ck                      :	VitalDelayType := 0.000 ps;
      tisd_rb_ck                     :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_rb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s                         :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of drsp_1 : entity is TRUE;
end drsp_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of drsp_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL rb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL s_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL s_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL rb_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   VitalWireDelay (rb_ipd, rb, tipd_rb);
   VitalWireDelay (s_ipd, s, tipd_s);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   VitalSignalDelay (s_ck_dly, s_ipd, tisd_s_ck);
   VitalSignalDelay (rb_ck_dly, rb_ipd, tisd_rb_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly, s_ck_dly, rb_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_rb_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_rb_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_s_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_s_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 4);
   VARIABLE ck_delayed : STD_ULOGIC := 'X';
   VARIABLE ip_delayed : STD_ULOGIC := 'X';
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drsp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_rb_ck_posedge,
          TimingData              => Tmkr_rb_ck_posedge,
          TestSignal              => rb_ck_dly,
          TestSignalName          => "rb",
          TestDelay               => tisd_rb_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_rb_ck,
          Removal                 => thold_rb_ck,
          ActiveLow               => TRUE,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drsp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_s_ck_posedge,
          TimingData              => Tmkr_s_ck_posedge,
          TestSignal              => s_ck_dly,
          TestSignalName          => "s",
          TestDelay               => tisd_s_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_s_ck,
          Removal                 => thold_s_ck,
          ActiveLow               => FALSE,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drsp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          HeaderMsg               => InstancePath &"/drsp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Tviol_rb_ck_posedge or Tviol_s_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => drsp_1_q_tab,
        DataIn => (
               rb_ck_dly, ck_delayed, ip_delayed, s_ck_dly, ck_dly));
      q_zd := Violation XOR q_zd;
      ck_delayed := ck_dly;
      ip_delayed := ip_ck_dly;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (rb_ck_dly'last_event, tpd_rb_q, TRUE),
                 1 => (s_ck_dly'last_event, tpd_s_q, TRUE),
                 2 => (ck_dly'last_event, tpd_ck_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_drsp_1_VITAL of drsp_1 is
   for VITAL
   end for;
end CFG_drsp_1_VITAL;


----- CELL drsp_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity drsp_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_rb_q                       :	VitalDelayType01 := (336.190 ps, 378.610 ps);
      tpd_s_q                        :	VitalDelayType01 := (336.190 ps, 378.610 ps);
      tpd_ck_q                       :	VitalDelayType01 := (112.030 ps, 214.090 ps);
      thold_ip_ck                    :	VitalDelayType := 0.000 ps;
      tsetup_ip_ck                   :	VitalDelayType := 253.910 ps;
      trecovery_rb_ck                :	VitalDelayType := 175.780 ps;
      trecovery_s_ck                 :	VitalDelayType := 253.910 ps;
      thold_s_ck                     :	VitalDelayType := 0.000 ps;
      thold_rb_ck                    :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_s_ck                      :	VitalDelayType := 0.000 ps;
      tisd_rb_ck                     :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_rb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s                         :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of drsp_2 : entity is TRUE;
end drsp_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of drsp_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL rb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL s_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL s_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL rb_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   VitalWireDelay (rb_ipd, rb, tipd_rb);
   VitalWireDelay (s_ipd, s, tipd_s);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   VitalSignalDelay (s_ck_dly, s_ipd, tisd_s_ck);
   VitalSignalDelay (rb_ck_dly, rb_ipd, tisd_rb_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly, s_ck_dly, rb_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_rb_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_rb_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_s_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_s_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 4);
   VARIABLE ck_delayed : STD_ULOGIC := 'X';
   VARIABLE ip_delayed : STD_ULOGIC := 'X';
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drsp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_rb_ck_posedge,
          TimingData              => Tmkr_rb_ck_posedge,
          TestSignal              => rb_ck_dly,
          TestSignalName          => "rb",
          TestDelay               => tisd_rb_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_rb_ck,
          Removal                 => thold_rb_ck,
          ActiveLow               => TRUE,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drsp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_s_ck_posedge,
          TimingData              => Tmkr_s_ck_posedge,
          TestSignal              => s_ck_dly,
          TestSignalName          => "s",
          TestDelay               => tisd_s_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_s_ck,
          Removal                 => thold_s_ck,
          ActiveLow               => FALSE,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drsp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          HeaderMsg               => InstancePath &"/drsp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Tviol_rb_ck_posedge or Tviol_s_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => drsp_1_q_tab,
        DataIn => (
               rb_ck_dly, ck_delayed, ip_delayed, s_ck_dly, ck_dly));
      q_zd := Violation XOR q_zd;
      ck_delayed := ck_dly;
      ip_delayed := ip_ck_dly;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (rb_ck_dly'last_event, tpd_rb_q, TRUE),
                 1 => (s_ck_dly'last_event, tpd_s_q, TRUE),
                 2 => (ck_dly'last_event, tpd_ck_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_drsp_2_VITAL of drsp_2 is
   for VITAL
   end for;
end CFG_drsp_2_VITAL;


----- CELL drsp_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity drsp_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_rb_q                       :	VitalDelayType01 := (366.380 ps, 426.820 ps);
      tpd_s_q                        :	VitalDelayType01 := (366.380 ps, 426.820 ps);
      tpd_ck_q                       :	VitalDelayType01 := (141.320 ps, 260.460 ps);
      thold_ip_ck                    :	VitalDelayType := 0.000 ps;
      tsetup_ip_ck                   :	VitalDelayType := 253.910 ps;
      trecovery_rb_ck                :	VitalDelayType := 175.780 ps;
      trecovery_s_ck                 :	VitalDelayType := 253.910 ps;
      thold_s_ck                     :	VitalDelayType := 0.000 ps;
      thold_rb_ck                    :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_s_ck                      :	VitalDelayType := 0.000 ps;
      tisd_rb_ck                     :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_rb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s                         :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of drsp_4 : entity is TRUE;
end drsp_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of drsp_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL rb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL s_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL s_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL rb_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   VitalWireDelay (rb_ipd, rb, tipd_rb);
   VitalWireDelay (s_ipd, s, tipd_s);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   VitalSignalDelay (s_ck_dly, s_ipd, tisd_s_ck);
   VitalSignalDelay (rb_ck_dly, rb_ipd, tisd_rb_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly, s_ck_dly, rb_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_rb_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_rb_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_s_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_s_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 4);
   VARIABLE ck_delayed : STD_ULOGIC := 'X';
   VARIABLE ip_delayed : STD_ULOGIC := 'X';
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drsp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_rb_ck_posedge,
          TimingData              => Tmkr_rb_ck_posedge,
          TestSignal              => rb_ck_dly,
          TestSignalName          => "rb",
          TestDelay               => tisd_rb_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_rb_ck,
          Removal                 => thold_rb_ck,
          ActiveLow               => TRUE,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drsp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_s_ck_posedge,
          TimingData              => Tmkr_s_ck_posedge,
          TestSignal              => s_ck_dly,
          TestSignalName          => "s",
          TestDelay               => tisd_s_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_s_ck,
          Removal                 => thold_s_ck,
          ActiveLow               => FALSE,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/drsp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          HeaderMsg               => InstancePath &"/drsp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Tviol_rb_ck_posedge or Tviol_s_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => drsp_1_q_tab,
        DataIn => (
               rb_ck_dly, ck_delayed, ip_delayed, s_ck_dly, ck_dly));
      q_zd := Violation XOR q_zd;
      ck_delayed := ck_dly;
      ip_delayed := ip_ck_dly;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (rb_ck_dly'last_event, tpd_rb_q, TRUE),
                 1 => (s_ck_dly'last_event, tpd_s_q, TRUE),
                 2 => (ck_dly'last_event, tpd_ck_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_drsp_4_VITAL of drsp_4 is
   for VITAL
   end for;
end CFG_drsp_4_VITAL;


----- CELL dtrsp_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity dtrsp_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_rb_q                       :	VitalDelayType01 := (355.900 ps, 411.000 ps);
      tpd_s_q                        :	VitalDelayType01 := (355.900 ps, 411.000 ps);
      tpd_ck_q                       :	VitalDelayType01 := (139.650 ps, 238.490 ps);
      thold_ip_ck                    :	VitalDelayType := 0.000 ps;
      tsetup_ip_ck                   :	VitalDelayType := 410.160 ps;
      trecovery_rb_ck                :	VitalDelayType := 175.780 ps;
      trecovery_s_ck                 :	VitalDelayType := 292.970 ps;
      thold_sip_ck                   :	VitalDelayType := 0.000 ps;
      tsetup_sip_ck                  :	VitalDelayType := 410.160 ps;
      thold_sm_ck                    :	VitalDelayType := 0.000 ps;
      tsetup_sm_ck                   :	VitalDelayType := 1035.200 ps;
      thold_s_ck                     :	VitalDelayType := 0.000 ps;
      thold_rb_ck                    :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_sip_ck                    :	VitalDelayType := 0.000 ps;
      tisd_sm_ck                     :	VitalDelayType := 0.000 ps;
      tisd_s_ck                      :	VitalDelayType := 0.000 ps;
      tisd_rb_ck                     :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_rb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_sip                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_sm                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      sip                            :	in    STD_ULOGIC;
      sm                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of dtrsp_2 : entity is TRUE;
end dtrsp_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of dtrsp_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL rb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL s_ipd	 : STD_ULOGIC := 'X';
   SIGNAL sip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL sm_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL sip_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL sm_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL s_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL rb_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   VitalWireDelay (rb_ipd, rb, tipd_rb);
   VitalWireDelay (s_ipd, s, tipd_s);
   VitalWireDelay (sip_ipd, sip, tipd_sip);
   VitalWireDelay (sm_ipd, sm, tipd_sm);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   VitalSignalDelay (sip_ck_dly, sip_ipd, tisd_sip_ck);
   VitalSignalDelay (sm_ck_dly, sm_ipd, tisd_sm_ck);
   VitalSignalDelay (s_ck_dly, s_ipd, tisd_s_ck);
   VitalSignalDelay (rb_ck_dly, rb_ipd, tisd_rb_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly, sip_ck_dly, sm_ck_dly, s_ck_dly, rb_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_rb_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_rb_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_s_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_s_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_sip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_sip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_sm_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_sm_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 6);
   VARIABLE ck_delayed : STD_ULOGIC := 'X';
   VARIABLE ip_delayed : STD_ULOGIC := 'X';
   VARIABLE sip_delayed : STD_ULOGIC := 'X';
   VARIABLE sm_delayed : STD_ULOGIC := 'X';
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/dtrsp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_rb_ck_posedge,
          TimingData              => Tmkr_rb_ck_posedge,
          TestSignal              => rb_ck_dly,
          TestSignalName          => "rb",
          TestDelay               => tisd_rb_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_rb_ck,
          Removal                 => thold_rb_ck,
          ActiveLow               => TRUE,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/dtrsp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_s_ck_posedge,
          TimingData              => Tmkr_s_ck_posedge,
          TestSignal              => s_ck_dly,
          TestSignalName          => "s",
          TestDelay               => tisd_s_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_s_ck,
          Removal                 => thold_s_ck,
          ActiveLow               => FALSE,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/dtrsp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalSetupHoldCheck (
          Violation               => Tviol_sip_ck_posedge,
          TimingData              => Tmkr_sip_ck_posedge,
          TestSignal              => sip_ck_dly,
          TestSignalName          => "sip",
          TestDelay               => tisd_sip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_sip_ck,
          SetupLow                => tsetup_sip_ck,
          HoldHigh                => thold_sip_ck,
          HoldLow                 => thold_sip_ck,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/dtrsp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalSetupHoldCheck (
          Violation               => Tviol_sm_ck_posedge,
          TimingData              => Tmkr_sm_ck_posedge,
          TestSignal              => sm_ck_dly,
          TestSignalName          => "sm",
          TestDelay               => tisd_sm_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_sm_ck,
          SetupLow                => tsetup_sm_ck,
          HoldHigh                => thold_sm_ck,
          HoldLow                 => thold_sm_ck,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/dtrsp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          HeaderMsg               => InstancePath &"/dtrsp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Tviol_rb_ck_posedge or Tviol_s_ck_posedge or Tviol_sip_ck_posedge or Tviol_sm_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => dtrsp_2_q_tab,
        DataIn => (
               rb_ck_dly, ck_delayed, s_ck_dly, sip_delayed, ip_delayed, sm_delayed, ck_dly));
      q_zd := Violation XOR q_zd;
      ck_delayed := ck_dly;
      ip_delayed := ip_ck_dly;
      sip_delayed := sip_ck_dly;
      sm_delayed := sm_ck_dly;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (rb_ck_dly'last_event, tpd_rb_q, TRUE),
                 1 => (s_ck_dly'last_event, tpd_s_q, TRUE),
                 2 => (ck_dly'last_event, tpd_ck_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_dtrsp_2_VITAL of dtrsp_2 is
   for VITAL
   end for;
end CFG_dtrsp_2_VITAL;


----- CELL fulladder -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity fulladder is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_a_s                        :	VitalDelayType01 := (134.710 ps, 165.990 ps);
      tpd_b_s                        :	VitalDelayType01 := (126.110 ps, 165.990 ps);
      tpd_ci_s                       :	VitalDelayType01 := (114.890 ps, 165.990 ps);
      tpd_a_co                       :	VitalDelayType01 := (147.490 ps, 147.490 ps);
      tpd_b_co                       :	VitalDelayType01 := (136.160 ps, 136.160 ps);
      tpd_ci_co                      :	VitalDelayType01 := (141.600 ps, 141.600 ps);
      tipd_a                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_b                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ci                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      a                              :	in    STD_ULOGIC;
      b                              :	in    STD_ULOGIC;
      ci                             :	in    STD_ULOGIC;
      s                              :	out   STD_ULOGIC;
      co                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of fulladder : entity is TRUE;
end fulladder;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of fulladder is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL a_ipd	 : STD_ULOGIC := 'X';
   SIGNAL b_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ci_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (a_ipd, a, tipd_a);
   VitalWireDelay (b_ipd, b, tipd_b);
   VitalWireDelay (ci_ipd, ci, tipd_ci);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (a_ipd, b_ipd, ci_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
   ALIAS s_zd : STD_LOGIC is Results(1);
   ALIAS co_zd : STD_LOGIC is Results(2);

   -- output glitch detection variables
   VARIABLE s_GlitchData	: VitalGlitchDataType;
   VARIABLE co_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      s_zd :=
       ((b_ipd) AND ((NOT a_ipd)) AND ((NOT ci_ipd))) OR (((NOT b_ipd)) AND
         (a_ipd) AND ((NOT ci_ipd))) OR (((NOT b_ipd)) AND ((NOT a_ipd)) AND
         (ci_ipd)) OR ((b_ipd) AND (a_ipd) AND (ci_ipd));
      co_zd :=
       ((ci_ipd) AND (b_ipd)) OR ((b_ipd) AND (a_ipd)) OR ((ci_ipd) AND
         (a_ipd));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => s,
       GlitchData => s_GlitchData,
       OutSignalName => "s",
       OutTemp => s_zd,
       Paths => (0 => (a_ipd'last_event, tpd_a_s, TRUE),
                 1 => (b_ipd'last_event, tpd_b_s, TRUE),
                 2 => (ci_ipd'last_event, tpd_ci_s, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);
      VitalPathDelay01 (
       OutSignal => co,
       GlitchData => co_GlitchData,
       OutSignalName => "co",
       OutTemp => co_zd,
       Paths => (0 => (a_ipd'last_event, tpd_a_co, TRUE),
                 1 => (b_ipd'last_event, tpd_b_co, TRUE),
                 2 => (ci_ipd'last_event, tpd_ci_co, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_fulladder_VITAL of fulladder is
   for VITAL
   end for;
end CFG_fulladder_VITAL;


----- CELL invzp_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity invzp_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_c_op                       :	VitalDelayType01z := 
               (76.135 ps, 77.983 ps, 76.135 ps, 76.135 ps, 77.983 ps, 77.983 ps);
      tpd_ip_op                      :	VitalDelayType01 := (76.135 ps, 77.983 ps);
      tipd_c                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      c                              :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of invzp_1 : entity is TRUE;
end invzp_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of invzp_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL c_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (c_ipd, c, tipd_c);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (c_ipd, ip_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := VitalBUFIF0 (data => (NOT ip_ipd),
              enable => c_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01Z (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (c_ipd'last_event, VitalExtendToFillDelay(tpd_c_op), TRUE),
                 1 => (ip_ipd'last_event, VitalExtendToFillDelay(tpd_ip_op), TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING,
       OutputMap => "UX01ZWLH-");

end process;

end VITAL;

configuration CFG_invzp_1_VITAL of invzp_1 is
   for VITAL
   end for;
end CFG_invzp_1_VITAL;


----- CELL invzp_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity invzp_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_c_op                       :	VitalDelayType01z := 
               (74.575 ps, 76.824 ps, 74.575 ps, 74.575 ps, 76.824 ps, 76.824 ps);
      tpd_ip_op                      :	VitalDelayType01 := (74.575 ps, 76.824 ps);
      tipd_c                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      c                              :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of invzp_2 : entity is TRUE;
end invzp_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of invzp_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL c_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (c_ipd, c, tipd_c);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (c_ipd, ip_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := VitalBUFIF0 (data => (NOT ip_ipd),
              enable => c_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01Z (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (c_ipd'last_event, VitalExtendToFillDelay(tpd_c_op), TRUE),
                 1 => (ip_ipd'last_event, VitalExtendToFillDelay(tpd_ip_op), TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING,
       OutputMap => "UX01ZWLH-");

end process;

end VITAL;

configuration CFG_invzp_2_VITAL of invzp_2 is
   for VITAL
   end for;
end CFG_invzp_2_VITAL;


----- CELL invzp_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity invzp_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_c_op                       :	VitalDelayType01z := 
               (67.499 ps, 82.011 ps, 67.499 ps, 67.499 ps, 82.011 ps, 82.011 ps);
      tpd_ip_op                      :	VitalDelayType01 := (67.499 ps, 82.011 ps);
      tipd_c                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      c                              :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of invzp_4 : entity is TRUE;
end invzp_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of invzp_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL c_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (c_ipd, c, tipd_c);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (c_ipd, ip_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := VitalBUFIF0 (data => (NOT ip_ipd),
              enable => c_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01Z (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (c_ipd'last_event, VitalExtendToFillDelay(tpd_c_op), TRUE),
                 1 => (ip_ipd'last_event, VitalExtendToFillDelay(tpd_ip_op), TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING,
       OutputMap => "UX01ZWLH-");

end process;

end VITAL;

configuration CFG_invzp_4_VITAL of invzp_4 is
   for VITAL
   end for;
end CFG_invzp_4_VITAL;


----- CELL inv_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity inv_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip_op                      :	VitalDelayType01 := (15.613 ps, 14.628 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of inv_1 : entity is TRUE;
end inv_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of inv_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ip_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip_ipd'last_event, tpd_ip_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_inv_1_VITAL of inv_1 is
   for VITAL
   end for;
end CFG_inv_1_VITAL;


----- CELL inv_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity inv_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip_op                      :	VitalDelayType01 := (15.073 ps, 14.892 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of inv_2 : entity is TRUE;
end inv_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of inv_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ip_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip_ipd'last_event, tpd_ip_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_inv_2_VITAL of inv_2 is
   for VITAL
   end for;
end CFG_inv_2_VITAL;


----- CELL inv_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity inv_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip_op                      :	VitalDelayType01 := (12.552 ps, 12.568 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of inv_4 : entity is TRUE;
end inv_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of inv_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ip_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip_ipd'last_event, tpd_ip_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_inv_4_VITAL of inv_4 is
   for VITAL
   end for;
end CFG_inv_4_VITAL;


----- CELL jkrp_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity jkrp_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_rb_q                       :	VitalDelayType01 := (464.910 ps, 104.120 ps);
      tpd_ck_q                       :	VitalDelayType01 := (464.910 ps, 386.530 ps);
      tpd_rb_qb                      :	VitalDelayType01 := (302.440 ps, 309.450 ps);
      tpd_ck_qb                      :	VitalDelayType01 := (276.570 ps, 309.450 ps);
      tsetup_j_ck                    :	VitalDelayType := 292.970 ps;
      tsetup_k_ck                    :	VitalDelayType := 253.910 ps;
      thold_k_ck                     :	VitalDelayType := 0.000 ps;
      thold_j_ck                     :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_k_ck                      :	VitalDelayType := 0.000 ps;
      tisd_j_ck                      :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_j                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_k                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_rb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      j                              :	in    STD_ULOGIC;
      k                              :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC;
      qb                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of jkrp_2 : entity is TRUE;
end jkrp_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of jkrp_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL j_ipd	 : STD_ULOGIC := 'X';
   SIGNAL k_ipd	 : STD_ULOGIC := 'X';
   SIGNAL rb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL k_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL j_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (j_ipd, j, tipd_j);
   VitalWireDelay (k_ipd, k, tipd_k);
   VitalWireDelay (rb_ipd, rb, tipd_rb);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (k_ck_dly, k_ipd, tisd_k_ck);
   VitalSignalDelay (j_ck_dly, j_ipd, tisd_j_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (rb_ipd, ck_dly, k_ck_dly, j_ck_dly)

   -- timing check results
   VARIABLE Tviol_j_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_j_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_k_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_k_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 5);
   VARIABLE ck_delayed : STD_ULOGIC := 'X';
   VARIABLE j_delayed : STD_ULOGIC := 'X';
   VARIABLE k_delayed : STD_ULOGIC := 'X';
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);
   ALIAS qb_zd : STD_LOGIC is Results(2);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;
   VARIABLE qb_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_j_ck_posedge,
          TimingData              => Tmkr_j_ck_posedge,
          TestSignal              => j_ck_dly,
          TestSignalName          => "j",
          TestDelay               => tisd_j_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_j_ck,
          SetupLow                => tsetup_j_ck,
          HoldHigh                => thold_j_ck,
          HoldLow                 => thold_j_ck,
          CheckEnabled            => 
                           TO_X01((NOT rb_ipd) ) /= '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/jkrp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalSetupHoldCheck (
          Violation               => Tviol_k_ck_posedge,
          TimingData              => Tmkr_k_ck_posedge,
          TestSignal              => k_ck_dly,
          TestSignalName          => "k",
          TestDelay               => tisd_k_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_k_ck,
          SetupLow                => tsetup_k_ck,
          HoldHigh                => thold_k_ck,
          HoldLow                 => thold_k_ck,
          CheckEnabled            => 
                           TO_X01((NOT rb_ipd) ) /= '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/jkrp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TO_X01((NOT rb_ipd) ) /= '1',
          HeaderMsg               => InstancePath &"/jkrp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_j_ck_posedge or Tviol_k_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => jkrp_2_q_tab,
        DataIn => (
               rb_ipd, ck_delayed, q_zd, k_delayed, j_delayed, ck_dly));
      q_zd := Violation XOR q_zd;
      qb_zd := (NOT q_zd);
      ck_delayed := ck_dly;
      j_delayed := j_ck_dly;
      k_delayed := k_ck_dly;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (rb_ipd'last_event, tpd_rb_q, TRUE),
                 1 => (ck_dly'last_event, tpd_ck_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);
      VitalPathDelay01 (
       OutSignal => qb,
       GlitchData => qb_GlitchData,
       OutSignalName => "qb",
       OutTemp => qb_zd,
       Paths => (0 => (rb_ipd'last_event, tpd_rb_qb, TRUE),
                 1 => (ck_dly'last_event, tpd_ck_qb, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_jkrp_2_VITAL of jkrp_2 is
   for VITAL
   end for;
end CFG_jkrp_2_VITAL;


----- CELL lp_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity lp_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ck_q                       :	VitalDelayType01 := (106.250 ps, 178.330 ps);
      tpd_ip_q                       :	VitalDelayType01 := (118.050 ps, 178.330 ps);
      thold_ip_ck                    :	VitalDelayType := 136.720 ps;
      tsetup_ip_ck                   :	VitalDelayType := 136.720 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of lp_1 : entity is TRUE;
end lp_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of lp_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 1);
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TRUE,
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TRUE,
          HeaderMsg               => InstancePath &"/lp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => lp_1_q_tab,
        DataIn => (
               ip_ck_dly, ck_dly));
      q_zd := Violation XOR q_zd;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (ck_dly'last_event, tpd_ck_q, TRUE),
                 1 => (ip_ck_dly'last_event, tpd_ip_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_lp_1_VITAL of lp_1 is
   for VITAL
   end for;
end CFG_lp_1_VITAL;


----- CELL lp_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity lp_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ck_q                       :	VitalDelayType01 := (109.060 ps, 176.750 ps);
      tpd_ip_q                       :	VitalDelayType01 := (121.590 ps, 176.750 ps);
      thold_ip_ck                    :	VitalDelayType := 136.720 ps;
      tsetup_ip_ck                   :	VitalDelayType := 136.720 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of lp_2 : entity is TRUE;
end lp_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of lp_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 1);
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TRUE,
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TRUE,
          HeaderMsg               => InstancePath &"/lp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => lp_1_q_tab,
        DataIn => (
               ip_ck_dly, ck_dly));
      q_zd := Violation XOR q_zd;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (ck_dly'last_event, tpd_ck_q, TRUE),
                 1 => (ip_ck_dly'last_event, tpd_ip_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_lp_2_VITAL of lp_2 is
   for VITAL
   end for;
end CFG_lp_2_VITAL;


----- CELL lrp_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity lrp_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ck_q                       :	VitalDelayType01 := (147.920 ps, 170.290 ps);
      tpd_ip_q                       :	VitalDelayType01 := (154.590 ps, 156.110 ps);
      tpd_rb_q                       :	VitalDelayType01 := (154.610 ps, 152.960 ps);
      thold_ip_ck                    :	VitalDelayType := 253.910 ps;
      tsetup_ip_ck                   :	VitalDelayType := 175.780 ps;
      trecovery_rb_ck                :	VitalDelayType := 175.780 ps;
      thold_rb_ck                    :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_rb_ck                     :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_rb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of lrp_1 : entity is TRUE;
end lrp_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of lrp_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL rb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL rb_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   VitalWireDelay (rb_ipd, rb, tipd_rb);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   VitalSignalDelay (rb_ck_dly, rb_ipd, tisd_rb_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly, rb_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_rb_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_rb_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 2);
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_rb_ck_posedge,
          TimingData              => Tmkr_rb_ck_posedge,
          TestSignal              => rb_ck_dly,
          TestSignalName          => "rb",
          TestDelay               => tisd_rb_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_rb_ck,
          Removal                 => thold_rb_ck,
          ActiveLow               => TRUE,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          HeaderMsg               => InstancePath &"/lrp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Tviol_rb_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => lrp_1_q_tab,
        DataIn => (
               rb_ck_dly, ip_ck_dly, ck_dly));
      q_zd := Violation XOR q_zd;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (ck_dly'last_event, tpd_ck_q, TRUE),
                 1 => (ip_ck_dly'last_event, tpd_ip_q, TRUE),
                 2 => (rb_ck_dly'last_event, tpd_rb_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_lrp_1_VITAL of lrp_1 is
   for VITAL
   end for;
end CFG_lrp_1_VITAL;


----- CELL lrp_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity lrp_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ck_q                       :	VitalDelayType01 := (157.290 ps, 181.700 ps);
      tpd_ip_q                       :	VitalDelayType01 := (163.440 ps, 167.700 ps);
      tpd_rb_q                       :	VitalDelayType01 := (163.170 ps, 164.410 ps);
      thold_ip_ck                    :	VitalDelayType := 214.840 ps;
      tsetup_ip_ck                   :	VitalDelayType := 175.780 ps;
      trecovery_rb_ck                :	VitalDelayType := 175.780 ps;
      thold_rb_ck                    :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_rb_ck                     :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_rb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of lrp_2 : entity is TRUE;
end lrp_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of lrp_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL rb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL rb_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   VitalWireDelay (rb_ipd, rb, tipd_rb);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   VitalSignalDelay (rb_ck_dly, rb_ipd, tisd_rb_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly, rb_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_rb_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_rb_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 2);
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_rb_ck_posedge,
          TimingData              => Tmkr_rb_ck_posedge,
          TestSignal              => rb_ck_dly,
          TestSignalName          => "rb",
          TestDelay               => tisd_rb_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_rb_ck,
          Removal                 => thold_rb_ck,
          ActiveLow               => TRUE,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          HeaderMsg               => InstancePath &"/lrp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Tviol_rb_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => lrp_1_q_tab,
        DataIn => (
               rb_ck_dly, ip_ck_dly, ck_dly));
      q_zd := Violation XOR q_zd;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (ck_dly'last_event, tpd_ck_q, TRUE),
                 1 => (ip_ck_dly'last_event, tpd_ip_q, TRUE),
                 2 => (rb_ck_dly'last_event, tpd_rb_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_lrp_2_VITAL of lrp_2 is
   for VITAL
   end for;
end CFG_lrp_2_VITAL;


----- CELL lrp_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity lrp_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ck_q                       :	VitalDelayType01 := (194.220 ps, 219.160 ps);
      tpd_ip_q                       :	VitalDelayType01 := (199.320 ps, 206.330 ps);
      tpd_rb_q                       :	VitalDelayType01 := (199.240 ps, 203.010 ps);
      thold_ip_ck                    :	VitalDelayType := 214.840 ps;
      tsetup_ip_ck                   :	VitalDelayType := 214.840 ps;
      trecovery_rb_ck                :	VitalDelayType := 214.840 ps;
      thold_rb_ck                    :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_rb_ck                     :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_rb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of lrp_4 : entity is TRUE;
end lrp_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of lrp_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL rb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL rb_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   VitalWireDelay (rb_ipd, rb, tipd_rb);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   VitalSignalDelay (rb_ck_dly, rb_ipd, tisd_rb_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly, rb_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_rb_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_rb_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 2);
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_rb_ck_posedge,
          TimingData              => Tmkr_rb_ck_posedge,
          TestSignal              => rb_ck_dly,
          TestSignalName          => "rb",
          TestDelay               => tisd_rb_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_rb_ck,
          Removal                 => thold_rb_ck,
          ActiveLow               => TRUE,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TO_X01((NOT rb_ck_dly) ) /= '1',
          HeaderMsg               => InstancePath &"/lrp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Tviol_rb_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => lrp_1_q_tab,
        DataIn => (
               rb_ck_dly, ip_ck_dly, ck_dly));
      q_zd := Violation XOR q_zd;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (ck_dly'last_event, tpd_ck_q, TRUE),
                 1 => (ip_ck_dly'last_event, tpd_ip_q, TRUE),
                 2 => (rb_ck_dly'last_event, tpd_rb_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_lrp_4_VITAL of lrp_4 is
   for VITAL
   end for;
end CFG_lrp_4_VITAL;


----- CELL lrsp_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity lrsp_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ck_q                       :	VitalDelayType01 := (142.210 ps, 237.400 ps);
      tpd_ip_q                       :	VitalDelayType01 := (176.090 ps, 245.470 ps);
      tpd_rb_q                       :	VitalDelayType01 := (172.500 ps, 172.850 ps);
      tpd_s_q                        :	VitalDelayType01 := (171.500 ps, 245.630 ps);
      thold_ip_ck                    :	VitalDelayType := 292.970 ps;
      tsetup_ip_ck                   :	VitalDelayType := 253.910 ps;
      trecovery_rb_ck                :	VitalDelayType := 214.840 ps;
      trecovery_s_ck                 :	VitalDelayType := 253.910 ps;
      thold_s_ck                     :	VitalDelayType := 0.000 ps;
      thold_rb_ck                    :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_s_ck                      :	VitalDelayType := 0.000 ps;
      tisd_rb_ck                     :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_rb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s                         :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of lrsp_1 : entity is TRUE;
end lrsp_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of lrsp_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL rb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL s_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL s_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL rb_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   VitalWireDelay (rb_ipd, rb, tipd_rb);
   VitalWireDelay (s_ipd, s, tipd_s);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   VitalSignalDelay (s_ck_dly, s_ipd, tisd_s_ck);
   VitalSignalDelay (rb_ck_dly, rb_ipd, tisd_rb_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly, s_ck_dly, rb_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_rb_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_rb_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_s_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_s_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 3);
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrsp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_rb_ck_posedge,
          TimingData              => Tmkr_rb_ck_posedge,
          TestSignal              => rb_ck_dly,
          TestSignalName          => "rb",
          TestDelay               => tisd_rb_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_rb_ck,
          Removal                 => thold_rb_ck,
          ActiveLow               => TRUE,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrsp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_s_ck_posedge,
          TimingData              => Tmkr_s_ck_posedge,
          TestSignal              => s_ck_dly,
          TestSignalName          => "s",
          TestDelay               => tisd_s_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_s_ck,
          Removal                 => thold_s_ck,
          ActiveLow               => FALSE,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrsp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          HeaderMsg               => InstancePath &"/lrsp_1",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Tviol_rb_ck_posedge or Tviol_s_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => lrsp_1_q_tab,
        DataIn => (
               rb_ck_dly, ip_ck_dly, s_ck_dly, ck_dly));
      q_zd := Violation XOR q_zd;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (ck_dly'last_event, tpd_ck_q, TRUE),
                 1 => (ip_ck_dly'last_event, tpd_ip_q, TRUE),
                 2 => (rb_ck_dly'last_event, tpd_rb_q, TRUE),
                 3 => (s_ck_dly'last_event, tpd_s_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_lrsp_1_VITAL of lrsp_1 is
   for VITAL
   end for;
end CFG_lrsp_1_VITAL;


----- CELL lrsp_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity lrsp_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ck_q                       :	VitalDelayType01 := (149.590 ps, 255.370 ps);
      tpd_ip_q                       :	VitalDelayType01 := (184.700 ps, 263.810 ps);
      tpd_rb_q                       :	VitalDelayType01 := (181.150 ps, 181.150 ps);
      tpd_s_q                        :	VitalDelayType01 := (179.750 ps, 264.090 ps);
      thold_ip_ck                    :	VitalDelayType := 253.910 ps;
      tsetup_ip_ck                   :	VitalDelayType := 253.910 ps;
      trecovery_rb_ck                :	VitalDelayType := 175.780 ps;
      trecovery_s_ck                 :	VitalDelayType := 253.910 ps;
      thold_s_ck                     :	VitalDelayType := 0.000 ps;
      thold_rb_ck                    :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_s_ck                      :	VitalDelayType := 0.000 ps;
      tisd_rb_ck                     :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_rb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s                         :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of lrsp_2 : entity is TRUE;
end lrsp_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of lrsp_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL rb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL s_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL s_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL rb_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   VitalWireDelay (rb_ipd, rb, tipd_rb);
   VitalWireDelay (s_ipd, s, tipd_s);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   VitalSignalDelay (s_ck_dly, s_ipd, tisd_s_ck);
   VitalSignalDelay (rb_ck_dly, rb_ipd, tisd_rb_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly, s_ck_dly, rb_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_rb_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_rb_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_s_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_s_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 3);
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrsp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_rb_ck_posedge,
          TimingData              => Tmkr_rb_ck_posedge,
          TestSignal              => rb_ck_dly,
          TestSignalName          => "rb",
          TestDelay               => tisd_rb_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_rb_ck,
          Removal                 => thold_rb_ck,
          ActiveLow               => TRUE,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrsp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_s_ck_posedge,
          TimingData              => Tmkr_s_ck_posedge,
          TestSignal              => s_ck_dly,
          TestSignalName          => "s",
          TestDelay               => tisd_s_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_s_ck,
          Removal                 => thold_s_ck,
          ActiveLow               => FALSE,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrsp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          HeaderMsg               => InstancePath &"/lrsp_2",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Tviol_rb_ck_posedge or Tviol_s_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => lrsp_1_q_tab,
        DataIn => (
               rb_ck_dly, ip_ck_dly, s_ck_dly, ck_dly));
      q_zd := Violation XOR q_zd;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (ck_dly'last_event, tpd_ck_q, TRUE),
                 1 => (ip_ck_dly'last_event, tpd_ip_q, TRUE),
                 2 => (rb_ck_dly'last_event, tpd_rb_q, TRUE),
                 3 => (s_ck_dly'last_event, tpd_s_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_lrsp_2_VITAL of lrsp_2 is
   for VITAL
   end for;
end CFG_lrsp_2_VITAL;


----- CELL lrsp_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity lrsp_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ck_q                       :	VitalDelayType01 := (178.830 ps, 311.030 ps);
      tpd_ip_q                       :	VitalDelayType01 := (218.860 ps, 321.060 ps);
      tpd_rb_q                       :	VitalDelayType01 := (215.300 ps, 213.190 ps);
      tpd_s_q                        :	VitalDelayType01 := (212.830 ps, 320.440 ps);
      thold_ip_ck                    :	VitalDelayType := 253.910 ps;
      tsetup_ip_ck                   :	VitalDelayType := 332.030 ps;
      trecovery_rb_ck                :	VitalDelayType := 214.840 ps;
      trecovery_s_ck                 :	VitalDelayType := 332.030 ps;
      thold_s_ck                     :	VitalDelayType := 0.000 ps;
      thold_rb_ck                    :	VitalDelayType := 0.000 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tisd_s_ck                      :	VitalDelayType := 0.000 ps;
      tisd_rb_ck                     :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_rb                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s                         :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of lrsp_4 : entity is TRUE;
end lrsp_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of lrsp_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ck_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip_ipd	 : STD_ULOGIC := 'X';
   SIGNAL rb_ipd	 : STD_ULOGIC := 'X';
   SIGNAL s_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL ip_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL s_ck_dly	 : STD_ULOGIC := 'X';
   SIGNAL rb_ck_dly	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ck_ipd, ck, tipd_ck);
   VitalWireDelay (ip_ipd, ip, tipd_ip);
   VitalWireDelay (rb_ipd, rb, tipd_rb);
   VitalWireDelay (s_ipd, s, tipd_s);
   end block;
   ----------------------
   --  INPUT SIGNAL DELAYs
   ----------------------
   SignalDelay : block
   begin
   VitalSignalDelay (ck_dly, ck_ipd, ticd_ck);
   VitalSignalDelay (ip_ck_dly, ip_ipd, tisd_ip_ck);
   VitalSignalDelay (s_ck_dly, s_ipd, tisd_s_ck);
   VitalSignalDelay (rb_ck_dly, rb_ipd, tisd_rb_ck);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ck_dly, ip_ck_dly, s_ck_dly, rb_ck_dly)

   -- timing check results
   VARIABLE Tviol_ip_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_ip_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_rb_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_rb_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Tviol_s_ck_posedge	: STD_ULOGIC := '0';
   VARIABLE Tmkr_s_ck_posedge	: VitalTimingDataType := VitalTimingDataInit;
   VARIABLE Pviol_ck	: STD_ULOGIC := '0';
   VARIABLE PInfo_ck	: VitalPeriodDataType := VitalPeriodDataInit;

   -- functionality results
   VARIABLE Violation : STD_ULOGIC := '0';
   VARIABLE PrevData_q : STD_LOGIC_VECTOR(0 to 3);
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS q_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE q_GlitchData	: VitalGlitchDataType;

   begin

      ------------------------
      --  Timing Check Section
      ------------------------
      if (TimingChecksOn) then
         VitalSetupHoldCheck (
          Violation               => Tviol_ip_ck_posedge,
          TimingData              => Tmkr_ip_ck_posedge,
          TestSignal              => ip_ck_dly,
          TestSignalName          => "ip",
          TestDelay               => tisd_ip_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          SetupHigh               => tsetup_ip_ck,
          SetupLow                => tsetup_ip_ck,
          HoldHigh                => thold_ip_ck,
          HoldLow                 => thold_ip_ck,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrsp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_rb_ck_posedge,
          TimingData              => Tmkr_rb_ck_posedge,
          TestSignal              => rb_ck_dly,
          TestSignalName          => "rb",
          TestDelay               => tisd_rb_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_rb_ck,
          Removal                 => thold_rb_ck,
          ActiveLow               => TRUE,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrsp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalRecoveryRemovalCheck (
          Violation               => Tviol_s_ck_posedge,
          TimingData              => Tmkr_s_ck_posedge,
          TestSignal              => s_ck_dly,
          TestSignalName          => "s",
          TestDelay               => tisd_s_ck,
          RefSignal               => ck_dly,
          RefSignalName          => "ck",
          RefDelay                => ticd_ck,
          Recovery                => trecovery_s_ck,
          Removal                 => thold_s_ck,
          ActiveLow               => FALSE,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          RefTransition           => 'R',
          HeaderMsg               => InstancePath & "/lrsp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
         VitalPeriodPulseCheck (
          Violation               => Pviol_ck,
          PeriodData              => PInfo_ck,
          TestSignal              => ck_dly,
          TestSignalName          => "ck",
          TestDelay               => ticd_ck,
          Period                  => 0 ps,
          PulseWidthHigh          => tpw_ck_posedge,
          PulseWidthLow           => tpw_ck_negedge,
          CheckEnabled            => 
                           TO_X01(( s_ck_dly ) OR ( (NOT rb_ck_dly) ) ) /=
                            '1',
          HeaderMsg               => InstancePath &"/lrsp_4",
          Xon                     => Xon,
          MsgOn                   => MsgOn,
          MsgSeverity             => WARNING);
      end if;

      -------------------------
      --  Functionality Section
      -------------------------
      Violation := Tviol_ip_ck_posedge or Tviol_rb_ck_posedge or Tviol_s_ck_posedge or Pviol_ck;
      VitalStateTable(
        Result => q_zd,
        PreviousDataIn => PrevData_q,
        StateTable => lrsp_1_q_tab,
        DataIn => (
               rb_ck_dly, ip_ck_dly, s_ck_dly, ck_dly));
      q_zd := Violation XOR q_zd;

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => q,
       GlitchData => q_GlitchData,
       OutSignalName => "q",
       OutTemp => q_zd,
       Paths => (0 => (ck_dly'last_event, tpd_ck_q, TRUE),
                 1 => (ip_ck_dly'last_event, tpd_ip_q, TRUE),
                 2 => (rb_ck_dly'last_event, tpd_rb_q, TRUE),
                 3 => (s_ck_dly'last_event, tpd_s_q, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_lrsp_4_VITAL of lrsp_4 is
   for VITAL
   end for;
end CFG_lrsp_4_VITAL;


----- CELL mux2_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity mux2_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (81.225 ps, 113.170 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (89.660 ps, 102.160 ps);
      tpd_s_op                       :	VitalDelayType01 := (128.470 ps, 147.130 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s                         :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of mux2_1 : entity is TRUE;
end mux2_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of mux2_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL s_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (s_ipd, s, tipd_s);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, s_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := VitalMUX
                 (data => (ip2_ipd, ip1_ipd),
                  dselect => (0 => s_ipd));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (s_ipd'last_event, tpd_s_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_mux2_1_VITAL of mux2_1 is
   for VITAL
   end for;
end CFG_mux2_1_VITAL;


----- CELL mux2_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity mux2_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (99.747 ps, 142.260 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (108.300 ps, 131.740 ps);
      tpd_s_op                       :	VitalDelayType01 := (146.990 ps, 175.270 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s                         :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of mux2_2 : entity is TRUE;
end mux2_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of mux2_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL s_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (s_ipd, s, tipd_s);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, s_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := VitalMUX
                 (data => (ip2_ipd, ip1_ipd),
                  dselect => (0 => s_ipd));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (s_ipd'last_event, tpd_s_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_mux2_2_VITAL of mux2_2 is
   for VITAL
   end for;
end CFG_mux2_2_VITAL;


----- CELL mux2_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity mux2_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (135.470 ps, 196.130 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (144.510 ps, 185.520 ps);
      tpd_s_op                       :	VitalDelayType01 := (182.730 ps, 228.270 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s                         :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of mux2_4 : entity is TRUE;
end mux2_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of mux2_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL s_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (s_ipd, s, tipd_s);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, s_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := VitalMUX
                 (data => (ip2_ipd, ip1_ipd),
                  dselect => (0 => s_ipd));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (s_ipd'last_event, tpd_s_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_mux2_4_VITAL of mux2_4 is
   for VITAL
   end for;
end CFG_mux2_4_VITAL;


----- CELL mux3_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity mux3_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (145.310 ps, 155.990 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (141.270 ps, 155.610 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (87.308 ps, 155.610 ps);
      tpd_s0_op                      :	VitalDelayType01 := (123.920 ps, 155.610 ps);
      tpd_s1_op                      :	VitalDelayType01 := (87.308 ps, 155.610 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s0                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s1                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      s0                             :	in    STD_ULOGIC;
      s1                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of mux3_2 : entity is TRUE;
end mux3_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of mux3_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL s0_ipd	 : STD_ULOGIC := 'X';
   SIGNAL s1_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (s0_ipd, s0, tipd_s0);
   VitalWireDelay (s1_ipd, s1, tipd_s1);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, s0_ipd, s1_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := VitalMUX
                 (data => (ip3_ipd, ip3_ipd, ip2_ipd, ip1_ipd),
                  dselect => (s1_ipd, s0_ipd));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (s0_ipd'last_event, tpd_s0_op, TRUE),
                 4 => (s1_ipd'last_event, tpd_s1_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_mux3_2_VITAL of mux3_2 is
   for VITAL
   end for;
end CFG_mux3_2_VITAL;


----- CELL mux4_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity mux4_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (150.450 ps, 162.170 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (146.730 ps, 162.170 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (145.760 ps, 162.170 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (143.220 ps, 162.170 ps);
      tpd_s0_op                      :	VitalDelayType01 := (142.610 ps, 162.170 ps);
      tpd_s1_op                      :	VitalDelayType01 := (142.610 ps, 162.170 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s0                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s1                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      s0                             :	in    STD_ULOGIC;
      s1                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of mux4_2 : entity is TRUE;
end mux4_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of mux4_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';
   SIGNAL s0_ipd	 : STD_ULOGIC := 'X';
   SIGNAL s1_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   VitalWireDelay (s0_ipd, s0, tipd_s0);
   VitalWireDelay (s1_ipd, s1, tipd_s1);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd, s0_ipd, s1_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := VitalMUX
                 (data => (ip4_ipd, ip3_ipd, ip2_ipd, ip1_ipd),
                  dselect => (s1_ipd, s0_ipd));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE),
                 4 => (s0_ipd'last_event, tpd_s0_op, TRUE),
                 5 => (s1_ipd'last_event, tpd_s1_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_mux4_2_VITAL of mux4_2 is
   for VITAL
   end for;
end CFG_mux4_2_VITAL;


----- CELL nand2_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nand2_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (24.797 ps, 32.404 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (20.156 ps, 32.404 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nand2_1 : entity is TRUE;
end nand2_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nand2_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) AND (ip1_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nand2_1_VITAL of nand2_1 is
   for VITAL
   end for;
end CFG_nand2_1_VITAL;


----- CELL nand2_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nand2_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (24.328 ps, 33.007 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (19.516 ps, 33.007 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nand2_2 : entity is TRUE;
end nand2_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nand2_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) AND (ip1_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nand2_2_VITAL of nand2_2 is
   for VITAL
   end for;
end CFG_nand2_2_VITAL;


----- CELL nand2_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nand2_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (23.473 ps, 31.451 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (18.452 ps, 31.451 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nand2_4 : entity is TRUE;
end nand2_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nand2_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) AND (ip1_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nand2_4_VITAL of nand2_4 is
   for VITAL
   end for;
end CFG_nand2_4_VITAL;


----- CELL nand3_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nand3_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (34.895 ps, 63.757 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (32.169 ps, 63.757 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (28.051 ps, 63.757 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nand3_1 : entity is TRUE;
end nand3_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nand3_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) AND (ip1_ipd) AND (ip3_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nand3_1_VITAL of nand3_1 is
   for VITAL
   end for;
end CFG_nand3_1_VITAL;


----- CELL nand3_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nand3_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (33.895 ps, 63.157 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (31.024 ps, 63.157 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (25.789 ps, 63.157 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nand3_2 : entity is TRUE;
end nand3_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nand3_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) AND (ip1_ipd) AND (ip3_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nand3_2_VITAL of nand3_2 is
   for VITAL
   end for;
end CFG_nand3_2_VITAL;


----- CELL nand3_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nand3_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (33.720 ps, 62.226 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (30.598 ps, 62.226 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (25.249 ps, 62.226 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nand3_4 : entity is TRUE;
end nand3_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nand3_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) AND (ip1_ipd) AND (ip3_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nand3_4_VITAL of nand3_4 is
   for VITAL
   end for;
end CFG_nand3_4_VITAL;


----- CELL nand4_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nand4_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (40.828 ps, 87.898 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (39.848 ps, 87.898 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (35.624 ps, 87.898 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (29.415 ps, 87.898 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nand4_1 : entity is TRUE;
end nand4_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nand4_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) AND (ip1_ipd) AND (ip3_ipd) AND (ip4_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nand4_1_VITAL of nand4_1 is
   for VITAL
   end for;
end CFG_nand4_1_VITAL;


----- CELL nand4_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nand4_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (39.524 ps, 89.948 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (38.600 ps, 89.948 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (34.460 ps, 89.948 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (28.493 ps, 89.948 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nand4_2 : entity is TRUE;
end nand4_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nand4_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) AND (ip1_ipd) AND (ip3_ipd) AND (ip4_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nand4_2_VITAL of nand4_2 is
   for VITAL
   end for;
end CFG_nand4_2_VITAL;


----- CELL nand4_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nand4_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (118.710 ps, 237.020 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (125.170 ps, 237.020 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (130.890 ps, 237.020 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (134.200 ps, 237.020 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nand4_4 : entity is TRUE;
end nand4_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nand4_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) AND (ip1_ipd) AND (ip3_ipd) AND (ip4_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nand4_4_VITAL of nand4_4 is
   for VITAL
   end for;
end CFG_nand4_4_VITAL;


----- CELL nor2_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nor2_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (41.343 ps, 41.343 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (38.332 ps, 33.096 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nor2_1 : entity is TRUE;
end nor2_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nor2_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) OR (ip1_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nor2_1_VITAL of nor2_1 is
   for VITAL
   end for;
end CFG_nor2_1_VITAL;


----- CELL nor2_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nor2_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (40.019 ps, 40.019 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (36.506 ps, 31.152 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nor2_2 : entity is TRUE;
end nor2_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nor2_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) OR (ip1_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nor2_2_VITAL of nor2_2 is
   for VITAL
   end for;
end CFG_nor2_2_VITAL;


----- CELL nor2_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nor2_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (40.748 ps, 40.748 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (37.126 ps, 31.770 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nor2_4 : entity is TRUE;
end nor2_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nor2_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) OR (ip1_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nor2_4_VITAL of nor2_4 is
   for VITAL
   end for;
end CFG_nor2_4_VITAL;


----- CELL nor3_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nor3_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (79.712 ps, 79.712 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (77.733 ps, 77.733 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (77.627 ps, 55.179 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nor3_1 : entity is TRUE;
end nor3_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nor3_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) OR (ip1_ipd) OR (ip3_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nor3_1_VITAL of nor3_1 is
   for VITAL
   end for;
end CFG_nor3_1_VITAL;


----- CELL nor3_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nor3_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (76.153 ps, 76.153 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (74.157 ps, 74.157 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (73.742 ps, 50.656 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nor3_2 : entity is TRUE;
end nor3_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nor3_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) OR (ip1_ipd) OR (ip3_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nor3_2_VITAL of nor3_2 is
   for VITAL
   end for;
end CFG_nor3_2_VITAL;


----- CELL nor3_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nor3_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (71.224 ps, 71.224 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (68.824 ps, 68.824 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (67.775 ps, 45.069 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nor3_4 : entity is TRUE;
end nor3_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nor3_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) OR (ip1_ipd) OR (ip3_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nor3_4_VITAL of nor3_4 is
   for VITAL
   end for;
end CFG_nor3_4_VITAL;


----- CELL nor4_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nor4_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (125.870 ps, 125.870 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (124.490 ps, 124.390 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (124.490 ps, 110.190 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (124.490 ps, 73.374 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nor4_1 : entity is TRUE;
end nor4_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nor4_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) OR (ip1_ipd) OR (ip3_ipd) OR (ip4_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nor4_1_VITAL of nor4_1 is
   for VITAL
   end for;
end CFG_nor4_1_VITAL;


----- CELL nor4_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nor4_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (116.580 ps, 116.580 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (114.320 ps, 114.320 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (114.180 ps, 99.866 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (114.180 ps, 61.945 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nor4_2 : entity is TRUE;
end nor4_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nor4_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) OR (ip1_ipd) OR (ip3_ipd) OR (ip4_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nor4_2_VITAL of nor4_2 is
   for VITAL
   end for;
end CFG_nor4_2_VITAL;


----- CELL nor4_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity nor4_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (278.370 ps, 269.390 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (278.370 ps, 266.940 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (278.370 ps, 251.950 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (278.370 ps, 219.400 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of nor4_4 : entity is TRUE;
end nor4_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of nor4_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip2_ipd) OR (ip1_ipd) OR (ip3_ipd) OR (ip4_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_nor4_4_VITAL of nor4_4 is
   for VITAL
   end for;
end CFG_nor4_4_VITAL;


----- CELL not_ab_or_c_or_d -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity not_ab_or_c_or_d is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (103.570 ps, 103.570 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (86.729 ps, 86.729 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (62.053 ps, 60.836 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (62.053 ps, 44.104 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of not_ab_or_c_or_d : entity is TRUE;
end not_ab_or_c_or_d;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of not_ab_or_c_or_d is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (NOT ((ip3_ipd) OR ((ip2_ipd) AND (ip1_ipd)) OR (ip4_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_not_ab_or_c_or_d_VITAL of not_ab_or_c_or_d is
   for VITAL
   end for;
end CFG_not_ab_or_c_or_d_VITAL;


----- CELL or2_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity or2_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (47.803 ps, 89.811 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (54.253 ps, 89.811 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of or2_1 : entity is TRUE;
end or2_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of or2_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) OR (ip1_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_or2_1_VITAL of or2_1 is
   for VITAL
   end for;
end CFG_or2_1_VITAL;


----- CELL or2_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity or2_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (50.052 ps, 91.745 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (57.061 ps, 91.745 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of or2_2 : entity is TRUE;
end or2_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of or2_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) OR (ip1_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_or2_2_VITAL of or2_2 is
   for VITAL
   end for;
end CFG_or2_2_VITAL;


----- CELL or2_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity or2_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (60.881 ps, 121.660 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (67.762 ps, 121.660 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of or2_4 : entity is TRUE;
end or2_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of or2_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) OR (ip1_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_or2_4_VITAL of or2_4 is
   for VITAL
   end for;
end CFG_or2_4_VITAL;


----- CELL or3_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity or3_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (50.642 ps, 145.390 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (57.579 ps, 145.390 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (60.161 ps, 145.390 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of or3_1 : entity is TRUE;
end or3_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of or3_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) OR (ip1_ipd) OR (ip3_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_or3_1_VITAL of or3_1 is
   for VITAL
   end for;
end CFG_or3_1_VITAL;


----- CELL or3_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity or3_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (52.836 ps, 147.750 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (60.392 ps, 147.750 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (63.365 ps, 147.750 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of or3_2 : entity is TRUE;
end or3_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of or3_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) OR (ip1_ipd) OR (ip3_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_or3_2_VITAL of or3_2 is
   for VITAL
   end for;
end CFG_or3_2_VITAL;


----- CELL or3_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity or3_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (63.456 ps, 195.760 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (71.168 ps, 195.760 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (75.110 ps, 195.760 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of or3_4 : entity is TRUE;
end or3_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of or3_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) OR (ip1_ipd) OR (ip3_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_or3_4_VITAL of or3_4 is
   for VITAL
   end for;
end CFG_or3_4_VITAL;


----- CELL or4_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity or4_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (51.813 ps, 205.330 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (58.855 ps, 205.330 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (62.355 ps, 205.330 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (61.796 ps, 205.330 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of or4_1 : entity is TRUE;
end or4_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of or4_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) OR (ip1_ipd) OR (ip3_ipd) OR (ip4_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_or4_1_VITAL of or4_1 is
   for VITAL
   end for;
end CFG_or4_1_VITAL;


----- CELL or4_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity or4_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (54.033 ps, 208.280 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (61.673 ps, 208.280 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (65.650 ps, 208.280 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (65.187 ps, 208.280 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of or4_2 : entity is TRUE;
end or4_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of or4_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) OR (ip1_ipd) OR (ip3_ipd) OR (ip4_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_or4_2_VITAL of or4_2 is
   for VITAL
   end for;
end CFG_or4_2_VITAL;


----- CELL or4_4 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity or4_4 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (64.467 ps, 274.440 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (72.362 ps, 274.440 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (77.281 ps, 274.440 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (77.843 ps, 274.440 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of or4_4 : entity is TRUE;
end or4_4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of or4_4 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip3_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip4_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   VitalWireDelay (ip3_ipd, ip3, tipd_ip3);
   VitalWireDelay (ip4_ipd, ip4, tipd_ip4);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd, ip3_ipd, ip4_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd := (ip2_ipd) OR (ip1_ipd) OR (ip3_ipd) OR (ip4_ipd);

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE),
                 2 => (ip3_ipd'last_event, tpd_ip3_op, TRUE),
                 3 => (ip4_ipd'last_event, tpd_ip4_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_or4_4_VITAL of or4_4 is
   for VITAL
   end for;
end CFG_or4_4_VITAL;


----- CELL xnor2_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity xnor2_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (116.260 ps, 116.260 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (109.270 ps, 109.270 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of xnor2_1 : entity is TRUE;
end xnor2_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of xnor2_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd :=
       ((ip2_ipd) AND (ip1_ipd)) OR (((NOT ip2_ipd)) AND ((NOT ip1_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_xnor2_1_VITAL of xnor2_1 is
   for VITAL
   end for;
end CFG_xnor2_1_VITAL;


----- CELL xnor2_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity xnor2_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (136.090 ps, 136.090 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (128.320 ps, 128.320 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of xnor2_2 : entity is TRUE;
end xnor2_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of xnor2_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd :=
       ((ip2_ipd) AND (ip1_ipd)) OR (((NOT ip2_ipd)) AND ((NOT ip1_ipd)));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_xnor2_2_VITAL of xnor2_2 is
   for VITAL
   end for;
end CFG_xnor2_2_VITAL;


----- CELL xor2_1 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity xor2_1 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (82.440 ps, 82.440 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (73.748 ps, 73.748 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of xor2_1 : entity is TRUE;
end xor2_1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of xor2_1 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd :=
       ((ip2_ipd) AND ((NOT ip1_ipd))) OR (((NOT ip2_ipd)) AND (ip1_ipd));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_xor2_1_VITAL of xor2_1 is
   for VITAL
   end for;
end CFG_xor2_1_VITAL;


----- CELL xor2_2 -----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;


-- entity declaration --
entity xor2_2 is
   generic(
      TimingChecksOn: Boolean := True;
      InstancePath: STRING := "*";
      Xon: Boolean := False;
      MsgOn: Boolean := True;
      tpd_ip1_op                     :	VitalDelayType01 := (84.695 ps, 84.695 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (75.953 ps, 75.953 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
attribute VITAL_LEVEL0 of xor2_2 : entity is TRUE;
end xor2_2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library vtvt_tsmc180;
use vtvt_tsmc180.VTABLES.all;
architecture VITAL of xor2_2 is
   attribute VITAL_LEVEL1 of VITAL : architecture is TRUE;

   SIGNAL ip1_ipd	 : STD_ULOGIC := 'X';
   SIGNAL ip2_ipd	 : STD_ULOGIC := 'X';

begin

   ---------------------
   --  INPUT PATH DELAYs
   ---------------------
   WireDelay : block
   begin
   VitalWireDelay (ip1_ipd, ip1, tipd_ip1);
   VitalWireDelay (ip2_ipd, ip2, tipd_ip2);
   end block;
   --------------------
   --  BEHAVIOR SECTION
   --------------------
   VITALBehavior : process (ip1_ipd, ip2_ipd)


   -- functionality results
   VARIABLE Results : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
   ALIAS op_zd : STD_LOGIC is Results(1);

   -- output glitch detection variables
   VARIABLE op_GlitchData	: VitalGlitchDataType;

   begin

      -------------------------
      --  Functionality Section
      -------------------------
      op_zd :=
       ((ip2_ipd) AND ((NOT ip1_ipd))) OR (((NOT ip2_ipd)) AND (ip1_ipd));

      ----------------------
      --  Path Delay Section
      ----------------------
      VitalPathDelay01 (
       OutSignal => op,
       GlitchData => op_GlitchData,
       OutSignalName => "op",
       OutTemp => op_zd,
       Paths => (0 => (ip1_ipd'last_event, tpd_ip1_op, TRUE),
                 1 => (ip2_ipd'last_event, tpd_ip2_op, TRUE)),
       Mode => OnDetect,
       Xon => Xon,
       MsgOn => MsgOn,
       MsgSeverity => WARNING);

end process;

end VITAL;

configuration CFG_xor2_2_VITAL of xor2_2 is
   for VITAL
   end for;
end CFG_xor2_2_VITAL;


---- end of library ----
