
----------------------------------------------------------------
-- 
-- Created by the Synopsys Library Compiler Y-2006.06-SP2
-- FILENAME     :    /home/jddjig01/standard_cells_library/vtvt_tsmc180/vtvt_tsmc180_release/Synopsys_Libraries/vtvt_tsmc180_Vcomponents.vhd
-- FILE CONTENTS:    VITAL Component Package
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
-- synopsys translate_on

package COMPONENTS is

constant DefaultTimingChecksOn : Boolean := True;
constant DefaultXon : Boolean := False;
constant DefaultMsgOn : Boolean := True;

----- Component abnorc -----
component abnorc
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (40220.000 ps, 40072.000 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (40220.000 ps, 40072.000 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (40220.000 ps, 40058.000 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component aborc -----
component aborc
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (128.520 ps, 120.920 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (128.520 ps, 120.920 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (78.105 ps, 133.320 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component ab_or_c_or_d -----
component ab_or_c_or_d
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (100.620 ps, 133.640 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (97.206 ps, 133.640 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (61.837 ps, 133.640 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (54.060 ps, 133.640 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component and2_1 -----
component and2_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (81.491 ps, 71.170 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (81.491 ps, 76.250 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component and2_2 -----
component and2_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (82.098 ps, 71.737 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (82.098 ps, 76.223 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component and2_4 -----
component and2_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (101.640 ps, 89.679 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (101.640 ps, 94.098 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component and3_1 -----
component and3_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (128.970 ps, 103.900 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (128.970 ps, 112.250 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (128.970 ps, 112.330 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component and3_2 -----
component and3_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (132.380 ps, 105.900 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (132.380 ps, 113.440 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (132.380 ps, 117.070 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component and3_4 -----
component and3_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (160.320 ps, 129.050 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (160.320 ps, 135.960 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (160.320 ps, 139.260 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component and4_1 -----
component and4_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (175.740 ps, 133.000 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (175.740 ps, 146.220 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (175.740 ps, 148.350 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (175.740 ps, 151.420 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component and4_2 -----
component and4_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (175.210 ps, 131.640 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (175.210 ps, 142.210 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (175.210 ps, 148.280 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (175.210 ps, 150.170 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component and4_4 -----
component and4_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (214.580 ps, 161.710 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (214.580 ps, 172.020 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (214.580 ps, 178.130 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (214.580 ps, 180.650 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component bufzp_2 -----
component bufzp_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_c_op                       :	VitalDelayType01z := 
               (114.230 ps, 121.020 ps, 114.230 ps, 114.230 ps, 121.020 ps, 121.020 ps);
      tpd_ip_op                      :	VitalDelayType01 := (119.170 ps, 126.530 ps);
      tipd_c                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      c                              :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component buf_1 -----
component buf_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip_op                      :	VitalDelayType01 := (46.674 ps, 49.504 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component buf_2 -----
component buf_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip_op                      :	VitalDelayType01 := (47.513 ps, 49.522 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component buf_4 -----
component buf_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip_op                      :	VitalDelayType01 := (42.195 ps, 43.730 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component cd_8 -----
component cd_8
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip_op                      :	VitalDelayType01 := (110.790 ps, 112.290 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component cd_12 -----
component cd_12
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip_op                      :	VitalDelayType01 := (179.240 ps, 180.760 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component cd_16 -----
component cd_16
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip_op                      :	VitalDelayType01 := (247.870 ps, 249.440 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component dksp_1 -----
component dksp_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      sb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC;
      qb                             :	out   STD_ULOGIC);
end component;


----- Component dp_1 -----
component dp_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ck_q                       :	VitalDelayType01 := (91.633 ps, 184.590 ps);
      thold_ip_ck                    :	VitalDelayType := 0.000 ps;
      tsetup_ip_ck                   :	VitalDelayType := 136.720 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component dp_2 -----
component dp_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ck_q                       :	VitalDelayType01 := (100.920 ps, 203.740 ps);
      thold_ip_ck                    :	VitalDelayType := 0.000 ps;
      tsetup_ip_ck                   :	VitalDelayType := 136.720 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component dp_4 -----
component dp_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ck_q                       :	VitalDelayType01 := (134.120 ps, 252.660 ps);
      thold_ip_ck                    :	VitalDelayType := 0.000 ps;
      tsetup_ip_ck                   :	VitalDelayType := 136.720 ps;
      tpw_ck_posedge                 :	VitalDelayType := 750.000 ps;
      tpw_ck_negedge                 :	VitalDelayType := 750.000 ps;
      tisd_ip_ck                     :	VitalDelayType := 0.000 ps;
      ticd_ck                        :	VitalDelayType := 0.000 ps;
      tipd_ck                        :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component drp_1 -----
component drp_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component drp_2 -----
component drp_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component drp_4 -----
component drp_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component drsp_1 -----
component drsp_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component drsp_2 -----
component drsp_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component drsp_4 -----
component drsp_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component dtrsp_2 -----
component dtrsp_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      sip                            :	in    STD_ULOGIC;
      sm                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component fulladder -----
component fulladder
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_a_s                        :	VitalDelayType01 := (134.710 ps, 165.990 ps);
      tpd_b_s                        :	VitalDelayType01 := (126.110 ps, 165.990 ps);
      tpd_ci_s                       :	VitalDelayType01 := (114.890 ps, 165.990 ps);
      tpd_a_co                       :	VitalDelayType01 := (147.490 ps, 147.490 ps);
      tpd_b_co                       :	VitalDelayType01 := (136.160 ps, 136.160 ps);
      tpd_ci_co                      :	VitalDelayType01 := (141.600 ps, 141.600 ps);
      tipd_a                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_b                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ci                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      a                              :	in    STD_ULOGIC;
      b                              :	in    STD_ULOGIC;
      ci                             :	in    STD_ULOGIC;
      s                              :	out   STD_ULOGIC;
      co                             :	out   STD_ULOGIC);
end component;


----- Component invzp_1 -----
component invzp_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_c_op                       :	VitalDelayType01z := 
               (76.135 ps, 77.983 ps, 76.135 ps, 76.135 ps, 77.983 ps, 77.983 ps);
      tpd_ip_op                      :	VitalDelayType01 := (76.135 ps, 77.983 ps);
      tipd_c                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      c                              :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component invzp_2 -----
component invzp_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_c_op                       :	VitalDelayType01z := 
               (74.575 ps, 76.824 ps, 74.575 ps, 74.575 ps, 76.824 ps, 76.824 ps);
      tpd_ip_op                      :	VitalDelayType01 := (74.575 ps, 76.824 ps);
      tipd_c                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      c                              :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component invzp_4 -----
component invzp_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_c_op                       :	VitalDelayType01z := 
               (67.499 ps, 82.011 ps, 67.499 ps, 67.499 ps, 82.011 ps, 82.011 ps);
      tpd_ip_op                      :	VitalDelayType01 := (67.499 ps, 82.011 ps);
      tipd_c                         :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      c                              :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component inv_1 -----
component inv_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip_op                      :	VitalDelayType01 := (15.613 ps, 14.628 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component inv_2 -----
component inv_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip_op                      :	VitalDelayType01 := (15.073 ps, 14.892 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component inv_4 -----
component inv_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip_op                      :	VitalDelayType01 := (12.552 ps, 12.568 ps);
      tipd_ip                        :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component jkrp_2 -----
component jkrp_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      j                              :	in    STD_ULOGIC;
      k                              :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC;
      qb                             :	out   STD_ULOGIC);
end component;


----- Component lp_1 -----
component lp_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component lp_2 -----
component lp_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component lrp_1 -----
component lrp_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component lrp_2 -----
component lrp_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component lrp_4 -----
component lrp_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component lrsp_1 -----
component lrsp_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component lrsp_2 -----
component lrsp_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component lrsp_4 -----
component lrsp_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ck                             :	in    STD_ULOGIC;
      ip                             :	in    STD_ULOGIC;
      rb                             :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      q                              :	out   STD_ULOGIC);
end component;


----- Component mux2_1 -----
component mux2_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (81.225 ps, 113.170 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (89.660 ps, 102.160 ps);
      tpd_s_op                       :	VitalDelayType01 := (128.470 ps, 147.130 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s                         :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component mux2_2 -----
component mux2_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (99.747 ps, 142.260 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (108.300 ps, 131.740 ps);
      tpd_s_op                       :	VitalDelayType01 := (146.990 ps, 175.270 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s                         :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component mux2_4 -----
component mux2_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (135.470 ps, 196.130 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (144.510 ps, 185.520 ps);
      tpd_s_op                       :	VitalDelayType01 := (182.730 ps, 228.270 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_s                         :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      s                              :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component mux3_2 -----
component mux3_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      s0                             :	in    STD_ULOGIC;
      s1                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component mux4_2 -----
component mux4_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
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

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      s0                             :	in    STD_ULOGIC;
      s1                             :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nand2_1 -----
component nand2_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (24.797 ps, 32.404 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (20.156 ps, 32.404 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nand2_2 -----
component nand2_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (24.328 ps, 33.007 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (19.516 ps, 33.007 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nand2_4 -----
component nand2_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (23.473 ps, 31.451 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (18.452 ps, 31.451 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nand3_1 -----
component nand3_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (34.895 ps, 63.757 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (32.169 ps, 63.757 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (28.051 ps, 63.757 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nand3_2 -----
component nand3_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (33.895 ps, 63.157 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (31.024 ps, 63.157 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (25.789 ps, 63.157 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nand3_4 -----
component nand3_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (33.720 ps, 62.226 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (30.598 ps, 62.226 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (25.249 ps, 62.226 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nand4_1 -----
component nand4_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (40.828 ps, 87.898 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (39.848 ps, 87.898 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (35.624 ps, 87.898 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (29.415 ps, 87.898 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nand4_2 -----
component nand4_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (39.524 ps, 89.948 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (38.600 ps, 89.948 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (34.460 ps, 89.948 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (28.493 ps, 89.948 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nand4_4 -----
component nand4_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (118.710 ps, 237.020 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (125.170 ps, 237.020 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (130.890 ps, 237.020 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (134.200 ps, 237.020 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nor2_1 -----
component nor2_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (41.343 ps, 41.343 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (38.332 ps, 33.096 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nor2_2 -----
component nor2_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (40.019 ps, 40.019 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (36.506 ps, 31.152 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nor2_4 -----
component nor2_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (40.748 ps, 40.748 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (37.126 ps, 31.770 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nor3_1 -----
component nor3_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (79.712 ps, 79.712 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (77.733 ps, 77.733 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (77.627 ps, 55.179 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nor3_2 -----
component nor3_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (76.153 ps, 76.153 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (74.157 ps, 74.157 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (73.742 ps, 50.656 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nor3_4 -----
component nor3_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (71.224 ps, 71.224 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (68.824 ps, 68.824 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (67.775 ps, 45.069 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nor4_1 -----
component nor4_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (125.870 ps, 125.870 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (124.490 ps, 124.390 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (124.490 ps, 110.190 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (124.490 ps, 73.374 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nor4_2 -----
component nor4_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (116.580 ps, 116.580 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (114.320 ps, 114.320 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (114.180 ps, 99.866 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (114.180 ps, 61.945 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component nor4_4 -----
component nor4_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (278.370 ps, 269.390 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (278.370 ps, 266.940 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (278.370 ps, 251.950 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (278.370 ps, 219.400 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component not_ab_or_c_or_d -----
component not_ab_or_c_or_d
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (103.570 ps, 103.570 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (86.729 ps, 86.729 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (62.053 ps, 60.836 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (62.053 ps, 44.104 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component or2_1 -----
component or2_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (47.803 ps, 89.811 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (54.253 ps, 89.811 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component or2_2 -----
component or2_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (50.052 ps, 91.745 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (57.061 ps, 91.745 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component or2_4 -----
component or2_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (60.881 ps, 121.660 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (67.762 ps, 121.660 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component or3_1 -----
component or3_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (50.642 ps, 145.390 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (57.579 ps, 145.390 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (60.161 ps, 145.390 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component or3_2 -----
component or3_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (52.836 ps, 147.750 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (60.392 ps, 147.750 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (63.365 ps, 147.750 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component or3_4 -----
component or3_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (63.456 ps, 195.760 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (71.168 ps, 195.760 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (75.110 ps, 195.760 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component or4_1 -----
component or4_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (51.813 ps, 205.330 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (58.855 ps, 205.330 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (62.355 ps, 205.330 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (61.796 ps, 205.330 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component or4_2 -----
component or4_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (54.033 ps, 208.280 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (61.673 ps, 208.280 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (65.650 ps, 208.280 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (65.187 ps, 208.280 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component or4_4 -----
component or4_4
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (64.467 ps, 274.440 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (72.362 ps, 274.440 ps);
      tpd_ip3_op                     :	VitalDelayType01 := (77.281 ps, 274.440 ps);
      tpd_ip4_op                     :	VitalDelayType01 := (77.843 ps, 274.440 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip3                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip4                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      ip3                            :	in    STD_ULOGIC;
      ip4                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component xnor2_1 -----
component xnor2_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (116.260 ps, 116.260 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (109.270 ps, 109.270 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component xnor2_2 -----
component xnor2_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (136.090 ps, 136.090 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (128.320 ps, 128.320 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component xor2_1 -----
component xor2_1
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (82.440 ps, 82.440 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (73.748 ps, 73.748 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


----- Component xor2_2 -----
component xor2_2
-- synopsys translate_off
   generic(
      TimingChecksOn: Boolean := DefaultTimingChecksOn;
      InstancePath: STRING := "*";
      Xon: Boolean := DefaultXon;
      MsgOn: Boolean := DefaultMsgOn;
      tpd_ip1_op                     :	VitalDelayType01 := (84.695 ps, 84.695 ps);
      tpd_ip2_op                     :	VitalDelayType01 := (75.953 ps, 75.953 ps);
      tipd_ip1                       :	VitalDelayType01 := (0.000 ps, 0.000 ps);
      tipd_ip2                       :	VitalDelayType01 := (0.000 ps, 0.000 ps));

-- synopsys translate_on
   port(
      ip1                            :	in    STD_ULOGIC;
      ip2                            :	in    STD_ULOGIC;
      op                             :	out   STD_ULOGIC);
end component;


end COMPONENTS;

---- end of VITAL components library ----
