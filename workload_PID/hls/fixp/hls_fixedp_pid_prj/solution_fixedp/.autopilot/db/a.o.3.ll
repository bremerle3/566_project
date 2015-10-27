; ModuleID = '/home/warehouse/lbremer/ese566/workload_PID/hls/fixp/hls_fixedp_pid_prj/solution_fixedp/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=9 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [14 x i8] c"ap_ctrl_hs_ce\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str4 = private unnamed_addr constant [4 x i8] c"mul\00", align 1 ; [#uses=1 type=[4 x i8]*]
@prev_x1_V = internal unnamed_addr global i25 0   ; [#uses=2 type=i25*]
@prev_x2_V = internal unnamed_addr global i25 0   ; [#uses=2 type=i25*]
@prev_yd_V = internal unnamed_addr global i25 0   ; [#uses=2 type=i25*]
@prev_yi_V = internal unnamed_addr global i25 0   ; [#uses=2 type=i25*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [15 x i8] c"PID_Controller\00" ; [#uses=1 type=[15 x i8]*]

; [#uses=2]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecResourceLimit(...) nounwind {
entry:
  ret void
}

; [#uses=59]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=11]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
define void @PID_Controller(i1 zeroext %InitN, i25* %coeff_0_V, i25* %coeff_1_V, i25* %coeff_2_V, i25* %coeff_3_V, i25* %coeff_4_V, i25* %coeff_5_V, i25* %din_0_V, i25* %din_1_V, i25* %dout_0_V, i25* %dout_1_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i25* %din_1_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i25* %din_0_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i25* %coeff_5_V), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i25* %coeff_4_V), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i25* %coeff_3_V), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i25* %coeff_2_V), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i25* %coeff_1_V), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i25* %coeff_0_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i25* %dout_1_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i25* %dout_0_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %InitN), !map !59
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @str) nounwind
  %InitN_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %InitN) ; [#uses=4 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %InitN_read}, i64 0, metadata !65), !dbg !1447 ; [debug line = 42:26] [debug variable = InitN]
  call void @llvm.dbg.value(metadata !{i1 %InitN}, i64 0, metadata !65), !dbg !1447 ; [debug line = 42:26] [debug variable = InitN]
  call void @llvm.dbg.value(metadata !{i25* %coeff_0_V}, i64 0, metadata !1448), !dbg !1457 ; [debug line = 42:43] [debug variable = coeff[0].V]
  call void @llvm.dbg.value(metadata !{i25* %coeff_1_V}, i64 0, metadata !1458), !dbg !1457 ; [debug line = 42:43] [debug variable = coeff[1].V]
  call void @llvm.dbg.value(metadata !{i25* %coeff_2_V}, i64 0, metadata !1459), !dbg !1457 ; [debug line = 42:43] [debug variable = coeff[2].V]
  call void @llvm.dbg.value(metadata !{i25* %coeff_3_V}, i64 0, metadata !1460), !dbg !1457 ; [debug line = 42:43] [debug variable = coeff[3].V]
  call void @llvm.dbg.value(metadata !{i25* %coeff_4_V}, i64 0, metadata !1461), !dbg !1457 ; [debug line = 42:43] [debug variable = coeff[4].V]
  call void @llvm.dbg.value(metadata !{i25* %coeff_5_V}, i64 0, metadata !1462), !dbg !1457 ; [debug line = 42:43] [debug variable = coeff[5].V]
  call void @llvm.dbg.value(metadata !{i25* %din_0_V}, i64 0, metadata !1463), !dbg !1465 ; [debug line = 42:63] [debug variable = din[0].V]
  call void @llvm.dbg.value(metadata !{i25* %din_1_V}, i64 0, metadata !1466), !dbg !1465 ; [debug line = 42:63] [debug variable = din[1].V]
  call void @llvm.dbg.value(metadata !{i25* %dout_0_V}, i64 0, metadata !1467), !dbg !1469 ; [debug line = 42:81] [debug variable = dout[0].V]
  call void @llvm.dbg.value(metadata !{i25* %dout_1_V}, i64 0, metadata !1470), !dbg !1469 ; [debug line = 42:81] [debug variable = dout[1].V]
  call void (...)* @_ssdm_op_SpecInterface(i25* %dout_0_V, i25* %dout_1_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [14 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !1471 ; [debug line = 48:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str4, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !1471 ; [debug line = 48:1]
  call void @llvm.dbg.value(metadata !{i25* %coeff_0_V}, i64 0, metadata !1473), !dbg !1476 ; [debug line = 381:49@58:2] [debug variable = op[0].V]
  call void @llvm.dbg.value(metadata !{i25* %coeff_1_V}, i64 0, metadata !1478), !dbg !1476 ; [debug line = 381:49@58:2] [debug variable = op[1].V]
  call void @llvm.dbg.value(metadata !{i25* %coeff_2_V}, i64 0, metadata !1479), !dbg !1476 ; [debug line = 381:49@58:2] [debug variable = op[2].V]
  call void @llvm.dbg.value(metadata !{i25* %coeff_3_V}, i64 0, metadata !1480), !dbg !1476 ; [debug line = 381:49@58:2] [debug variable = op[3].V]
  call void @llvm.dbg.value(metadata !{i25* %coeff_4_V}, i64 0, metadata !1481), !dbg !1476 ; [debug line = 381:49@58:2] [debug variable = op[4].V]
  call void @llvm.dbg.value(metadata !{i25* %coeff_5_V}, i64 0, metadata !1482), !dbg !1476 ; [debug line = 381:49@58:2] [debug variable = op[5].V]
  %Gi_V = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %coeff_0_V), !dbg !1483 ; [#uses=1 type=i25] [debug line = 382:9@58:2]
  call void @llvm.dbg.value(metadata !{i25 %Gi_V}, i64 0, metadata !1485), !dbg !1483 ; [debug line = 382:9@58:2] [debug variable = Gi.V]
  %Gd_V = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %coeff_1_V), !dbg !1487 ; [#uses=1 type=i25] [debug line = 382:9@58:17]
  call void @llvm.dbg.value(metadata !{i25 %Gd_V}, i64 0, metadata !1489), !dbg !1487 ; [debug line = 382:9@58:17] [debug variable = Gd.V]
  %C_V = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %coeff_2_V), !dbg !1491 ; [#uses=1 type=i25] [debug line = 382:9@59:2]
  call void @llvm.dbg.value(metadata !{i25 %C_V}, i64 0, metadata !1493), !dbg !1491 ; [debug line = 382:9@59:2] [debug variable = C.V]
  %Gp_V = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %coeff_3_V), !dbg !1495 ; [#uses=1 type=i25] [debug line = 382:9@59:16]
  call void @llvm.dbg.value(metadata !{i25 %Gp_V}, i64 0, metadata !1497), !dbg !1495 ; [debug line = 382:9@59:16] [debug variable = Gp.V]
  %max_lim_V = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %coeff_4_V), !dbg !1499 ; [#uses=6 type=i25] [debug line = 382:9@60:2]
  call void @llvm.dbg.value(metadata !{i25 %max_lim_V}, i64 0, metadata !1501), !dbg !1499 ; [debug line = 382:9@60:2] [debug variable = max_lim.V]
  %min_lim_V = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %coeff_5_V), !dbg !1503 ; [#uses=6 type=i25] [debug line = 382:9@60:22]
  call void @llvm.dbg.value(metadata !{i25 %min_lim_V}, i64 0, metadata !1505), !dbg !1503 ; [debug line = 382:9@60:22] [debug variable = min_lim.V]
  call void @llvm.dbg.value(metadata !{i25* %din_0_V}, i64 0, metadata !1473), !dbg !1507 ; [debug line = 381:49@63:2] [debug variable = op[0].V]
  call void @llvm.dbg.value(metadata !{i25* %din_1_V}, i64 0, metadata !1478), !dbg !1507 ; [debug line = 381:49@63:2] [debug variable = op[1].V]
  %p_Val2_s = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %din_0_V), !dbg !1509 ; [#uses=1 type=i25] [debug line = 382:9@63:2]
  %p_Val2_1 = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %din_1_V), !dbg !1510 ; [#uses=1 type=i25] [debug line = 382:9@64:2]
  %prev_yi_V_load = load i25* @prev_yi_V, align 4, !dbg !1512 ; [#uses=1 type=i25] [debug line = 673:0@771:5@1329:0@95:15]
  %prev_x2_V_load = load i25* @prev_x2_V, align 4, !dbg !1524 ; [#uses=1 type=i25] [debug line = 673:0@771:5@1329:0@94:15]
  %prev_x1_V_load = load i25* @prev_x1_V, align 4, !dbg !1528 ; [#uses=1 type=i25] [debug line = 673:0@771:5@1330:0@87:15]
  %prev_yd_V_load = load i25* @prev_yd_V, align 4, !dbg !1534 ; [#uses=1 type=i25] [debug line = 1295:9@86:13]
  %p_Val2_12 = select i1 %InitN_read, i25 %prev_yi_V_load, i25 0, !dbg !1538 ; [#uses=1 type=i25] [debug line = 66:2]
  %p_Val2_9 = select i1 %InitN_read, i25 %prev_x2_V_load, i25 0, !dbg !1538 ; [#uses=1 type=i25] [debug line = 66:2]
  %p_Val2_6 = select i1 %InitN_read, i25 %prev_x1_V_load, i25 0, !dbg !1538 ; [#uses=1 type=i25] [debug line = 66:2]
  %prev_yd_V_load_s = select i1 %InitN_read, i25 %prev_yd_V_load, i25 0, !dbg !1538 ; [#uses=1 type=i25] [debug line = 66:2]
  call void @llvm.dbg.value(metadata !{i25 %p_Val2_s}, i64 0, metadata !1539) nounwind, !dbg !1543 ; [debug line = 673:0@771:5@1330:0@75:15] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i25 %p_Val2_1}, i64 0, metadata !1539) nounwind, !dbg !1543 ; [debug line = 673:0@771:5@1330:0@75:15] [debug variable = __Val2__]
  %pid_addsub_V = sub i25 %p_Val2_s, %p_Val2_1, !dbg !1544 ; [#uses=3 type=i25] [debug line = 677:13@333:59@333:60@75:15]
  call void @llvm.dbg.value(metadata !{i25 %pid_addsub_V}, i64 0, metadata !1553), !dbg !1555 ; [debug line = 382:9@75:15] [debug variable = pid_addsub.V]
  %tmp_6 = icmp sgt i25 %pid_addsub_V, %max_lim_V, !dbg !1556 ; [#uses=1 type=i1] [debug line = 1884:0@76:7]
  %e_V = select i1 %tmp_6, i25 %max_lim_V, i25 %pid_addsub_V, !dbg !1559 ; [#uses=1 type=i25] [debug line = 76:7]
  call void @llvm.dbg.value(metadata !{i25 %e_V}, i64 0, metadata !1560), !dbg !1562 ; [debug line = 382:9@76:7] [debug variable = e.V]
  %tmp_7 = icmp slt i25 %pid_addsub_V, %min_lim_V, !dbg !1563 ; [#uses=1 type=i1] [debug line = 1886:0@77:7]
  %e_V_1 = select i1 %tmp_7, i25 %min_lim_V, i25 %e_V, !dbg !1567 ; [#uses=2 type=i25] [debug line = 382:9@77:7]
  call void @llvm.dbg.value(metadata !{i25 %e_V_1}, i64 0, metadata !1560), !dbg !1567 ; [debug line = 382:9@77:7] [debug variable = e.V]
  %OP1_V = sext i25 %Gd_V to i50, !dbg !1568      ; [#uses=1 type=i50] [debug line = 1293:9@79:13]
  call void @llvm.dbg.value(metadata !{i50 %OP1_V}, i64 0, metadata !1570), !dbg !1568 ; [debug line = 1293:9@79:13] [debug variable = OP1.V]
  %OP2_V = sext i25 %e_V_1 to i50, !dbg !1791     ; [#uses=3 type=i50] [debug line = 1295:9@79:13]
  call void @llvm.dbg.value(metadata !{i50 %OP2_V}, i64 0, metadata !1792), !dbg !1791 ; [debug line = 1295:9@79:13] [debug variable = OP2.V]
  %p_Val2_2 = mul nsw i50 %OP2_V, %OP1_V, !dbg !1794 ; [#uses=1 type=i50] [debug line = 1296:9@79:13]
  call void @llvm.dbg.value(metadata !{i50 %p_Val2_2}, i64 0, metadata !1795) nounwind, !dbg !1805 ; [debug line = 673:0@333:59@333:60@79:13] [debug variable = __Val2__]
  %p_Val2_5 = call i25 @_ssdm_op_PartSelect.i25.i50.i32.i32(i50 %p_Val2_2, i32 15, i32 39), !dbg !1806 ; [#uses=2 type=i25] [debug line = 680:17@333:59@333:60@79:13]
  %OP1_V_1 = sext i25 %Gi_V to i50, !dbg !1808    ; [#uses=1 type=i50] [debug line = 1293:9@80:14]
  call void @llvm.dbg.value(metadata !{i50 %OP1_V_1}, i64 0, metadata !1570), !dbg !1808 ; [debug line = 1293:9@80:14] [debug variable = OP1.V]
  %p_Val2_3 = mul nsw i50 %OP2_V, %OP1_V_1, !dbg !1810 ; [#uses=1 type=i50] [debug line = 1296:9@80:14]
  call void @llvm.dbg.value(metadata !{i50 %p_Val2_3}, i64 0, metadata !1811) nounwind, !dbg !1814 ; [debug line = 673:0@333:59@333:60@80:14] [debug variable = __Val2__]
  %pid_mult2_V = call i25 @_ssdm_op_PartSelect.i25.i50.i32.i32(i50 %p_Val2_3, i32 15, i32 39), !dbg !1815 ; [#uses=2 type=i25] [debug line = 680:17@333:59@333:60@80:14]
  call void @llvm.dbg.value(metadata !{i25 %pid_mult2_V}, i64 0, metadata !1816), !dbg !1818 ; [debug line = 382:9@80:14] [debug variable = pid_mult2.V]
  %OP1_V_2 = sext i25 %C_V to i50, !dbg !1819     ; [#uses=1 type=i50] [debug line = 1293:9@86:13]
  call void @llvm.dbg.value(metadata !{i50 %OP1_V_2}, i64 0, metadata !1570), !dbg !1819 ; [debug line = 1293:9@86:13] [debug variable = OP1.V]
  %OP2_V_1 = sext i25 %prev_yd_V_load_s to i50, !dbg !1534 ; [#uses=1 type=i50] [debug line = 1295:9@86:13]
  call void @llvm.dbg.value(metadata !{i50 %OP2_V_1}, i64 0, metadata !1792), !dbg !1534 ; [debug line = 1295:9@86:13] [debug variable = OP2.V]
  %p_Val2_4 = mul nsw i50 %OP2_V_1, %OP1_V_2, !dbg !1820 ; [#uses=1 type=i50] [debug line = 1296:9@86:13]
  call void @llvm.dbg.value(metadata !{i50 %p_Val2_4}, i64 0, metadata !1821) nounwind, !dbg !1824 ; [debug line = 673:0@333:59@333:60@86:13] [debug variable = __Val2__]
  %p_Val2_8 = call i25 @_ssdm_op_PartSelect.i25.i50.i32.i32(i50 %p_Val2_4, i32 15, i32 39), !dbg !1825 ; [#uses=1 type=i25] [debug line = 680:17@333:59@333:60@86:13]
  call void @llvm.dbg.value(metadata !{i25 %p_Val2_5}, i64 0, metadata !1826) nounwind, !dbg !1528 ; [debug line = 673:0@771:5@1330:0@87:15] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i25 %p_Val2_6}, i64 0, metadata !1826) nounwind, !dbg !1528 ; [debug line = 673:0@771:5@1330:0@87:15] [debug variable = __Val2__]
  %p_Val2_7 = sub i25 %p_Val2_5, %p_Val2_6, !dbg !1827 ; [#uses=1 type=i25] [debug line = 677:13@333:59@333:60@87:15]
  call void @llvm.dbg.value(metadata !{i25 %p_Val2_7}, i64 0, metadata !1830) nounwind, !dbg !1834 ; [debug line = 673:0@771:5@1330:0@88:15] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i25 %p_Val2_8}, i64 0, metadata !1830) nounwind, !dbg !1834 ; [debug line = 673:0@771:5@1330:0@88:15] [debug variable = __Val2__]
  %p_Val2_10 = sub i25 %p_Val2_7, %p_Val2_8, !dbg !1835 ; [#uses=2 type=i25] [debug line = 677:13@333:59@333:60@88:15]
  call void @llvm.dbg.value(metadata !{i25 %p_Val2_9}, i64 0, metadata !1838) nounwind, !dbg !1524 ; [debug line = 673:0@771:5@1329:0@94:15] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i25 %pid_mult2_V}, i64 0, metadata !1838) nounwind, !dbg !1524 ; [debug line = 673:0@771:5@1329:0@94:15] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i25 %p_Val2_12}, i64 0, metadata !1839) nounwind, !dbg !1512 ; [debug line = 673:0@771:5@1329:0@95:15] [debug variable = __Val2__]
  %tmp = add i25 %pid_mult2_V, %p_Val2_12, !dbg !1840 ; [#uses=1 type=i25] [debug line = 677:13@333:59@333:60@95:15]
  %pid_addsub2_V = add i25 %tmp, %p_Val2_9, !dbg !1840 ; [#uses=3 type=i25] [debug line = 677:13@333:59@333:60@95:15]
  call void @llvm.dbg.value(metadata !{i25 %pid_addsub2_V}, i64 0, metadata !1843), !dbg !1845 ; [debug line = 382:9@95:15] [debug variable = pid_addsub2.V]
  %tmp_1 = icmp sgt i25 %pid_addsub2_V, %max_lim_V, !dbg !1846 ; [#uses=1 type=i1] [debug line = 1884:0@96:8]
  %yi_V = select i1 %tmp_1, i25 %max_lim_V, i25 %pid_addsub2_V, !dbg !1847 ; [#uses=1 type=i25] [debug line = 96:8]
  call void @llvm.dbg.value(metadata !{i25 %yi_V}, i64 0, metadata !1848), !dbg !1850 ; [debug line = 382:9@96:8] [debug variable = yi.V]
  %tmp_2 = icmp slt i25 %pid_addsub2_V, %min_lim_V, !dbg !1851 ; [#uses=1 type=i1] [debug line = 1886:0@97:8]
  %p_Val2_15 = select i1 %tmp_2, i25 %min_lim_V, i25 %yi_V, !dbg !1852 ; [#uses=2 type=i25] [debug line = 97:8]
  %OP1_V_3 = sext i25 %Gp_V to i50, !dbg !1853    ; [#uses=1 type=i50] [debug line = 1293:9@106:13]
  call void @llvm.dbg.value(metadata !{i50 %OP1_V_3}, i64 0, metadata !1570), !dbg !1853 ; [debug line = 1293:9@106:13] [debug variable = OP1.V]
  %p_Val2_13 = mul nsw i50 %OP2_V, %OP1_V_3, !dbg !1855 ; [#uses=1 type=i50] [debug line = 1296:9@106:13]
  call void @llvm.dbg.value(metadata !{i50 %p_Val2_13}, i64 0, metadata !1856) nounwind, !dbg !1859 ; [debug line = 673:0@333:59@333:60@106:13] [debug variable = __Val2__]
  %p_Val2_14 = call i25 @_ssdm_op_PartSelect.i25.i50.i32.i32(i50 %p_Val2_13, i32 15, i32 39), !dbg !1860 ; [#uses=1 type=i25] [debug line = 680:17@333:59@333:60@106:13]
  call void @llvm.dbg.value(metadata !{i25 %p_Val2_15}, i64 0, metadata !1861) nounwind, !dbg !1865 ; [debug line = 673:0@771:5@1329:0@107:18] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i25 %p_Val2_10}, i64 0, metadata !1861) nounwind, !dbg !1865 ; [debug line = 673:0@771:5@1329:0@107:18] [debug variable = __Val2__]
  call void @llvm.dbg.value(metadata !{i25 %p_Val2_14}, i64 0, metadata !1866) nounwind, !dbg !1870 ; [debug line = 673:0@771:5@1329:0@108:15] [debug variable = __Val2__]
  %tmp1 = add i25 %p_Val2_10, %p_Val2_14, !dbg !1871 ; [#uses=1 type=i25] [debug line = 677:13@333:59@333:60@108:15]
  %pid_addsub2_V_1 = add i25 %tmp1, %p_Val2_15, !dbg !1871 ; [#uses=3 type=i25] [debug line = 677:13@333:59@333:60@108:15]
  call void @llvm.dbg.value(metadata !{i25 %pid_addsub2_V_1}, i64 0, metadata !1843), !dbg !1874 ; [debug line = 382:9@108:15] [debug variable = pid_addsub2.V]
  %tmp_4 = icmp sgt i25 %pid_addsub2_V_1, %max_lim_V, !dbg !1875 ; [#uses=1 type=i1] [debug line = 1884:0@109:9]
  %tmp_V = select i1 %tmp_4, i25 %max_lim_V, i25 %pid_addsub2_V_1, !dbg !1876 ; [#uses=1 type=i25] [debug line = 109:9]
  call void @llvm.dbg.value(metadata !{i25 %tmp_V}, i64 0, metadata !1877), !dbg !1879 ; [debug line = 382:9@109:9] [debug variable = tmp.V]
  %tmp_9 = icmp slt i25 %pid_addsub2_V_1, %min_lim_V, !dbg !1880 ; [#uses=1 type=i1] [debug line = 1886:0@110:9]
  %tmp_V_1 = select i1 %tmp_9, i25 %min_lim_V, i25 %tmp_V, !dbg !1882 ; [#uses=1 type=i25] [debug line = 382:9@110:9]
  call void @llvm.dbg.value(metadata !{i25 %tmp_V_1}, i64 0, metadata !1877), !dbg !1882 ; [debug line = 382:9@110:9] [debug variable = tmp.V]
  call void @llvm.dbg.value(metadata !{i25* %dout_0_V}, i64 0, metadata !1883), !dbg !1886 ; [debug line = 380:53@111:5] [debug variable = ssdm_int<25 + 1024 * 0, true>[0].V]
  call void @llvm.dbg.value(metadata !{i25* %dout_1_V}, i64 0, metadata !1888), !dbg !1886 ; [debug line = 380:53@111:5] [debug variable = ssdm_int<25 + 1024 * 0, true>[1].V]
  call void @_ssdm_op_Write.ap_none.i25P(i25* %dout_0_V, i25 %tmp_V_1), !dbg !1889 ; [debug line = 382:9@111:5]
  call void @_ssdm_op_Write.ap_none.i25P(i25* %dout_1_V, i25 %e_V_1), !dbg !1890 ; [debug line = 382:9@112:2]
  store i25 %p_Val2_10, i25* @prev_yd_V, align 4, !dbg !1892 ; [debug line = 382:9@71:4]
  store i25 %p_Val2_5, i25* @prev_x1_V, align 4, !dbg !1895 ; [debug line = 382:9@70:4]
  store i25 %pid_mult2_V, i25* @prev_x2_V, align 4, !dbg !1897 ; [debug line = 382:9@69:4]
  store i25 %p_Val2_15, i25* @prev_yi_V, align 4, !dbg !1899 ; [debug line = 382:9@68:4]
  ret void, !dbg !1901                            ; [debug line = 118:2]
}

; [#uses=4]
define weak i25 @_ssdm_op_PartSelect.i25.i50.i32.i32(i50, i32, i32) nounwind readnone {
entry:
  %empty = call i50 @llvm.part.select.i50(i50 %0, i32 %1, i32 %2) ; [#uses=1 type=i50]
  %empty_4 = trunc i50 %empty to i25              ; [#uses=1 type=i25]
  ret i25 %empty_4
}

; [#uses=1]
define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

; [#uses=8]
define weak i25 @_ssdm_op_Read.ap_auto.i25P(i25*) {
entry:
  %empty = load i25* %0                           ; [#uses=1 type=i25]
  ret i25 %empty
}

; [#uses=2]
define weak void @_ssdm_op_Write.ap_none.i25P(i25*, i25) {
entry:
  store i25 %1, i25* %0
  ret void
}

; [#uses=1]
declare i50 @llvm.part.select.i50(i50, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 24, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"din.V", metadata !11, metadata !"int25", i32 0, i32 24}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 1, i32 1, i32 2}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 24, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"din.V", metadata !17, metadata !"int25", i32 0, i32 24}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, i32 2}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 24, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"coeff.V", metadata !23, metadata !"int25", i32 0, i32 24}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 5, i32 5, i32 2}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 24, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"coeff.V", metadata !29, metadata !"int25", i32 0, i32 24}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 4, i32 4, i32 2}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 24, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"coeff.V", metadata !35, metadata !"int25", i32 0, i32 24}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 3, i32 3, i32 2}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 24, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"coeff.V", metadata !41, metadata !"int25", i32 0, i32 24}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 2, i32 2, i32 2}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 24, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"coeff.V", metadata !11, metadata !"int25", i32 0, i32 24}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 24, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"coeff.V", metadata !17, metadata !"int25", i32 0, i32 24}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 24, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"dout.V", metadata !11, metadata !"int25", i32 0, i32 24}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 24, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"dout.V", metadata !17, metadata !"int25", i32 0, i32 24}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"InitN", metadata !63, metadata !"bool", i32 0, i32 0}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 0, i32 0}
!65 = metadata !{i32 786689, metadata !66, metadata !"InitN", metadata !67, i32 16777258, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 786478, i32 0, metadata !67, metadata !"PID_Controller", metadata !"PID_Controller", metadata !"_Z14PID_ControllerbP8ap_fixedILi25ELi10EL9ap_q_mode5EL9ap_o_mode3ELi0EES3_S3_", metadata !67, i32 42, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !90, i32 47} ; [ DW_TAG_subprogram ]
!67 = metadata !{i32 786473, metadata !"./C/xapp_pid.cpp", metadata !"/home/warehouse/lbremer/ese566/workload_PID/hls/fixp", null} ; [ DW_TAG_file_type ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{null, metadata !70, metadata !71, metadata !71, metadata !71}
!70 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!71 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ]
!72 = metadata !{i32 786454, null, metadata !"data_type", metadata !67, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_typedef ]
!73 = metadata !{i32 786434, null, metadata !"ap_fixed<25, 10, 5, 3, 0>", metadata !74, i32 287, i64 32, i64 32, i32 0, i32 0, null, metadata !75, i32 0, null, metadata !1446} ; [ DW_TAG_class_type ]
!74 = metadata !{i32 786473, metadata !"/project/linuxlab/xilinx/xilinx/Vivado_HLS/Vivado_HLS/common/technology/autopilot/ap_int.h", metadata !"/home/warehouse/lbremer/ese566/workload_PID/hls/fixp", null} ; [ DW_TAG_file_type ]
!75 = metadata !{metadata !76, metadata !1377, metadata !1381, metadata !1384, metadata !1387, metadata !1390, metadata !1393, metadata !1396, metadata !1399, metadata !1402, metadata !1405, metadata !1408, metadata !1411, metadata !1414, metadata !1417, metadata !1420, metadata !1423, metadata !1426, metadata !1429, metadata !1432, metadata !1438, metadata !1439, metadata !1444, metadata !1445}
!76 = metadata !{i32 786460, metadata !73, null, metadata !74, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_inheritance ]
!77 = metadata !{i32 786434, null, metadata !"ap_fixed_base<25, 10, true, 5, 3, 0>", metadata !78, i32 510, i64 32, i64 32, i32 0, i32 0, null, metadata !79, i32 0, null, metadata !1374} ; [ DW_TAG_class_type ]
!78 = metadata !{i32 786473, metadata !"/project/linuxlab/xilinx/xilinx/Vivado_HLS/Vivado_HLS/common/technology/autopilot/ap_fixed_syn.h", metadata !"/home/warehouse/lbremer/ese566/workload_PID/hls/fixp", null} ; [ DW_TAG_file_type ]
!79 = metadata !{metadata !80, metadata !96, metadata !100, metadata !103, metadata !106, metadata !135, metadata !136, metadata !139, metadata !143, metadata !147, metadata !151, metadata !155, metadata !159, metadata !162, metadata !166, metadata !170, metadata !174, metadata !179, metadata !184, metadata !189, metadata !192, metadata !197, metadata !201, metadata !204, metadata !207, metadata !210, metadata !214, metadata !215, metadata !220, metadata !221, metadata !224, metadata !227, metadata !231, metadata !234, metadata !237, metadata !240, metadata !243, metadata !246, metadata !249, metadata !250, metadata !251, metadata !254, metadata !257, metadata !260, metadata !263, metadata !266, metadata !267, metadata !268, metadata !271, metadata !274, metadata !277, metadata !280, metadata !281, metadata !284, metadata !562, metadata !1274, metadata !1278, metadata !1281, metadata !1282, metadata !1285, metadata !1286, metadata !1289, metadata !1292, metadata !1293, metadata !1296, metadata !1299, metadata !1302, metadata !1305, metadata !1306, metadata !1307, metadata !1310, metadata !1313, metadata !1314, metadata !1315, metadata !1318, metadata !1319, metadata !1322, metadata !1323, metadata !1324, metadata !1325, metadata !1326, metadata !1327, metadata !1331, metadata !1334, metadata !1335, metadata !1336, metadata !1339, metadata !1342, metadata !1346, metadata !1347, metadata !1350, metadata !1351, metadata !1354, metadata !1357, metadata !1358, metadata !1359, metadata !1360, metadata !1361, metadata !1364, metadata !1367, metadata !1368, metadata !1371}
!80 = metadata !{i32 786460, metadata !77, null, metadata !78, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_inheritance ]
!81 = metadata !{i32 786434, null, metadata !"ssdm_int<25 + 1024 * 0, true>", metadata !82, i32 27, i64 32, i64 32, i32 0, i32 0, null, metadata !83, i32 0, null, metadata !92} ; [ DW_TAG_class_type ]
!82 = metadata !{i32 786473, metadata !"/project/linuxlab/xilinx/xilinx/Vivado_HLS/Vivado_HLS/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/warehouse/lbremer/ese566/workload_PID/hls/fixp", null} ; [ DW_TAG_file_type ]
!83 = metadata !{metadata !84, metadata !86}
!84 = metadata !{i32 786445, metadata !81, metadata !"V", metadata !82, i32 27, i64 25, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ]
!85 = metadata !{i32 786468, null, metadata !"int25", null, i32 0, i64 25, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!86 = metadata !{i32 786478, i32 0, metadata !81, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !82, i32 27, metadata !87, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 27} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !88, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!88 = metadata !{null, metadata !89}
!89 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !81} ; [ DW_TAG_pointer_type ]
!90 = metadata !{metadata !91}
!91 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!92 = metadata !{metadata !93, metadata !95}
!93 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !94, i64 25, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!94 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!95 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !70, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!96 = metadata !{i32 786478, i32 0, metadata !77, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !78, i32 520, metadata !97, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 520} ; [ DW_TAG_subprogram ]
!97 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!98 = metadata !{null, metadata !99, metadata !70, metadata !70, metadata !70, metadata !70}
!99 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !77} ; [ DW_TAG_pointer_type ]
!100 = metadata !{i32 786478, i32 0, metadata !77, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !78, i32 593, metadata !101, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 593} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{metadata !70, metadata !99, metadata !70, metadata !70, metadata !70}
!103 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 651, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 651} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!105 = metadata !{null, metadata !99}
!106 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base<25, 10, true, 5, 3, 0>", metadata !"ap_fixed_base<25, 10, true, 5, 3, 0>", metadata !"", metadata !78, i32 661, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !111, i32 0, metadata !90, i32 661} ; [ DW_TAG_subprogram ]
!107 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!108 = metadata !{null, metadata !99, metadata !109}
!109 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_reference_type ]
!110 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_const_type ]
!111 = metadata !{metadata !112, metadata !113, metadata !114, metadata !115, metadata !126, metadata !134}
!112 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !94, i64 25, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!113 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !94, i64 10, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!114 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !70, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!115 = metadata !{i32 786480, null, metadata !"_AP_Q2", metadata !116, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!116 = metadata !{i32 786436, null, metadata !"ap_q_mode", metadata !117, i32 657, i64 3, i64 4, i32 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!117 = metadata !{i32 786473, metadata !"/project/linuxlab/xilinx/xilinx/Vivado_HLS/Vivado_HLS/common/technology/autopilot/ap_int_syn.h", metadata !"/home/warehouse/lbremer/ese566/workload_PID/hls/fixp", null} ; [ DW_TAG_file_type ]
!118 = metadata !{metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125}
!119 = metadata !{i32 786472, metadata !"SC_RND", i64 0} ; [ DW_TAG_enumerator ]
!120 = metadata !{i32 786472, metadata !"SC_RND_ZERO", i64 1} ; [ DW_TAG_enumerator ]
!121 = metadata !{i32 786472, metadata !"SC_RND_MIN_INF", i64 2} ; [ DW_TAG_enumerator ]
!122 = metadata !{i32 786472, metadata !"SC_RND_INF", i64 3} ; [ DW_TAG_enumerator ]
!123 = metadata !{i32 786472, metadata !"SC_RND_CONV", i64 4} ; [ DW_TAG_enumerator ]
!124 = metadata !{i32 786472, metadata !"SC_TRN", i64 5} ; [ DW_TAG_enumerator ]
!125 = metadata !{i32 786472, metadata !"SC_TRN_ZERO", i64 6} ; [ DW_TAG_enumerator ]
!126 = metadata !{i32 786480, null, metadata !"_AP_O2", metadata !127, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!127 = metadata !{i32 786436, null, metadata !"ap_o_mode", metadata !117, i32 667, i64 3, i64 4, i32 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!128 = metadata !{metadata !129, metadata !130, metadata !131, metadata !132, metadata !133}
!129 = metadata !{i32 786472, metadata !"SC_SAT", i64 0} ; [ DW_TAG_enumerator ]
!130 = metadata !{i32 786472, metadata !"SC_SAT_ZERO", i64 1} ; [ DW_TAG_enumerator ]
!131 = metadata !{i32 786472, metadata !"SC_SAT_SYM", i64 2} ; [ DW_TAG_enumerator ]
!132 = metadata !{i32 786472, metadata !"SC_WRAP", i64 3} ; [ DW_TAG_enumerator ]
!133 = metadata !{i32 786472, metadata !"SC_WRAP_SM", i64 4} ; [ DW_TAG_enumerator ]
!134 = metadata !{i32 786480, null, metadata !"_AP_N2", metadata !94, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!135 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base<25, 10, true, 5, 3, 0>", metadata !"ap_fixed_base<25, 10, true, 5, 3, 0>", metadata !"", metadata !78, i32 775, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !111, i32 0, metadata !90, i32 775} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 787, metadata !137, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 787} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!138 = metadata !{null, metadata !99, metadata !70}
!139 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 788, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 788} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!141 = metadata !{null, metadata !99, metadata !142}
!142 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!143 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 789, metadata !144, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 789} ; [ DW_TAG_subprogram ]
!144 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !145, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!145 = metadata !{null, metadata !99, metadata !146}
!146 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!147 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 790, metadata !148, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 790} ; [ DW_TAG_subprogram ]
!148 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!149 = metadata !{null, metadata !99, metadata !150}
!150 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!151 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 791, metadata !152, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 791} ; [ DW_TAG_subprogram ]
!152 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !153, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!153 = metadata !{null, metadata !99, metadata !154}
!154 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!155 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 792, metadata !156, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 792} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{null, metadata !99, metadata !158}
!158 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!159 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 793, metadata !160, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 793} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!161 = metadata !{null, metadata !99, metadata !94}
!162 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 794, metadata !163, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 794} ; [ DW_TAG_subprogram ]
!163 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !164, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!164 = metadata !{null, metadata !99, metadata !165}
!165 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!166 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 796, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 796} ; [ DW_TAG_subprogram ]
!167 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!168 = metadata !{null, metadata !99, metadata !169}
!169 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!170 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 797, metadata !171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 797} ; [ DW_TAG_subprogram ]
!171 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!172 = metadata !{null, metadata !99, metadata !173}
!173 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!174 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 802, metadata !175, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 802} ; [ DW_TAG_subprogram ]
!175 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!176 = metadata !{null, metadata !99, metadata !177}
!177 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !78, i32 112, i64 0, i64 0, i64 0, i32 0, metadata !178} ; [ DW_TAG_typedef ]
!178 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!179 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 803, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 803} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{null, metadata !99, metadata !182}
!182 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !78, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !183} ; [ DW_TAG_typedef ]
!183 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!184 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 804, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 804} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!186 = metadata !{null, metadata !99, metadata !187}
!187 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !188} ; [ DW_TAG_pointer_type ]
!188 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_const_type ]
!189 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 811, metadata !190, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 811} ; [ DW_TAG_subprogram ]
!190 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!191 = metadata !{null, metadata !99, metadata !187, metadata !146}
!192 = metadata !{i32 786478, i32 0, metadata !77, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !78, i32 847, metadata !193, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 847} ; [ DW_TAG_subprogram ]
!193 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !194, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!194 = metadata !{metadata !183, metadata !195, metadata !196}
!195 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !110} ; [ DW_TAG_pointer_type ]
!196 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!197 = metadata !{i32 786478, i32 0, metadata !77, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14floatToRawBitsEf", metadata !78, i32 855, metadata !198, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 855} ; [ DW_TAG_subprogram ]
!198 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !199, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!199 = metadata !{metadata !165, metadata !195, metadata !200}
!200 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!201 = metadata !{i32 786478, i32 0, metadata !77, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !78, i32 864, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 864} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!203 = metadata !{metadata !196, metadata !195, metadata !183}
!204 = metadata !{i32 786478, i32 0, metadata !77, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !78, i32 873, metadata !205, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 873} ; [ DW_TAG_subprogram ]
!205 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!206 = metadata !{metadata !200, metadata !195, metadata !165}
!207 = metadata !{i32 786478, i32 0, metadata !77, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 882, metadata !208, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 882} ; [ DW_TAG_subprogram ]
!208 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!209 = metadata !{null, metadata !99, metadata !196}
!210 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !78, i32 995, metadata !211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 995} ; [ DW_TAG_subprogram ]
!211 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!212 = metadata !{metadata !213, metadata !99, metadata !109}
!213 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_reference_type ]
!214 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !78, i32 1002, metadata !211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1002} ; [ DW_TAG_subprogram ]
!215 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !78, i32 1009, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1009} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!217 = metadata !{null, metadata !218, metadata !109}
!218 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !219} ; [ DW_TAG_pointer_type ]
!219 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_volatile_type ]
!220 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !78, i32 1015, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1015} ; [ DW_TAG_subprogram ]
!221 = metadata !{i32 786478, i32 0, metadata !77, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !78, i32 1024, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1024} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!223 = metadata !{metadata !213, metadata !99, metadata !183}
!224 = metadata !{i32 786478, i32 0, metadata !77, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !78, i32 1030, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1030} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!226 = metadata !{metadata !77, metadata !183}
!227 = metadata !{i32 786478, i32 0, metadata !77, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !78, i32 1039, metadata !228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1039} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{metadata !230, metadata !195, metadata !70}
!230 = metadata !{i32 786434, null, metadata !"ap_int_base<10, true, true>", metadata !117, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!231 = metadata !{i32 786478, i32 0, metadata !77, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !78, i32 1074, metadata !232, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1074} ; [ DW_TAG_subprogram ]
!232 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !233, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!233 = metadata !{metadata !94, metadata !195}
!234 = metadata !{i32 786478, i32 0, metadata !77, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !78, i32 1077, metadata !235, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1077} ; [ DW_TAG_subprogram ]
!235 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !236, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!236 = metadata !{metadata !165, metadata !195}
!237 = metadata !{i32 786478, i32 0, metadata !77, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !78, i32 1080, metadata !238, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1080} ; [ DW_TAG_subprogram ]
!238 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !239, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!239 = metadata !{metadata !177, metadata !195}
!240 = metadata !{i32 786478, i32 0, metadata !77, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !78, i32 1083, metadata !241, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1083} ; [ DW_TAG_subprogram ]
!241 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !242, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!242 = metadata !{metadata !182, metadata !195}
!243 = metadata !{i32 786478, i32 0, metadata !77, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !78, i32 1086, metadata !244, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1086} ; [ DW_TAG_subprogram ]
!244 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!245 = metadata !{metadata !196, metadata !195}
!246 = metadata !{i32 786478, i32 0, metadata !77, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !78, i32 1139, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1139} ; [ DW_TAG_subprogram ]
!247 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !248, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!248 = metadata !{metadata !200, metadata !195}
!249 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !78, i32 1190, metadata !244, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1190} ; [ DW_TAG_subprogram ]
!250 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !78, i32 1194, metadata !247, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1194} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !78, i32 1198, metadata !252, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1198} ; [ DW_TAG_subprogram ]
!252 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!253 = metadata !{metadata !142, metadata !195}
!254 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !78, i32 1202, metadata !255, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1202} ; [ DW_TAG_subprogram ]
!255 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!256 = metadata !{metadata !146, metadata !195}
!257 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !78, i32 1206, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1206} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!259 = metadata !{metadata !150, metadata !195}
!260 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !78, i32 1210, metadata !261, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1210} ; [ DW_TAG_subprogram ]
!261 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!262 = metadata !{metadata !154, metadata !195}
!263 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !78, i32 1214, metadata !264, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1214} ; [ DW_TAG_subprogram ]
!264 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!265 = metadata !{metadata !158, metadata !195}
!266 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !78, i32 1219, metadata !232, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1219} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !78, i32 1223, metadata !235, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1223} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !78, i32 1228, metadata !269, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1228} ; [ DW_TAG_subprogram ]
!269 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!270 = metadata !{metadata !169, metadata !195}
!271 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !78, i32 1232, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1232} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!273 = metadata !{metadata !173, metadata !195}
!274 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !78, i32 1245, metadata !275, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1245} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!276 = metadata !{metadata !183, metadata !195}
!277 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !78, i32 1249, metadata !278, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1249} ; [ DW_TAG_subprogram ]
!278 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!279 = metadata !{metadata !178, metadata !195}
!280 = metadata !{i32 786478, i32 0, metadata !77, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !78, i32 1253, metadata !232, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1253} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 786478, i32 0, metadata !77, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !78, i32 1257, metadata !282, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1257} ; [ DW_TAG_subprogram ]
!282 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!283 = metadata !{metadata !94, metadata !99}
!284 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator*<25, 10, true, 5, 3, 0>", metadata !"operator*<25, 10, true, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmlILi25ELi10ELb1ELS0_5ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE4multERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !78, i32 1290, metadata !285, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !111, i32 0, metadata !90, i32 1290} ; [ DW_TAG_subprogram ]
!285 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !286, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!286 = metadata !{metadata !287, metadata !195, metadata !109}
!287 = metadata !{i32 786454, metadata !288, metadata !"mult", metadata !78, i32 641, i64 0, i64 0, i64 0, i32 0, metadata !291} ; [ DW_TAG_typedef ]
!288 = metadata !{i32 786434, metadata !77, metadata !"RType<25, 10, true>", metadata !78, i32 616, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !290} ; [ DW_TAG_class_type ]
!289 = metadata !{i32 0}
!290 = metadata !{metadata !112, metadata !113, metadata !114}
!291 = metadata !{i32 786434, null, metadata !"ap_fixed_base<50, 20, true, 5, 3, 0>", metadata !78, i32 510, i64 64, i64 64, i32 0, i32 0, null, metadata !292, i32 0, null, metadata !556} ; [ DW_TAG_class_type ]
!292 = metadata !{metadata !293, metadata !304, metadata !308, metadata !311, metadata !314, metadata !322, metadata !323, metadata !326, metadata !329, metadata !332, metadata !335, metadata !338, metadata !341, metadata !344, metadata !347, metadata !350, metadata !353, metadata !356, metadata !359, metadata !362, metadata !365, metadata !369, metadata !372, metadata !375, metadata !378, metadata !381, metadata !385, metadata !386, metadata !391, metadata !392, metadata !395, metadata !398, metadata !402, metadata !405, metadata !408, metadata !411, metadata !414, metadata !417, metadata !420, metadata !421, metadata !422, metadata !425, metadata !428, metadata !431, metadata !434, metadata !437, metadata !438, metadata !439, metadata !442, metadata !445, metadata !448, metadata !451, metadata !452, metadata !455, metadata !458, metadata !459, metadata !462, metadata !463, metadata !466, metadata !470, metadata !471, metadata !474, metadata !477, metadata !480, metadata !483, metadata !484, metadata !485, metadata !488, metadata !491, metadata !492, metadata !493, metadata !496, metadata !497, metadata !498, metadata !499, metadata !500, metadata !501, metadata !505, metadata !508, metadata !509, metadata !510, metadata !513, metadata !516, metadata !520, metadata !521, metadata !524, metadata !525, metadata !528, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !538, metadata !541, metadata !542, metadata !552, metadata !555}
!293 = metadata !{i32 786460, metadata !291, null, metadata !78, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !294} ; [ DW_TAG_inheritance ]
!294 = metadata !{i32 786434, null, metadata !"ssdm_int<50 + 1024 * 0, true>", metadata !82, i32 52, i64 64, i64 64, i32 0, i32 0, null, metadata !295, i32 0, null, metadata !302} ; [ DW_TAG_class_type ]
!295 = metadata !{metadata !296, metadata !298}
!296 = metadata !{i32 786445, metadata !294, metadata !"V", metadata !82, i32 52, i64 50, i64 64, i64 0, i32 0, metadata !297} ; [ DW_TAG_member ]
!297 = metadata !{i32 786468, null, metadata !"int50", null, i32 0, i64 50, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!298 = metadata !{i32 786478, i32 0, metadata !294, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !82, i32 52, metadata !299, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 52} ; [ DW_TAG_subprogram ]
!299 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !300, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!300 = metadata !{null, metadata !301}
!301 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !294} ; [ DW_TAG_pointer_type ]
!302 = metadata !{metadata !303, metadata !95}
!303 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !94, i64 50, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!304 = metadata !{i32 786478, i32 0, metadata !291, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !78, i32 520, metadata !305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 520} ; [ DW_TAG_subprogram ]
!305 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!306 = metadata !{null, metadata !307, metadata !70, metadata !70, metadata !70, metadata !70}
!307 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !291} ; [ DW_TAG_pointer_type ]
!308 = metadata !{i32 786478, i32 0, metadata !291, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !78, i32 593, metadata !309, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 593} ; [ DW_TAG_subprogram ]
!309 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !310, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!310 = metadata !{metadata !70, metadata !307, metadata !70, metadata !70, metadata !70}
!311 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 651, metadata !312, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 651} ; [ DW_TAG_subprogram ]
!312 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !313, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!313 = metadata !{null, metadata !307}
!314 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base<50, 20, true, 5, 3, 0>", metadata !"ap_fixed_base<50, 20, true, 5, 3, 0>", metadata !"", metadata !78, i32 661, metadata !315, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !319, i32 0, metadata !90, i32 661} ; [ DW_TAG_subprogram ]
!315 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !316, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!316 = metadata !{null, metadata !307, metadata !317}
!317 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !318} ; [ DW_TAG_reference_type ]
!318 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !291} ; [ DW_TAG_const_type ]
!319 = metadata !{metadata !320, metadata !321, metadata !114, metadata !115, metadata !126, metadata !134}
!320 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !94, i64 50, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!321 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !94, i64 20, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!322 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base<50, 20, true, 5, 3, 0>", metadata !"ap_fixed_base<50, 20, true, 5, 3, 0>", metadata !"", metadata !78, i32 775, metadata !315, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !319, i32 0, metadata !90, i32 775} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 787, metadata !324, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 787} ; [ DW_TAG_subprogram ]
!324 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !325, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!325 = metadata !{null, metadata !307, metadata !70}
!326 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 788, metadata !327, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 788} ; [ DW_TAG_subprogram ]
!327 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !328, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!328 = metadata !{null, metadata !307, metadata !142}
!329 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 789, metadata !330, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 789} ; [ DW_TAG_subprogram ]
!330 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !331, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!331 = metadata !{null, metadata !307, metadata !146}
!332 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 790, metadata !333, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 790} ; [ DW_TAG_subprogram ]
!333 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !334, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!334 = metadata !{null, metadata !307, metadata !150}
!335 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 791, metadata !336, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 791} ; [ DW_TAG_subprogram ]
!336 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !337, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!337 = metadata !{null, metadata !307, metadata !154}
!338 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 792, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 792} ; [ DW_TAG_subprogram ]
!339 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !340, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!340 = metadata !{null, metadata !307, metadata !158}
!341 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 793, metadata !342, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 793} ; [ DW_TAG_subprogram ]
!342 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !343, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!343 = metadata !{null, metadata !307, metadata !94}
!344 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 794, metadata !345, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 794} ; [ DW_TAG_subprogram ]
!345 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !346, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!346 = metadata !{null, metadata !307, metadata !165}
!347 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 796, metadata !348, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 796} ; [ DW_TAG_subprogram ]
!348 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !349, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!349 = metadata !{null, metadata !307, metadata !169}
!350 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 797, metadata !351, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 797} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !352, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!352 = metadata !{null, metadata !307, metadata !173}
!353 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 802, metadata !354, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 802} ; [ DW_TAG_subprogram ]
!354 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !355, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!355 = metadata !{null, metadata !307, metadata !177}
!356 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 803, metadata !357, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 803} ; [ DW_TAG_subprogram ]
!357 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !358, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!358 = metadata !{null, metadata !307, metadata !182}
!359 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 804, metadata !360, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 804} ; [ DW_TAG_subprogram ]
!360 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !361, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!361 = metadata !{null, metadata !307, metadata !187}
!362 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 811, metadata !363, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 811} ; [ DW_TAG_subprogram ]
!363 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !364, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!364 = metadata !{null, metadata !307, metadata !187, metadata !146}
!365 = metadata !{i32 786478, i32 0, metadata !291, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !78, i32 847, metadata !366, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 847} ; [ DW_TAG_subprogram ]
!366 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!367 = metadata !{metadata !183, metadata !368, metadata !196}
!368 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !318} ; [ DW_TAG_pointer_type ]
!369 = metadata !{i32 786478, i32 0, metadata !291, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14floatToRawBitsEf", metadata !78, i32 855, metadata !370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 855} ; [ DW_TAG_subprogram ]
!370 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !371, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!371 = metadata !{metadata !165, metadata !368, metadata !200}
!372 = metadata !{i32 786478, i32 0, metadata !291, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !78, i32 864, metadata !373, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 864} ; [ DW_TAG_subprogram ]
!373 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !374, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!374 = metadata !{metadata !196, metadata !368, metadata !183}
!375 = metadata !{i32 786478, i32 0, metadata !291, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !78, i32 873, metadata !376, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 873} ; [ DW_TAG_subprogram ]
!376 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!377 = metadata !{metadata !200, metadata !368, metadata !165}
!378 = metadata !{i32 786478, i32 0, metadata !291, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 882, metadata !379, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 882} ; [ DW_TAG_subprogram ]
!379 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !380, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!380 = metadata !{null, metadata !307, metadata !196}
!381 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !78, i32 995, metadata !382, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 995} ; [ DW_TAG_subprogram ]
!382 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !383, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!383 = metadata !{metadata !384, metadata !307, metadata !317}
!384 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !291} ; [ DW_TAG_reference_type ]
!385 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !78, i32 1002, metadata !382, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1002} ; [ DW_TAG_subprogram ]
!386 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !78, i32 1009, metadata !387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1009} ; [ DW_TAG_subprogram ]
!387 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !388, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!388 = metadata !{null, metadata !389, metadata !317}
!389 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !390} ; [ DW_TAG_pointer_type ]
!390 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !291} ; [ DW_TAG_volatile_type ]
!391 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !78, i32 1015, metadata !387, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1015} ; [ DW_TAG_subprogram ]
!392 = metadata !{i32 786478, i32 0, metadata !291, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !78, i32 1024, metadata !393, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1024} ; [ DW_TAG_subprogram ]
!393 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !394, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!394 = metadata !{metadata !384, metadata !307, metadata !183}
!395 = metadata !{i32 786478, i32 0, metadata !291, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !78, i32 1030, metadata !396, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1030} ; [ DW_TAG_subprogram ]
!396 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !397, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!397 = metadata !{metadata !291, metadata !183}
!398 = metadata !{i32 786478, i32 0, metadata !291, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !78, i32 1039, metadata !399, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1039} ; [ DW_TAG_subprogram ]
!399 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !400, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!400 = metadata !{metadata !401, metadata !368, metadata !70}
!401 = metadata !{i32 786434, null, metadata !"ap_int_base<20, true, true>", metadata !117, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!402 = metadata !{i32 786478, i32 0, metadata !291, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !78, i32 1074, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1074} ; [ DW_TAG_subprogram ]
!403 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !404, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!404 = metadata !{metadata !94, metadata !368}
!405 = metadata !{i32 786478, i32 0, metadata !291, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !78, i32 1077, metadata !406, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1077} ; [ DW_TAG_subprogram ]
!406 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !407, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!407 = metadata !{metadata !165, metadata !368}
!408 = metadata !{i32 786478, i32 0, metadata !291, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !78, i32 1080, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1080} ; [ DW_TAG_subprogram ]
!409 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!410 = metadata !{metadata !177, metadata !368}
!411 = metadata !{i32 786478, i32 0, metadata !291, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !78, i32 1083, metadata !412, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1083} ; [ DW_TAG_subprogram ]
!412 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !413, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!413 = metadata !{metadata !182, metadata !368}
!414 = metadata !{i32 786478, i32 0, metadata !291, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !78, i32 1086, metadata !415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1086} ; [ DW_TAG_subprogram ]
!415 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!416 = metadata !{metadata !196, metadata !368}
!417 = metadata !{i32 786478, i32 0, metadata !291, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !78, i32 1139, metadata !418, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1139} ; [ DW_TAG_subprogram ]
!418 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !419, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!419 = metadata !{metadata !200, metadata !368}
!420 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !78, i32 1190, metadata !415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1190} ; [ DW_TAG_subprogram ]
!421 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !78, i32 1194, metadata !418, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1194} ; [ DW_TAG_subprogram ]
!422 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !78, i32 1198, metadata !423, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1198} ; [ DW_TAG_subprogram ]
!423 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !424, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!424 = metadata !{metadata !142, metadata !368}
!425 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !78, i32 1202, metadata !426, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1202} ; [ DW_TAG_subprogram ]
!426 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !427, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!427 = metadata !{metadata !146, metadata !368}
!428 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !78, i32 1206, metadata !429, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1206} ; [ DW_TAG_subprogram ]
!429 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !430, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!430 = metadata !{metadata !150, metadata !368}
!431 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !78, i32 1210, metadata !432, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1210} ; [ DW_TAG_subprogram ]
!432 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !433, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!433 = metadata !{metadata !154, metadata !368}
!434 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !78, i32 1214, metadata !435, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1214} ; [ DW_TAG_subprogram ]
!435 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !436, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!436 = metadata !{metadata !158, metadata !368}
!437 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !78, i32 1219, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1219} ; [ DW_TAG_subprogram ]
!438 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !78, i32 1223, metadata !406, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1223} ; [ DW_TAG_subprogram ]
!439 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !78, i32 1228, metadata !440, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1228} ; [ DW_TAG_subprogram ]
!440 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !441, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!441 = metadata !{metadata !169, metadata !368}
!442 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !78, i32 1232, metadata !443, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1232} ; [ DW_TAG_subprogram ]
!443 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !444, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!444 = metadata !{metadata !173, metadata !368}
!445 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !78, i32 1245, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1245} ; [ DW_TAG_subprogram ]
!446 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!447 = metadata !{metadata !183, metadata !368}
!448 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !78, i32 1249, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1249} ; [ DW_TAG_subprogram ]
!449 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !450, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!450 = metadata !{metadata !178, metadata !368}
!451 = metadata !{i32 786478, i32 0, metadata !291, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !78, i32 1253, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1253} ; [ DW_TAG_subprogram ]
!452 = metadata !{i32 786478, i32 0, metadata !291, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !78, i32 1257, metadata !453, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1257} ; [ DW_TAG_subprogram ]
!453 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !454, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!454 = metadata !{metadata !94, metadata !307}
!455 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !78, i32 1358, metadata !456, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1358} ; [ DW_TAG_subprogram ]
!456 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !457, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!457 = metadata !{metadata !384, metadata !307}
!458 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !78, i32 1362, metadata !456, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1362} ; [ DW_TAG_subprogram ]
!459 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !78, i32 1370, metadata !460, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1370} ; [ DW_TAG_subprogram ]
!460 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !461, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!461 = metadata !{metadata !318, metadata !307, metadata !94}
!462 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !78, i32 1376, metadata !460, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1376} ; [ DW_TAG_subprogram ]
!463 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !78, i32 1384, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1384} ; [ DW_TAG_subprogram ]
!464 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !465, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!465 = metadata !{metadata !291, metadata !307}
!466 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !78, i32 1388, metadata !467, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1388} ; [ DW_TAG_subprogram ]
!467 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !468, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!468 = metadata !{metadata !469, metadata !368}
!469 = metadata !{i32 786434, null, metadata !"ap_fixed_base<51, 21, true, 5, 3, 0>", metadata !78, i32 510, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!470 = metadata !{i32 786478, i32 0, metadata !291, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !78, i32 1394, metadata !464, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1394} ; [ DW_TAG_subprogram ]
!471 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !78, i32 1402, metadata !472, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1402} ; [ DW_TAG_subprogram ]
!472 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !473, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!473 = metadata !{metadata !70, metadata !368}
!474 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !78, i32 1408, metadata !475, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1408} ; [ DW_TAG_subprogram ]
!475 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !476, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!476 = metadata !{metadata !291, metadata !368}
!477 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !78, i32 1431, metadata !478, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1431} ; [ DW_TAG_subprogram ]
!478 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !479, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!479 = metadata !{metadata !291, metadata !368, metadata !94}
!480 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !78, i32 1490, metadata !481, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1490} ; [ DW_TAG_subprogram ]
!481 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !482, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!482 = metadata !{metadata !291, metadata !368, metadata !165}
!483 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !78, i32 1534, metadata !478, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1534} ; [ DW_TAG_subprogram ]
!484 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !78, i32 1592, metadata !481, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1592} ; [ DW_TAG_subprogram ]
!485 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !78, i32 1644, metadata !486, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1644} ; [ DW_TAG_subprogram ]
!486 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !487, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!487 = metadata !{metadata !384, metadata !307, metadata !94}
!488 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !78, i32 1707, metadata !489, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1707} ; [ DW_TAG_subprogram ]
!489 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !490, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!490 = metadata !{metadata !384, metadata !307, metadata !165}
!491 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !78, i32 1754, metadata !486, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1754} ; [ DW_TAG_subprogram ]
!492 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !78, i32 1816, metadata !489, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1816} ; [ DW_TAG_subprogram ]
!493 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !78, i32 1894, metadata !494, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1894} ; [ DW_TAG_subprogram ]
!494 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !495, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!495 = metadata !{metadata !70, metadata !368, metadata !196}
!496 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !78, i32 1895, metadata !494, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1895} ; [ DW_TAG_subprogram ]
!497 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !78, i32 1896, metadata !494, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1896} ; [ DW_TAG_subprogram ]
!498 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !78, i32 1897, metadata !494, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1897} ; [ DW_TAG_subprogram ]
!499 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !78, i32 1898, metadata !494, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1898} ; [ DW_TAG_subprogram ]
!500 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !78, i32 1899, metadata !494, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1899} ; [ DW_TAG_subprogram ]
!501 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !78, i32 1902, metadata !502, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1902} ; [ DW_TAG_subprogram ]
!502 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !503, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!503 = metadata !{metadata !504, metadata !307, metadata !165}
!504 = metadata !{i32 786434, null, metadata !"af_bit_ref<50, 20, true, 5, 3, 0>", metadata !78, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!505 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !78, i32 1914, metadata !506, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1914} ; [ DW_TAG_subprogram ]
!506 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !507, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!507 = metadata !{metadata !70, metadata !368, metadata !165}
!508 = metadata !{i32 786478, i32 0, metadata !291, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !78, i32 1919, metadata !502, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1919} ; [ DW_TAG_subprogram ]
!509 = metadata !{i32 786478, i32 0, metadata !291, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !78, i32 1932, metadata !506, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1932} ; [ DW_TAG_subprogram ]
!510 = metadata !{i32 786478, i32 0, metadata !291, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !78, i32 1944, metadata !511, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1944} ; [ DW_TAG_subprogram ]
!511 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !512, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!512 = metadata !{metadata !70, metadata !368, metadata !94}
!513 = metadata !{i32 786478, i32 0, metadata !291, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !78, i32 1950, metadata !514, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1950} ; [ DW_TAG_subprogram ]
!514 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !515, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!515 = metadata !{metadata !504, metadata !307, metadata !94}
!516 = metadata !{i32 786478, i32 0, metadata !291, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !78, i32 1965, metadata !517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1965} ; [ DW_TAG_subprogram ]
!517 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !518, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!518 = metadata !{metadata !519, metadata !307, metadata !94, metadata !94}
!519 = metadata !{i32 786434, null, metadata !"af_range_ref<50, 20, true, 5, 3, 0>", metadata !78, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!520 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !78, i32 1971, metadata !517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1971} ; [ DW_TAG_subprogram ]
!521 = metadata !{i32 786478, i32 0, metadata !291, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !78, i32 1977, metadata !522, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1977} ; [ DW_TAG_subprogram ]
!522 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !523, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!523 = metadata !{metadata !519, metadata !368, metadata !94, metadata !94}
!524 = metadata !{i32 786478, i32 0, metadata !291, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !78, i32 2026, metadata !522, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2026} ; [ DW_TAG_subprogram ]
!525 = metadata !{i32 786478, i32 0, metadata !291, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !78, i32 2031, metadata !526, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2031} ; [ DW_TAG_subprogram ]
!526 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !527, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!527 = metadata !{metadata !519, metadata !307}
!528 = metadata !{i32 786478, i32 0, metadata !291, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !78, i32 2036, metadata !529, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2036} ; [ DW_TAG_subprogram ]
!529 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !530, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!530 = metadata !{metadata !519, metadata !368}
!531 = metadata !{i32 786478, i32 0, metadata !291, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !78, i32 2040, metadata !472, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2040} ; [ DW_TAG_subprogram ]
!532 = metadata !{i32 786478, i32 0, metadata !291, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !78, i32 2044, metadata !472, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2044} ; [ DW_TAG_subprogram ]
!533 = metadata !{i32 786478, i32 0, metadata !291, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !78, i32 2050, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2050} ; [ DW_TAG_subprogram ]
!534 = metadata !{i32 786478, i32 0, metadata !291, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !78, i32 2054, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2054} ; [ DW_TAG_subprogram ]
!535 = metadata !{i32 786478, i32 0, metadata !291, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !78, i32 2058, metadata !536, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2058} ; [ DW_TAG_subprogram ]
!536 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !537, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!537 = metadata !{metadata !116, metadata !368}
!538 = metadata !{i32 786478, i32 0, metadata !291, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !78, i32 2062, metadata !539, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2062} ; [ DW_TAG_subprogram ]
!539 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !540, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!540 = metadata !{metadata !127, metadata !368}
!541 = metadata !{i32 786478, i32 0, metadata !291, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !78, i32 2066, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2066} ; [ DW_TAG_subprogram ]
!542 = metadata !{i32 786478, i32 0, metadata !291, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !78, i32 2070, metadata !543, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2070} ; [ DW_TAG_subprogram ]
!543 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !544, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!544 = metadata !{metadata !545, metadata !307, metadata !546}
!545 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !142} ; [ DW_TAG_pointer_type ]
!546 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !117, i32 603, i64 5, i64 8, i32 0, i32 0, null, metadata !547, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!547 = metadata !{metadata !548, metadata !549, metadata !550, metadata !551}
!548 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!549 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!550 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!551 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!552 = metadata !{i32 786478, i32 0, metadata !291, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi50ELi20ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !78, i32 2074, metadata !553, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2074} ; [ DW_TAG_subprogram ]
!553 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !554, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!554 = metadata !{metadata !545, metadata !307, metadata !146}
!555 = metadata !{i32 786478, i32 0, metadata !291, metadata !"~ap_fixed_base", metadata !"~ap_fixed_base", metadata !"", metadata !78, i32 510, metadata !312, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !90, i32 510} ; [ DW_TAG_subprogram ]
!556 = metadata !{metadata !557, metadata !558, metadata !95, metadata !559, metadata !560, metadata !561}
!557 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !94, i64 50, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!558 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !94, i64 20, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!559 = metadata !{i32 786480, null, metadata !"_AP_Q", metadata !116, i64 5, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!560 = metadata !{i32 786480, null, metadata !"_AP_O", metadata !127, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!561 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !94, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!562 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator+<25, 10, true, 5, 3, 0>", metadata !"operator+<25, 10, true, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEplILi25ELi10ELb1ELS0_5ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE4plusERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !78, i32 1329, metadata !563, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !111, i32 0, metadata !90, i32 1329} ; [ DW_TAG_subprogram ]
!563 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !564, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!564 = metadata !{metadata !565, metadata !195, metadata !109}
!565 = metadata !{i32 786454, metadata !288, metadata !"plus", metadata !78, i32 642, i64 0, i64 0, i64 0, i32 0, metadata !566} ; [ DW_TAG_typedef ]
!566 = metadata !{i32 786434, null, metadata !"ap_fixed_base<26, 11, true, 5, 3, 0>", metadata !78, i32 510, i64 32, i64 32, i32 0, i32 0, null, metadata !567, i32 0, null, metadata !1271} ; [ DW_TAG_class_type ]
!567 = metadata !{metadata !568, metadata !579, metadata !583, metadata !586, metadata !589, metadata !597, metadata !598, metadata !601, metadata !604, metadata !607, metadata !610, metadata !613, metadata !616, metadata !619, metadata !622, metadata !625, metadata !628, metadata !631, metadata !634, metadata !637, metadata !640, metadata !644, metadata !647, metadata !650, metadata !653, metadata !656, metadata !660, metadata !661, metadata !666, metadata !667, metadata !670, metadata !673, metadata !1124, metadata !1127, metadata !1130, metadata !1133, metadata !1136, metadata !1139, metadata !1142, metadata !1143, metadata !1144, metadata !1147, metadata !1150, metadata !1153, metadata !1156, metadata !1159, metadata !1160, metadata !1161, metadata !1164, metadata !1167, metadata !1170, metadata !1173, metadata !1174, metadata !1177, metadata !1180, metadata !1181, metadata !1184, metadata !1185, metadata !1188, metadata !1192, metadata !1193, metadata !1196, metadata !1199, metadata !1202, metadata !1205, metadata !1206, metadata !1207, metadata !1210, metadata !1213, metadata !1214, metadata !1215, metadata !1218, metadata !1219, metadata !1220, metadata !1221, metadata !1222, metadata !1223, metadata !1227, metadata !1230, metadata !1231, metadata !1232, metadata !1235, metadata !1238, metadata !1242, metadata !1243, metadata !1246, metadata !1247, metadata !1250, metadata !1253, metadata !1254, metadata !1255, metadata !1256, metadata !1257, metadata !1260, metadata !1263, metadata !1264, metadata !1267, metadata !1270}
!568 = metadata !{i32 786460, metadata !566, null, metadata !78, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !569} ; [ DW_TAG_inheritance ]
!569 = metadata !{i32 786434, null, metadata !"ssdm_int<26 + 1024 * 0, true>", metadata !82, i32 28, i64 32, i64 32, i32 0, i32 0, null, metadata !570, i32 0, null, metadata !577} ; [ DW_TAG_class_type ]
!570 = metadata !{metadata !571, metadata !573}
!571 = metadata !{i32 786445, metadata !569, metadata !"V", metadata !82, i32 28, i64 26, i64 32, i64 0, i32 0, metadata !572} ; [ DW_TAG_member ]
!572 = metadata !{i32 786468, null, metadata !"int26", null, i32 0, i64 26, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!573 = metadata !{i32 786478, i32 0, metadata !569, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !82, i32 28, metadata !574, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 28} ; [ DW_TAG_subprogram ]
!574 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !575, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!575 = metadata !{null, metadata !576}
!576 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !569} ; [ DW_TAG_pointer_type ]
!577 = metadata !{metadata !578, metadata !95}
!578 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !94, i64 26, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!579 = metadata !{i32 786478, i32 0, metadata !566, metadata !"overflow_adjust", metadata !"overflow_adjust", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15overflow_adjustEbbbb", metadata !78, i32 520, metadata !580, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 520} ; [ DW_TAG_subprogram ]
!580 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !581, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!581 = metadata !{null, metadata !582, metadata !70, metadata !70, metadata !70, metadata !70}
!582 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !566} ; [ DW_TAG_pointer_type ]
!583 = metadata !{i32 786478, i32 0, metadata !566, metadata !"quantization_adjust", metadata !"quantization_adjust", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE19quantization_adjustEbbb", metadata !78, i32 593, metadata !584, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 593} ; [ DW_TAG_subprogram ]
!584 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !585, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!585 = metadata !{metadata !70, metadata !582, metadata !70, metadata !70, metadata !70}
!586 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 651, metadata !587, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 651} ; [ DW_TAG_subprogram ]
!587 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !588, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!588 = metadata !{null, metadata !582}
!589 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base<26, 11, true, 5, 3, 0>", metadata !"ap_fixed_base<26, 11, true, 5, 3, 0>", metadata !"", metadata !78, i32 661, metadata !590, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !594, i32 0, metadata !90, i32 661} ; [ DW_TAG_subprogram ]
!590 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !591, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!591 = metadata !{null, metadata !582, metadata !592}
!592 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !593} ; [ DW_TAG_reference_type ]
!593 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !566} ; [ DW_TAG_const_type ]
!594 = metadata !{metadata !595, metadata !596, metadata !114, metadata !115, metadata !126, metadata !134}
!595 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !94, i64 26, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!596 = metadata !{i32 786480, null, metadata !"_AP_I2", metadata !94, i64 11, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!597 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base<26, 11, true, 5, 3, 0>", metadata !"ap_fixed_base<26, 11, true, 5, 3, 0>", metadata !"", metadata !78, i32 775, metadata !590, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !594, i32 0, metadata !90, i32 775} ; [ DW_TAG_subprogram ]
!598 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 787, metadata !599, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 787} ; [ DW_TAG_subprogram ]
!599 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !600, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!600 = metadata !{null, metadata !582, metadata !70}
!601 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 788, metadata !602, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 788} ; [ DW_TAG_subprogram ]
!602 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !603, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!603 = metadata !{null, metadata !582, metadata !142}
!604 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 789, metadata !605, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 789} ; [ DW_TAG_subprogram ]
!605 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !606, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!606 = metadata !{null, metadata !582, metadata !146}
!607 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 790, metadata !608, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 790} ; [ DW_TAG_subprogram ]
!608 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !609, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!609 = metadata !{null, metadata !582, metadata !150}
!610 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 791, metadata !611, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 791} ; [ DW_TAG_subprogram ]
!611 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !612, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!612 = metadata !{null, metadata !582, metadata !154}
!613 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 792, metadata !614, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 792} ; [ DW_TAG_subprogram ]
!614 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !615, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!615 = metadata !{null, metadata !582, metadata !158}
!616 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 793, metadata !617, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 793} ; [ DW_TAG_subprogram ]
!617 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !618, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!618 = metadata !{null, metadata !582, metadata !94}
!619 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 794, metadata !620, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 794} ; [ DW_TAG_subprogram ]
!620 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !621, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!621 = metadata !{null, metadata !582, metadata !165}
!622 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 796, metadata !623, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 796} ; [ DW_TAG_subprogram ]
!623 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !624, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!624 = metadata !{null, metadata !582, metadata !169}
!625 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 797, metadata !626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 797} ; [ DW_TAG_subprogram ]
!626 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !627, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!627 = metadata !{null, metadata !582, metadata !173}
!628 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 802, metadata !629, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 802} ; [ DW_TAG_subprogram ]
!629 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !630, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!630 = metadata !{null, metadata !582, metadata !177}
!631 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 803, metadata !632, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 803} ; [ DW_TAG_subprogram ]
!632 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !633, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!633 = metadata !{null, metadata !582, metadata !182}
!634 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 804, metadata !635, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 804} ; [ DW_TAG_subprogram ]
!635 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !636, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!636 = metadata !{null, metadata !582, metadata !187}
!637 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 811, metadata !638, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 811} ; [ DW_TAG_subprogram ]
!638 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !639, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!639 = metadata !{null, metadata !582, metadata !187, metadata !146}
!640 = metadata !{i32 786478, i32 0, metadata !566, metadata !"doubleToRawBits", metadata !"doubleToRawBits", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15doubleToRawBitsEd", metadata !78, i32 847, metadata !641, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 847} ; [ DW_TAG_subprogram ]
!641 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !642, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!642 = metadata !{metadata !183, metadata !643, metadata !196}
!643 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !593} ; [ DW_TAG_pointer_type ]
!644 = metadata !{i32 786478, i32 0, metadata !566, metadata !"floatToRawBits", metadata !"floatToRawBits", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14floatToRawBitsEf", metadata !78, i32 855, metadata !645, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 855} ; [ DW_TAG_subprogram ]
!645 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !646, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!646 = metadata !{metadata !165, metadata !643, metadata !200}
!647 = metadata !{i32 786478, i32 0, metadata !566, metadata !"rawBitsToDouble", metadata !"rawBitsToDouble", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE15rawBitsToDoubleEy", metadata !78, i32 864, metadata !648, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 864} ; [ DW_TAG_subprogram ]
!648 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !649, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!649 = metadata !{metadata !196, metadata !643, metadata !183}
!650 = metadata !{i32 786478, i32 0, metadata !566, metadata !"rawBitsToFloat", metadata !"rawBitsToFloat", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14rawBitsToFloatEj", metadata !78, i32 873, metadata !651, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 873} ; [ DW_TAG_subprogram ]
!651 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !652, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!652 = metadata !{metadata !200, metadata !643, metadata !165}
!653 = metadata !{i32 786478, i32 0, metadata !566, metadata !"ap_fixed_base", metadata !"ap_fixed_base", metadata !"", metadata !78, i32 882, metadata !654, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 882} ; [ DW_TAG_subprogram ]
!654 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !655, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!655 = metadata !{null, metadata !582, metadata !196}
!656 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !78, i32 995, metadata !657, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 995} ; [ DW_TAG_subprogram ]
!657 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !658, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!658 = metadata !{metadata !659, metadata !582, metadata !592}
!659 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !566} ; [ DW_TAG_reference_type ]
!660 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator=", metadata !"operator=", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !78, i32 1002, metadata !657, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1002} ; [ DW_TAG_subprogram ]
!661 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !78, i32 1009, metadata !662, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1009} ; [ DW_TAG_subprogram ]
!662 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !663, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!663 = metadata !{null, metadata !664, metadata !592}
!664 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !665} ; [ DW_TAG_pointer_type ]
!665 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !566} ; [ DW_TAG_volatile_type ]
!666 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator=", metadata !"operator=", metadata !"_ZNV13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !78, i32 1015, metadata !662, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1015} ; [ DW_TAG_subprogram ]
!667 = metadata !{i32 786478, i32 0, metadata !566, metadata !"setBits", metadata !"setBits", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7setBitsEy", metadata !78, i32 1024, metadata !668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1024} ; [ DW_TAG_subprogram ]
!668 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !669, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!669 = metadata !{metadata !659, metadata !582, metadata !183}
!670 = metadata !{i32 786478, i32 0, metadata !566, metadata !"bitsToFixed", metadata !"bitsToFixed", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE11bitsToFixedEy", metadata !78, i32 1030, metadata !671, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1030} ; [ DW_TAG_subprogram ]
!671 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !672, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!672 = metadata !{metadata !566, metadata !183}
!673 = metadata !{i32 786478, i32 0, metadata !566, metadata !"to_ap_int_base", metadata !"to_ap_int_base", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE14to_ap_int_baseEb", metadata !78, i32 1039, metadata !674, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1039} ; [ DW_TAG_subprogram ]
!674 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !675, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!675 = metadata !{metadata !676, metadata !643, metadata !70}
!676 = metadata !{i32 786434, null, metadata !"ap_int_base<11, true, true>", metadata !117, i32 1398, i64 16, i64 16, i32 0, i32 0, null, metadata !677, i32 0, null, metadata !1122} ; [ DW_TAG_class_type ]
!677 = metadata !{metadata !678, metadata !689, metadata !693, metadata !696, metadata !699, metadata !702, metadata !705, metadata !708, metadata !711, metadata !714, metadata !717, metadata !720, metadata !723, metadata !726, metadata !729, metadata !732, metadata !735, metadata !738, metadata !743, metadata !748, metadata !749, metadata !750, metadata !754, metadata !755, metadata !758, metadata !761, metadata !764, metadata !767, metadata !770, metadata !773, metadata !776, metadata !779, metadata !782, metadata !785, metadata !794, metadata !797, metadata !800, metadata !803, metadata !806, metadata !809, metadata !812, metadata !815, metadata !818, metadata !819, metadata !824, metadata !827, metadata !828, metadata !829, metadata !830, metadata !831, metadata !832, metadata !835, metadata !836, metadata !839, metadata !840, metadata !841, metadata !842, metadata !843, metadata !844, metadata !847, metadata !848, metadata !849, metadata !852, metadata !853, metadata !856, metadata !857, metadata !1083, metadata !1087, metadata !1088, metadata !1091, metadata !1092, metadata !1096, metadata !1097, metadata !1098, metadata !1099, metadata !1102, metadata !1103, metadata !1104, metadata !1105, metadata !1106, metadata !1107, metadata !1108, metadata !1109, metadata !1110, metadata !1111, metadata !1112, metadata !1113, metadata !1116, metadata !1119}
!678 = metadata !{i32 786460, metadata !676, null, metadata !117, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !679} ; [ DW_TAG_inheritance ]
!679 = metadata !{i32 786434, null, metadata !"ssdm_int<11 + 1024 * 0, true>", metadata !82, i32 13, i64 16, i64 16, i32 0, i32 0, null, metadata !680, i32 0, null, metadata !687} ; [ DW_TAG_class_type ]
!680 = metadata !{metadata !681, metadata !683}
!681 = metadata !{i32 786445, metadata !679, metadata !"V", metadata !82, i32 13, i64 11, i64 16, i64 0, i32 0, metadata !682} ; [ DW_TAG_member ]
!682 = metadata !{i32 786468, null, metadata !"int11", null, i32 0, i64 11, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!683 = metadata !{i32 786478, i32 0, metadata !679, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !82, i32 13, metadata !684, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 13} ; [ DW_TAG_subprogram ]
!684 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !685, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!685 = metadata !{null, metadata !686}
!686 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !679} ; [ DW_TAG_pointer_type ]
!687 = metadata !{metadata !688, metadata !95}
!688 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !94, i64 11, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!689 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1439, metadata !690, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1439} ; [ DW_TAG_subprogram ]
!690 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !691, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!691 = metadata !{null, metadata !692}
!692 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !676} ; [ DW_TAG_pointer_type ]
!693 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1461, metadata !694, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1461} ; [ DW_TAG_subprogram ]
!694 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !695, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!695 = metadata !{null, metadata !692, metadata !70}
!696 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1462, metadata !697, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1462} ; [ DW_TAG_subprogram ]
!697 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !698, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!698 = metadata !{null, metadata !692, metadata !146}
!699 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1463, metadata !700, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1463} ; [ DW_TAG_subprogram ]
!700 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !701, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!701 = metadata !{null, metadata !692, metadata !150}
!702 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1464, metadata !703, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1464} ; [ DW_TAG_subprogram ]
!703 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !704, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!704 = metadata !{null, metadata !692, metadata !154}
!705 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1465, metadata !706, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1465} ; [ DW_TAG_subprogram ]
!706 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !707, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!707 = metadata !{null, metadata !692, metadata !158}
!708 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1466, metadata !709, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1466} ; [ DW_TAG_subprogram ]
!709 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !710, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!710 = metadata !{null, metadata !692, metadata !94}
!711 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1467, metadata !712, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1467} ; [ DW_TAG_subprogram ]
!712 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !713, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!713 = metadata !{null, metadata !692, metadata !165}
!714 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1468, metadata !715, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1468} ; [ DW_TAG_subprogram ]
!715 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !716, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!716 = metadata !{null, metadata !692, metadata !169}
!717 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1469, metadata !718, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1469} ; [ DW_TAG_subprogram ]
!718 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !719, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!719 = metadata !{null, metadata !692, metadata !173}
!720 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1470, metadata !721, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1470} ; [ DW_TAG_subprogram ]
!721 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !722, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!722 = metadata !{null, metadata !692, metadata !177}
!723 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1471, metadata !724, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1471} ; [ DW_TAG_subprogram ]
!724 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !725, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!725 = metadata !{null, metadata !692, metadata !182}
!726 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1472, metadata !727, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1472} ; [ DW_TAG_subprogram ]
!727 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !728, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!728 = metadata !{null, metadata !692, metadata !200}
!729 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1473, metadata !730, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1473} ; [ DW_TAG_subprogram ]
!730 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !731, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!731 = metadata !{null, metadata !692, metadata !196}
!732 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1500, metadata !733, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1500} ; [ DW_TAG_subprogram ]
!733 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !734, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!734 = metadata !{null, metadata !692, metadata !187}
!735 = metadata !{i32 786478, i32 0, metadata !676, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1507, metadata !736, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1507} ; [ DW_TAG_subprogram ]
!736 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !737, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!737 = metadata !{null, metadata !692, metadata !187, metadata !146}
!738 = metadata !{i32 786478, i32 0, metadata !676, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi11ELb1ELb1EE4readEv", metadata !117, i32 1528, metadata !739, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1528} ; [ DW_TAG_subprogram ]
!739 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !740, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!740 = metadata !{metadata !676, metadata !741}
!741 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !742} ; [ DW_TAG_pointer_type ]
!742 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !676} ; [ DW_TAG_volatile_type ]
!743 = metadata !{i32 786478, i32 0, metadata !676, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi11ELb1ELb1EE5writeERKS0_", metadata !117, i32 1534, metadata !744, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1534} ; [ DW_TAG_subprogram ]
!744 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !745, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!745 = metadata !{null, metadata !741, metadata !746}
!746 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !747} ; [ DW_TAG_reference_type ]
!747 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !676} ; [ DW_TAG_const_type ]
!748 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi11ELb1ELb1EEaSERVKS0_", metadata !117, i32 1546, metadata !744, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1546} ; [ DW_TAG_subprogram ]
!749 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi11ELb1ELb1EEaSERKS0_", metadata !117, i32 1555, metadata !744, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1555} ; [ DW_TAG_subprogram ]
!750 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEaSERVKS0_", metadata !117, i32 1578, metadata !751, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1578} ; [ DW_TAG_subprogram ]
!751 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !752, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!752 = metadata !{metadata !753, metadata !692, metadata !746}
!753 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !676} ; [ DW_TAG_reference_type ]
!754 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEaSERKS0_", metadata !117, i32 1583, metadata !751, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1583} ; [ DW_TAG_subprogram ]
!755 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEaSEPKc", metadata !117, i32 1587, metadata !756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1587} ; [ DW_TAG_subprogram ]
!756 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !757, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!757 = metadata !{metadata !753, metadata !692, metadata !187}
!758 = metadata !{i32 786478, i32 0, metadata !676, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE3setEPKca", metadata !117, i32 1595, metadata !759, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1595} ; [ DW_TAG_subprogram ]
!759 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !760, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!760 = metadata !{metadata !753, metadata !692, metadata !187, metadata !146}
!761 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEaSEc", metadata !117, i32 1609, metadata !762, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1609} ; [ DW_TAG_subprogram ]
!762 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !763, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!763 = metadata !{metadata !753, metadata !692, metadata !142}
!764 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEaSEh", metadata !117, i32 1610, metadata !765, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1610} ; [ DW_TAG_subprogram ]
!765 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !766, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!766 = metadata !{metadata !753, metadata !692, metadata !150}
!767 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEaSEs", metadata !117, i32 1611, metadata !768, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1611} ; [ DW_TAG_subprogram ]
!768 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !769, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!769 = metadata !{metadata !753, metadata !692, metadata !154}
!770 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEaSEt", metadata !117, i32 1612, metadata !771, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1612} ; [ DW_TAG_subprogram ]
!771 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !772, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!772 = metadata !{metadata !753, metadata !692, metadata !158}
!773 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEaSEi", metadata !117, i32 1613, metadata !774, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1613} ; [ DW_TAG_subprogram ]
!774 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !775, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!775 = metadata !{metadata !753, metadata !692, metadata !94}
!776 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEaSEj", metadata !117, i32 1614, metadata !777, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1614} ; [ DW_TAG_subprogram ]
!777 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !778, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!778 = metadata !{metadata !753, metadata !692, metadata !165}
!779 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEaSEx", metadata !117, i32 1615, metadata !780, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1615} ; [ DW_TAG_subprogram ]
!780 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !781, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!781 = metadata !{metadata !753, metadata !692, metadata !177}
!782 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEaSEy", metadata !117, i32 1616, metadata !783, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1616} ; [ DW_TAG_subprogram ]
!783 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !784, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!784 = metadata !{metadata !753, metadata !692, metadata !182}
!785 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator short", metadata !"operator short", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EEcvsEv", metadata !117, i32 1654, metadata !786, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1654} ; [ DW_TAG_subprogram ]
!786 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !787, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!787 = metadata !{metadata !788, metadata !793}
!788 = metadata !{i32 786454, metadata !676, metadata !"RetType", metadata !117, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !789} ; [ DW_TAG_typedef ]
!789 = metadata !{i32 786454, metadata !790, metadata !"Type", metadata !117, i32 1374, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ]
!790 = metadata !{i32 786434, null, metadata !"retval<2, true>", metadata !117, i32 1373, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !791} ; [ DW_TAG_class_type ]
!791 = metadata !{metadata !792, metadata !95}
!792 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !94, i64 2, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!793 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !747} ; [ DW_TAG_pointer_type ]
!794 = metadata !{i32 786478, i32 0, metadata !676, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE7to_boolEv", metadata !117, i32 1660, metadata !795, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1660} ; [ DW_TAG_subprogram ]
!795 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !796, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!796 = metadata !{metadata !70, metadata !793}
!797 = metadata !{i32 786478, i32 0, metadata !676, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE6to_intEv", metadata !117, i32 1661, metadata !798, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1661} ; [ DW_TAG_subprogram ]
!798 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !799, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!799 = metadata !{metadata !94, metadata !793}
!800 = metadata !{i32 786478, i32 0, metadata !676, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE7to_uintEv", metadata !117, i32 1662, metadata !801, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1662} ; [ DW_TAG_subprogram ]
!801 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !802, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!802 = metadata !{metadata !165, metadata !793}
!803 = metadata !{i32 786478, i32 0, metadata !676, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE7to_longEv", metadata !117, i32 1663, metadata !804, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1663} ; [ DW_TAG_subprogram ]
!804 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !805, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!805 = metadata !{metadata !169, metadata !793}
!806 = metadata !{i32 786478, i32 0, metadata !676, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE8to_ulongEv", metadata !117, i32 1664, metadata !807, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1664} ; [ DW_TAG_subprogram ]
!807 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !808, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!808 = metadata !{metadata !173, metadata !793}
!809 = metadata !{i32 786478, i32 0, metadata !676, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE8to_int64Ev", metadata !117, i32 1665, metadata !810, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1665} ; [ DW_TAG_subprogram ]
!810 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !811, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!811 = metadata !{metadata !177, metadata !793}
!812 = metadata !{i32 786478, i32 0, metadata !676, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE9to_uint64Ev", metadata !117, i32 1666, metadata !813, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1666} ; [ DW_TAG_subprogram ]
!813 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !814, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!814 = metadata !{metadata !182, metadata !793}
!815 = metadata !{i32 786478, i32 0, metadata !676, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE9to_doubleEv", metadata !117, i32 1667, metadata !816, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1667} ; [ DW_TAG_subprogram ]
!816 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !817, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!817 = metadata !{metadata !196, metadata !793}
!818 = metadata !{i32 786478, i32 0, metadata !676, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE6lengthEv", metadata !117, i32 1680, metadata !798, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1680} ; [ DW_TAG_subprogram ]
!819 = metadata !{i32 786478, i32 0, metadata !676, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi11ELb1ELb1EE6lengthEv", metadata !117, i32 1681, metadata !820, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1681} ; [ DW_TAG_subprogram ]
!820 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !821, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!821 = metadata !{metadata !94, metadata !822}
!822 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !823} ; [ DW_TAG_pointer_type ]
!823 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !742} ; [ DW_TAG_const_type ]
!824 = metadata !{i32 786478, i32 0, metadata !676, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE7reverseEv", metadata !117, i32 1686, metadata !825, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1686} ; [ DW_TAG_subprogram ]
!825 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !826, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!826 = metadata !{metadata !753, metadata !692}
!827 = metadata !{i32 786478, i32 0, metadata !676, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE6iszeroEv", metadata !117, i32 1692, metadata !795, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1692} ; [ DW_TAG_subprogram ]
!828 = metadata !{i32 786478, i32 0, metadata !676, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE7is_zeroEv", metadata !117, i32 1697, metadata !795, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1697} ; [ DW_TAG_subprogram ]
!829 = metadata !{i32 786478, i32 0, metadata !676, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE4signEv", metadata !117, i32 1702, metadata !795, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1702} ; [ DW_TAG_subprogram ]
!830 = metadata !{i32 786478, i32 0, metadata !676, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE5clearEi", metadata !117, i32 1710, metadata !709, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1710} ; [ DW_TAG_subprogram ]
!831 = metadata !{i32 786478, i32 0, metadata !676, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE6invertEi", metadata !117, i32 1716, metadata !709, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1716} ; [ DW_TAG_subprogram ]
!832 = metadata !{i32 786478, i32 0, metadata !676, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE4testEi", metadata !117, i32 1724, metadata !833, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1724} ; [ DW_TAG_subprogram ]
!833 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !834, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!834 = metadata !{metadata !70, metadata !793, metadata !94}
!835 = metadata !{i32 786478, i32 0, metadata !676, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE3setEi", metadata !117, i32 1730, metadata !709, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1730} ; [ DW_TAG_subprogram ]
!836 = metadata !{i32 786478, i32 0, metadata !676, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE3setEib", metadata !117, i32 1736, metadata !837, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1736} ; [ DW_TAG_subprogram ]
!837 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !838, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!838 = metadata !{null, metadata !692, metadata !94, metadata !70}
!839 = metadata !{i32 786478, i32 0, metadata !676, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE7lrotateEi", metadata !117, i32 1743, metadata !709, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1743} ; [ DW_TAG_subprogram ]
!840 = metadata !{i32 786478, i32 0, metadata !676, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE7rrotateEi", metadata !117, i32 1752, metadata !709, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1752} ; [ DW_TAG_subprogram ]
!841 = metadata !{i32 786478, i32 0, metadata !676, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE7set_bitEib", metadata !117, i32 1760, metadata !837, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1760} ; [ DW_TAG_subprogram ]
!842 = metadata !{i32 786478, i32 0, metadata !676, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE7get_bitEi", metadata !117, i32 1765, metadata !833, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1765} ; [ DW_TAG_subprogram ]
!843 = metadata !{i32 786478, i32 0, metadata !676, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE5b_notEv", metadata !117, i32 1770, metadata !690, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1770} ; [ DW_TAG_subprogram ]
!844 = metadata !{i32 786478, i32 0, metadata !676, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE17countLeadingZerosEv", metadata !117, i32 1777, metadata !845, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1777} ; [ DW_TAG_subprogram ]
!845 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !846, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!846 = metadata !{metadata !94, metadata !692}
!847 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEppEv", metadata !117, i32 1834, metadata !825, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1834} ; [ DW_TAG_subprogram ]
!848 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEmmEv", metadata !117, i32 1838, metadata !825, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1838} ; [ DW_TAG_subprogram ]
!849 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEppEi", metadata !117, i32 1846, metadata !850, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1846} ; [ DW_TAG_subprogram ]
!850 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !851, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!851 = metadata !{metadata !747, metadata !692, metadata !94}
!852 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEmmEi", metadata !117, i32 1851, metadata !850, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1851} ; [ DW_TAG_subprogram ]
!853 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EEpsEv", metadata !117, i32 1860, metadata !854, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1860} ; [ DW_TAG_subprogram ]
!854 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !855, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!855 = metadata !{metadata !676, metadata !793}
!856 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EEntEv", metadata !117, i32 1866, metadata !795, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1866} ; [ DW_TAG_subprogram ]
!857 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EEngEv", metadata !117, i32 1871, metadata !858, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1871} ; [ DW_TAG_subprogram ]
!858 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !859, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!859 = metadata !{metadata !860, metadata !793}
!860 = metadata !{i32 786434, null, metadata !"ap_int_base<12, true, true>", metadata !117, i32 1398, i64 16, i64 16, i32 0, i32 0, null, metadata !861, i32 0, null, metadata !1080} ; [ DW_TAG_class_type ]
!861 = metadata !{metadata !862, metadata !873, metadata !877, metadata !880, metadata !883, metadata !886, metadata !889, metadata !892, metadata !895, metadata !898, metadata !901, metadata !904, metadata !907, metadata !910, metadata !913, metadata !916, metadata !919, metadata !922, metadata !927, metadata !932, metadata !933, metadata !934, metadata !938, metadata !939, metadata !942, metadata !945, metadata !948, metadata !951, metadata !954, metadata !957, metadata !960, metadata !963, metadata !966, metadata !969, metadata !974, metadata !977, metadata !980, metadata !983, metadata !986, metadata !989, metadata !992, metadata !995, metadata !998, metadata !999, metadata !1004, metadata !1007, metadata !1008, metadata !1009, metadata !1010, metadata !1011, metadata !1012, metadata !1015, metadata !1016, metadata !1019, metadata !1020, metadata !1021, metadata !1022, metadata !1023, metadata !1024, metadata !1027, metadata !1028, metadata !1029, metadata !1032, metadata !1033, metadata !1036, metadata !1037, metadata !1041, metadata !1045, metadata !1046, metadata !1049, metadata !1050, metadata !1054, metadata !1055, metadata !1056, metadata !1057, metadata !1060, metadata !1061, metadata !1062, metadata !1063, metadata !1064, metadata !1065, metadata !1066, metadata !1067, metadata !1068, metadata !1069, metadata !1070, metadata !1071, metadata !1074, metadata !1077}
!862 = metadata !{i32 786460, metadata !860, null, metadata !117, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !863} ; [ DW_TAG_inheritance ]
!863 = metadata !{i32 786434, null, metadata !"ssdm_int<12 + 1024 * 0, true>", metadata !82, i32 14, i64 16, i64 16, i32 0, i32 0, null, metadata !864, i32 0, null, metadata !871} ; [ DW_TAG_class_type ]
!864 = metadata !{metadata !865, metadata !867}
!865 = metadata !{i32 786445, metadata !863, metadata !"V", metadata !82, i32 14, i64 12, i64 16, i64 0, i32 0, metadata !866} ; [ DW_TAG_member ]
!866 = metadata !{i32 786468, null, metadata !"int12", null, i32 0, i64 12, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!867 = metadata !{i32 786478, i32 0, metadata !863, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !82, i32 14, metadata !868, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 14} ; [ DW_TAG_subprogram ]
!868 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !869, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!869 = metadata !{null, metadata !870}
!870 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !863} ; [ DW_TAG_pointer_type ]
!871 = metadata !{metadata !872, metadata !95}
!872 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !94, i64 12, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!873 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1439, metadata !874, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1439} ; [ DW_TAG_subprogram ]
!874 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !875, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!875 = metadata !{null, metadata !876}
!876 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !860} ; [ DW_TAG_pointer_type ]
!877 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1461, metadata !878, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1461} ; [ DW_TAG_subprogram ]
!878 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !879, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!879 = metadata !{null, metadata !876, metadata !70}
!880 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1462, metadata !881, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1462} ; [ DW_TAG_subprogram ]
!881 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !882, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!882 = metadata !{null, metadata !876, metadata !146}
!883 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1463, metadata !884, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1463} ; [ DW_TAG_subprogram ]
!884 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !885, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!885 = metadata !{null, metadata !876, metadata !150}
!886 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1464, metadata !887, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1464} ; [ DW_TAG_subprogram ]
!887 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !888, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!888 = metadata !{null, metadata !876, metadata !154}
!889 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1465, metadata !890, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1465} ; [ DW_TAG_subprogram ]
!890 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !891, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!891 = metadata !{null, metadata !876, metadata !158}
!892 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1466, metadata !893, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1466} ; [ DW_TAG_subprogram ]
!893 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !894, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!894 = metadata !{null, metadata !876, metadata !94}
!895 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1467, metadata !896, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1467} ; [ DW_TAG_subprogram ]
!896 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !897, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!897 = metadata !{null, metadata !876, metadata !165}
!898 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1468, metadata !899, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1468} ; [ DW_TAG_subprogram ]
!899 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !900, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!900 = metadata !{null, metadata !876, metadata !169}
!901 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1469, metadata !902, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1469} ; [ DW_TAG_subprogram ]
!902 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !903, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!903 = metadata !{null, metadata !876, metadata !173}
!904 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1470, metadata !905, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1470} ; [ DW_TAG_subprogram ]
!905 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !906, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!906 = metadata !{null, metadata !876, metadata !177}
!907 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1471, metadata !908, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1471} ; [ DW_TAG_subprogram ]
!908 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !909, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!909 = metadata !{null, metadata !876, metadata !182}
!910 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1472, metadata !911, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1472} ; [ DW_TAG_subprogram ]
!911 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !912, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!912 = metadata !{null, metadata !876, metadata !200}
!913 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1473, metadata !914, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1473} ; [ DW_TAG_subprogram ]
!914 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !915, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!915 = metadata !{null, metadata !876, metadata !196}
!916 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1500, metadata !917, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1500} ; [ DW_TAG_subprogram ]
!917 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !918, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!918 = metadata !{null, metadata !876, metadata !187}
!919 = metadata !{i32 786478, i32 0, metadata !860, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1507, metadata !920, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1507} ; [ DW_TAG_subprogram ]
!920 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !921, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!921 = metadata !{null, metadata !876, metadata !187, metadata !146}
!922 = metadata !{i32 786478, i32 0, metadata !860, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi12ELb1ELb1EE4readEv", metadata !117, i32 1528, metadata !923, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1528} ; [ DW_TAG_subprogram ]
!923 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !924, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!924 = metadata !{metadata !860, metadata !925}
!925 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !926} ; [ DW_TAG_pointer_type ]
!926 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !860} ; [ DW_TAG_volatile_type ]
!927 = metadata !{i32 786478, i32 0, metadata !860, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi12ELb1ELb1EE5writeERKS0_", metadata !117, i32 1534, metadata !928, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1534} ; [ DW_TAG_subprogram ]
!928 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !929, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!929 = metadata !{null, metadata !925, metadata !930}
!930 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !931} ; [ DW_TAG_reference_type ]
!931 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !860} ; [ DW_TAG_const_type ]
!932 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi12ELb1ELb1EEaSERVKS0_", metadata !117, i32 1546, metadata !928, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1546} ; [ DW_TAG_subprogram ]
!933 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi12ELb1ELb1EEaSERKS0_", metadata !117, i32 1555, metadata !928, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1555} ; [ DW_TAG_subprogram ]
!934 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSERVKS0_", metadata !117, i32 1578, metadata !935, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1578} ; [ DW_TAG_subprogram ]
!935 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !936, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!936 = metadata !{metadata !937, metadata !876, metadata !930}
!937 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !860} ; [ DW_TAG_reference_type ]
!938 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSERKS0_", metadata !117, i32 1583, metadata !935, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1583} ; [ DW_TAG_subprogram ]
!939 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEPKc", metadata !117, i32 1587, metadata !940, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1587} ; [ DW_TAG_subprogram ]
!940 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !941, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!941 = metadata !{metadata !937, metadata !876, metadata !187}
!942 = metadata !{i32 786478, i32 0, metadata !860, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE3setEPKca", metadata !117, i32 1595, metadata !943, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1595} ; [ DW_TAG_subprogram ]
!943 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !944, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!944 = metadata !{metadata !937, metadata !876, metadata !187, metadata !146}
!945 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEc", metadata !117, i32 1609, metadata !946, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1609} ; [ DW_TAG_subprogram ]
!946 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !947, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!947 = metadata !{metadata !937, metadata !876, metadata !142}
!948 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEh", metadata !117, i32 1610, metadata !949, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1610} ; [ DW_TAG_subprogram ]
!949 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !950, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!950 = metadata !{metadata !937, metadata !876, metadata !150}
!951 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEs", metadata !117, i32 1611, metadata !952, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1611} ; [ DW_TAG_subprogram ]
!952 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !953, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!953 = metadata !{metadata !937, metadata !876, metadata !154}
!954 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEt", metadata !117, i32 1612, metadata !955, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1612} ; [ DW_TAG_subprogram ]
!955 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !956, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!956 = metadata !{metadata !937, metadata !876, metadata !158}
!957 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEi", metadata !117, i32 1613, metadata !958, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1613} ; [ DW_TAG_subprogram ]
!958 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !959, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!959 = metadata !{metadata !937, metadata !876, metadata !94}
!960 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEj", metadata !117, i32 1614, metadata !961, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1614} ; [ DW_TAG_subprogram ]
!961 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !962, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!962 = metadata !{metadata !937, metadata !876, metadata !165}
!963 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEx", metadata !117, i32 1615, metadata !964, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1615} ; [ DW_TAG_subprogram ]
!964 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !965, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!965 = metadata !{metadata !937, metadata !876, metadata !177}
!966 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEaSEy", metadata !117, i32 1616, metadata !967, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1616} ; [ DW_TAG_subprogram ]
!967 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !968, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!968 = metadata !{metadata !937, metadata !876, metadata !182}
!969 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator short", metadata !"operator short", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EEcvsEv", metadata !117, i32 1654, metadata !970, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1654} ; [ DW_TAG_subprogram ]
!970 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !971, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!971 = metadata !{metadata !972, metadata !973}
!972 = metadata !{i32 786454, metadata !860, metadata !"RetType", metadata !117, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !789} ; [ DW_TAG_typedef ]
!973 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !931} ; [ DW_TAG_pointer_type ]
!974 = metadata !{i32 786478, i32 0, metadata !860, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE7to_boolEv", metadata !117, i32 1660, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1660} ; [ DW_TAG_subprogram ]
!975 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !976, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!976 = metadata !{metadata !70, metadata !973}
!977 = metadata !{i32 786478, i32 0, metadata !860, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE6to_intEv", metadata !117, i32 1661, metadata !978, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1661} ; [ DW_TAG_subprogram ]
!978 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !979, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!979 = metadata !{metadata !94, metadata !973}
!980 = metadata !{i32 786478, i32 0, metadata !860, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE7to_uintEv", metadata !117, i32 1662, metadata !981, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1662} ; [ DW_TAG_subprogram ]
!981 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !982, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!982 = metadata !{metadata !165, metadata !973}
!983 = metadata !{i32 786478, i32 0, metadata !860, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE7to_longEv", metadata !117, i32 1663, metadata !984, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1663} ; [ DW_TAG_subprogram ]
!984 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !985, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!985 = metadata !{metadata !169, metadata !973}
!986 = metadata !{i32 786478, i32 0, metadata !860, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE8to_ulongEv", metadata !117, i32 1664, metadata !987, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1664} ; [ DW_TAG_subprogram ]
!987 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !988, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!988 = metadata !{metadata !173, metadata !973}
!989 = metadata !{i32 786478, i32 0, metadata !860, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE8to_int64Ev", metadata !117, i32 1665, metadata !990, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1665} ; [ DW_TAG_subprogram ]
!990 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !991, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!991 = metadata !{metadata !177, metadata !973}
!992 = metadata !{i32 786478, i32 0, metadata !860, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE9to_uint64Ev", metadata !117, i32 1666, metadata !993, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1666} ; [ DW_TAG_subprogram ]
!993 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !994, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!994 = metadata !{metadata !182, metadata !973}
!995 = metadata !{i32 786478, i32 0, metadata !860, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE9to_doubleEv", metadata !117, i32 1667, metadata !996, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1667} ; [ DW_TAG_subprogram ]
!996 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !997, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!997 = metadata !{metadata !196, metadata !973}
!998 = metadata !{i32 786478, i32 0, metadata !860, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE6lengthEv", metadata !117, i32 1680, metadata !978, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1680} ; [ DW_TAG_subprogram ]
!999 = metadata !{i32 786478, i32 0, metadata !860, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi12ELb1ELb1EE6lengthEv", metadata !117, i32 1681, metadata !1000, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1681} ; [ DW_TAG_subprogram ]
!1000 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1001, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1001 = metadata !{metadata !94, metadata !1002}
!1002 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1003} ; [ DW_TAG_pointer_type ]
!1003 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !926} ; [ DW_TAG_const_type ]
!1004 = metadata !{i32 786478, i32 0, metadata !860, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE7reverseEv", metadata !117, i32 1686, metadata !1005, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1686} ; [ DW_TAG_subprogram ]
!1005 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1006, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1006 = metadata !{metadata !937, metadata !876}
!1007 = metadata !{i32 786478, i32 0, metadata !860, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE6iszeroEv", metadata !117, i32 1692, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1692} ; [ DW_TAG_subprogram ]
!1008 = metadata !{i32 786478, i32 0, metadata !860, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE7is_zeroEv", metadata !117, i32 1697, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1697} ; [ DW_TAG_subprogram ]
!1009 = metadata !{i32 786478, i32 0, metadata !860, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE4signEv", metadata !117, i32 1702, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1702} ; [ DW_TAG_subprogram ]
!1010 = metadata !{i32 786478, i32 0, metadata !860, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE5clearEi", metadata !117, i32 1710, metadata !893, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1710} ; [ DW_TAG_subprogram ]
!1011 = metadata !{i32 786478, i32 0, metadata !860, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE6invertEi", metadata !117, i32 1716, metadata !893, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1716} ; [ DW_TAG_subprogram ]
!1012 = metadata !{i32 786478, i32 0, metadata !860, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE4testEi", metadata !117, i32 1724, metadata !1013, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1724} ; [ DW_TAG_subprogram ]
!1013 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1014, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1014 = metadata !{metadata !70, metadata !973, metadata !94}
!1015 = metadata !{i32 786478, i32 0, metadata !860, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE3setEi", metadata !117, i32 1730, metadata !893, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1730} ; [ DW_TAG_subprogram ]
!1016 = metadata !{i32 786478, i32 0, metadata !860, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE3setEib", metadata !117, i32 1736, metadata !1017, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1736} ; [ DW_TAG_subprogram ]
!1017 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1018, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1018 = metadata !{null, metadata !876, metadata !94, metadata !70}
!1019 = metadata !{i32 786478, i32 0, metadata !860, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE7lrotateEi", metadata !117, i32 1743, metadata !893, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1743} ; [ DW_TAG_subprogram ]
!1020 = metadata !{i32 786478, i32 0, metadata !860, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE7rrotateEi", metadata !117, i32 1752, metadata !893, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1752} ; [ DW_TAG_subprogram ]
!1021 = metadata !{i32 786478, i32 0, metadata !860, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE7set_bitEib", metadata !117, i32 1760, metadata !1017, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1760} ; [ DW_TAG_subprogram ]
!1022 = metadata !{i32 786478, i32 0, metadata !860, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE7get_bitEi", metadata !117, i32 1765, metadata !1013, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1765} ; [ DW_TAG_subprogram ]
!1023 = metadata !{i32 786478, i32 0, metadata !860, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE5b_notEv", metadata !117, i32 1770, metadata !874, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1770} ; [ DW_TAG_subprogram ]
!1024 = metadata !{i32 786478, i32 0, metadata !860, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE17countLeadingZerosEv", metadata !117, i32 1777, metadata !1025, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1777} ; [ DW_TAG_subprogram ]
!1025 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1026, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1026 = metadata !{metadata !94, metadata !876}
!1027 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEppEv", metadata !117, i32 1834, metadata !1005, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1834} ; [ DW_TAG_subprogram ]
!1028 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEmmEv", metadata !117, i32 1838, metadata !1005, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1838} ; [ DW_TAG_subprogram ]
!1029 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEppEi", metadata !117, i32 1846, metadata !1030, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1846} ; [ DW_TAG_subprogram ]
!1030 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1031, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1031 = metadata !{metadata !931, metadata !876, metadata !94}
!1032 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEmmEi", metadata !117, i32 1851, metadata !1030, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1851} ; [ DW_TAG_subprogram ]
!1033 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EEpsEv", metadata !117, i32 1860, metadata !1034, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1860} ; [ DW_TAG_subprogram ]
!1034 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1035, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1035 = metadata !{metadata !860, metadata !973}
!1036 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EEntEv", metadata !117, i32 1866, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1866} ; [ DW_TAG_subprogram ]
!1037 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EEngEv", metadata !117, i32 1871, metadata !1038, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1871} ; [ DW_TAG_subprogram ]
!1038 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1039, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1039 = metadata !{metadata !1040, metadata !973}
!1040 = metadata !{i32 786434, null, metadata !"ap_int_base<13, true, true>", metadata !117, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1041 = metadata !{i32 786478, i32 0, metadata !860, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE5rangeEii", metadata !117, i32 2001, metadata !1042, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2001} ; [ DW_TAG_subprogram ]
!1042 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1043, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1043 = metadata !{metadata !1044, metadata !876, metadata !94, metadata !94}
!1044 = metadata !{i32 786434, null, metadata !"ap_range_ref<12, true>", metadata !117, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1045 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEclEii", metadata !117, i32 2007, metadata !1042, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2007} ; [ DW_TAG_subprogram ]
!1046 = metadata !{i32 786478, i32 0, metadata !860, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE5rangeEii", metadata !117, i32 2013, metadata !1047, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2013} ; [ DW_TAG_subprogram ]
!1047 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1048, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1048 = metadata !{metadata !1044, metadata !973, metadata !94, metadata !94}
!1049 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EEclEii", metadata !117, i32 2019, metadata !1047, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2019} ; [ DW_TAG_subprogram ]
!1050 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EEixEi", metadata !117, i32 2038, metadata !1051, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2038} ; [ DW_TAG_subprogram ]
!1051 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1052, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1052 = metadata !{metadata !1053, metadata !876, metadata !94}
!1053 = metadata !{i32 786434, null, metadata !"ap_bit_ref<12, true>", metadata !117, i32 1194, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1054 = metadata !{i32 786478, i32 0, metadata !860, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EEixEi", metadata !117, i32 2052, metadata !1013, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2052} ; [ DW_TAG_subprogram ]
!1055 = metadata !{i32 786478, i32 0, metadata !860, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE3bitEi", metadata !117, i32 2066, metadata !1051, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2066} ; [ DW_TAG_subprogram ]
!1056 = metadata !{i32 786478, i32 0, metadata !860, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE3bitEi", metadata !117, i32 2080, metadata !1013, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2080} ; [ DW_TAG_subprogram ]
!1057 = metadata !{i32 786478, i32 0, metadata !860, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE10and_reduceEv", metadata !117, i32 2260, metadata !1058, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2260} ; [ DW_TAG_subprogram ]
!1058 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1059, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1059 = metadata !{metadata !70, metadata !876}
!1060 = metadata !{i32 786478, i32 0, metadata !860, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE11nand_reduceEv", metadata !117, i32 2263, metadata !1058, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2263} ; [ DW_TAG_subprogram ]
!1061 = metadata !{i32 786478, i32 0, metadata !860, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE9or_reduceEv", metadata !117, i32 2266, metadata !1058, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2266} ; [ DW_TAG_subprogram ]
!1062 = metadata !{i32 786478, i32 0, metadata !860, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE10nor_reduceEv", metadata !117, i32 2269, metadata !1058, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2269} ; [ DW_TAG_subprogram ]
!1063 = metadata !{i32 786478, i32 0, metadata !860, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE10xor_reduceEv", metadata !117, i32 2272, metadata !1058, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2272} ; [ DW_TAG_subprogram ]
!1064 = metadata !{i32 786478, i32 0, metadata !860, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi12ELb1ELb1EE11xnor_reduceEv", metadata !117, i32 2275, metadata !1058, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2275} ; [ DW_TAG_subprogram ]
!1065 = metadata !{i32 786478, i32 0, metadata !860, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE10and_reduceEv", metadata !117, i32 2279, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2279} ; [ DW_TAG_subprogram ]
!1066 = metadata !{i32 786478, i32 0, metadata !860, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE11nand_reduceEv", metadata !117, i32 2282, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2282} ; [ DW_TAG_subprogram ]
!1067 = metadata !{i32 786478, i32 0, metadata !860, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE9or_reduceEv", metadata !117, i32 2285, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2285} ; [ DW_TAG_subprogram ]
!1068 = metadata !{i32 786478, i32 0, metadata !860, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE10nor_reduceEv", metadata !117, i32 2288, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2288} ; [ DW_TAG_subprogram ]
!1069 = metadata !{i32 786478, i32 0, metadata !860, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE10xor_reduceEv", metadata !117, i32 2291, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2291} ; [ DW_TAG_subprogram ]
!1070 = metadata !{i32 786478, i32 0, metadata !860, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE11xnor_reduceEv", metadata !117, i32 2294, metadata !975, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2294} ; [ DW_TAG_subprogram ]
!1071 = metadata !{i32 786478, i32 0, metadata !860, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !117, i32 2301, metadata !1072, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2301} ; [ DW_TAG_subprogram ]
!1072 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1073, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1073 = metadata !{null, metadata !973, metadata !545, metadata !94, metadata !546, metadata !70}
!1074 = metadata !{i32 786478, i32 0, metadata !860, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE9to_stringE8BaseModeb", metadata !117, i32 2328, metadata !1075, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2328} ; [ DW_TAG_subprogram ]
!1075 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1076, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1076 = metadata !{metadata !545, metadata !973, metadata !546, metadata !70}
!1077 = metadata !{i32 786478, i32 0, metadata !860, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi12ELb1ELb1EE9to_stringEab", metadata !117, i32 2332, metadata !1078, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2332} ; [ DW_TAG_subprogram ]
!1078 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1079, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1079 = metadata !{metadata !545, metadata !973, metadata !146, metadata !70}
!1080 = metadata !{metadata !1081, metadata !95, metadata !1082}
!1081 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !94, i64 12, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1082 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !70, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1083 = metadata !{i32 786478, i32 0, metadata !676, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE5rangeEii", metadata !117, i32 2001, metadata !1084, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2001} ; [ DW_TAG_subprogram ]
!1084 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1085, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1085 = metadata !{metadata !1086, metadata !692, metadata !94, metadata !94}
!1086 = metadata !{i32 786434, null, metadata !"ap_range_ref<11, true>", metadata !117, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1087 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEclEii", metadata !117, i32 2007, metadata !1084, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2007} ; [ DW_TAG_subprogram ]
!1088 = metadata !{i32 786478, i32 0, metadata !676, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE5rangeEii", metadata !117, i32 2013, metadata !1089, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2013} ; [ DW_TAG_subprogram ]
!1089 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1090, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1090 = metadata !{metadata !1086, metadata !793, metadata !94, metadata !94}
!1091 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EEclEii", metadata !117, i32 2019, metadata !1089, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2019} ; [ DW_TAG_subprogram ]
!1092 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EEixEi", metadata !117, i32 2038, metadata !1093, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2038} ; [ DW_TAG_subprogram ]
!1093 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1094, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1094 = metadata !{metadata !1095, metadata !692, metadata !94}
!1095 = metadata !{i32 786434, null, metadata !"ap_bit_ref<11, true>", metadata !117, i32 1194, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1096 = metadata !{i32 786478, i32 0, metadata !676, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EEixEi", metadata !117, i32 2052, metadata !833, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2052} ; [ DW_TAG_subprogram ]
!1097 = metadata !{i32 786478, i32 0, metadata !676, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE3bitEi", metadata !117, i32 2066, metadata !1093, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2066} ; [ DW_TAG_subprogram ]
!1098 = metadata !{i32 786478, i32 0, metadata !676, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE3bitEi", metadata !117, i32 2080, metadata !833, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2080} ; [ DW_TAG_subprogram ]
!1099 = metadata !{i32 786478, i32 0, metadata !676, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE10and_reduceEv", metadata !117, i32 2260, metadata !1100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2260} ; [ DW_TAG_subprogram ]
!1100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1101 = metadata !{metadata !70, metadata !692}
!1102 = metadata !{i32 786478, i32 0, metadata !676, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE11nand_reduceEv", metadata !117, i32 2263, metadata !1100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2263} ; [ DW_TAG_subprogram ]
!1103 = metadata !{i32 786478, i32 0, metadata !676, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE9or_reduceEv", metadata !117, i32 2266, metadata !1100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2266} ; [ DW_TAG_subprogram ]
!1104 = metadata !{i32 786478, i32 0, metadata !676, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE10nor_reduceEv", metadata !117, i32 2269, metadata !1100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2269} ; [ DW_TAG_subprogram ]
!1105 = metadata !{i32 786478, i32 0, metadata !676, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE10xor_reduceEv", metadata !117, i32 2272, metadata !1100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2272} ; [ DW_TAG_subprogram ]
!1106 = metadata !{i32 786478, i32 0, metadata !676, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi11ELb1ELb1EE11xnor_reduceEv", metadata !117, i32 2275, metadata !1100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2275} ; [ DW_TAG_subprogram ]
!1107 = metadata !{i32 786478, i32 0, metadata !676, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE10and_reduceEv", metadata !117, i32 2279, metadata !795, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2279} ; [ DW_TAG_subprogram ]
!1108 = metadata !{i32 786478, i32 0, metadata !676, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE11nand_reduceEv", metadata !117, i32 2282, metadata !795, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2282} ; [ DW_TAG_subprogram ]
!1109 = metadata !{i32 786478, i32 0, metadata !676, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE9or_reduceEv", metadata !117, i32 2285, metadata !795, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2285} ; [ DW_TAG_subprogram ]
!1110 = metadata !{i32 786478, i32 0, metadata !676, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE10nor_reduceEv", metadata !117, i32 2288, metadata !795, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2288} ; [ DW_TAG_subprogram ]
!1111 = metadata !{i32 786478, i32 0, metadata !676, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE10xor_reduceEv", metadata !117, i32 2291, metadata !795, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2291} ; [ DW_TAG_subprogram ]
!1112 = metadata !{i32 786478, i32 0, metadata !676, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE11xnor_reduceEv", metadata !117, i32 2294, metadata !795, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2294} ; [ DW_TAG_subprogram ]
!1113 = metadata !{i32 786478, i32 0, metadata !676, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !117, i32 2301, metadata !1114, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2301} ; [ DW_TAG_subprogram ]
!1114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1115 = metadata !{null, metadata !793, metadata !545, metadata !94, metadata !546, metadata !70}
!1116 = metadata !{i32 786478, i32 0, metadata !676, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE9to_stringE8BaseModeb", metadata !117, i32 2328, metadata !1117, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2328} ; [ DW_TAG_subprogram ]
!1117 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1118 = metadata !{metadata !545, metadata !793, metadata !546, metadata !70}
!1119 = metadata !{i32 786478, i32 0, metadata !676, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi11ELb1ELb1EE9to_stringEab", metadata !117, i32 2332, metadata !1120, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2332} ; [ DW_TAG_subprogram ]
!1120 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1121 = metadata !{metadata !545, metadata !793, metadata !146, metadata !70}
!1122 = metadata !{metadata !1123, metadata !95, metadata !1082}
!1123 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !94, i64 11, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1124 = metadata !{i32 786478, i32 0, metadata !566, metadata !"to_int", metadata !"to_int", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv", metadata !78, i32 1074, metadata !1125, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1074} ; [ DW_TAG_subprogram ]
!1125 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1126 = metadata !{metadata !94, metadata !643}
!1127 = metadata !{i32 786478, i32 0, metadata !566, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7to_uintEv", metadata !78, i32 1077, metadata !1128, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1077} ; [ DW_TAG_subprogram ]
!1128 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1129 = metadata !{metadata !165, metadata !643}
!1130 = metadata !{i32 786478, i32 0, metadata !566, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_int64Ev", metadata !78, i32 1080, metadata !1131, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1080} ; [ DW_TAG_subprogram ]
!1131 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1132, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1132 = metadata !{metadata !177, metadata !643}
!1133 = metadata !{i32 786478, i32 0, metadata !566, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_uint64Ev", metadata !78, i32 1083, metadata !1134, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1083} ; [ DW_TAG_subprogram ]
!1134 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1135 = metadata !{metadata !182, metadata !643}
!1136 = metadata !{i32 786478, i32 0, metadata !566, metadata !"to_double", metadata !"to_double", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_doubleEv", metadata !78, i32 1086, metadata !1137, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1086} ; [ DW_TAG_subprogram ]
!1137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1138 = metadata !{metadata !196, metadata !643}
!1139 = metadata !{i32 786478, i32 0, metadata !566, metadata !"to_float", metadata !"to_float", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE8to_floatEv", metadata !78, i32 1139, metadata !1140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1139} ; [ DW_TAG_subprogram ]
!1140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1141 = metadata !{metadata !200, metadata !643}
!1142 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator double", metadata !"operator double", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvdEv", metadata !78, i32 1190, metadata !1137, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1190} ; [ DW_TAG_subprogram ]
!1143 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator float", metadata !"operator float", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvfEv", metadata !78, i32 1194, metadata !1140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1194} ; [ DW_TAG_subprogram ]
!1144 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator char", metadata !"operator char", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvcEv", metadata !78, i32 1198, metadata !1145, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1198} ; [ DW_TAG_subprogram ]
!1145 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1146 = metadata !{metadata !142, metadata !643}
!1147 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator signed char", metadata !"operator signed char", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvaEv", metadata !78, i32 1202, metadata !1148, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1202} ; [ DW_TAG_subprogram ]
!1148 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1149 = metadata !{metadata !146, metadata !643}
!1150 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvhEv", metadata !78, i32 1206, metadata !1151, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1206} ; [ DW_TAG_subprogram ]
!1151 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1152 = metadata !{metadata !150, metadata !643}
!1153 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator short", metadata !"operator short", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvsEv", metadata !78, i32 1210, metadata !1154, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1210} ; [ DW_TAG_subprogram ]
!1154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1155 = metadata !{metadata !154, metadata !643}
!1156 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator unsigned short", metadata !"operator unsigned short", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvtEv", metadata !78, i32 1214, metadata !1157, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1214} ; [ DW_TAG_subprogram ]
!1157 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1158 = metadata !{metadata !158, metadata !643}
!1159 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator int", metadata !"operator int", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcviEv", metadata !78, i32 1219, metadata !1125, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1219} ; [ DW_TAG_subprogram ]
!1160 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator unsigned int", metadata !"operator unsigned int", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvjEv", metadata !78, i32 1223, metadata !1128, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1223} ; [ DW_TAG_subprogram ]
!1161 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator long", metadata !"operator long", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvlEv", metadata !78, i32 1228, metadata !1162, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1228} ; [ DW_TAG_subprogram ]
!1162 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1163, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1163 = metadata !{metadata !169, metadata !643}
!1164 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator unsigned long", metadata !"operator unsigned long", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvmEv", metadata !78, i32 1232, metadata !1165, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1232} ; [ DW_TAG_subprogram ]
!1165 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1166 = metadata !{metadata !173, metadata !643}
!1167 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator unsigned long long", metadata !"operator unsigned long long", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvyEv", metadata !78, i32 1245, metadata !1168, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1245} ; [ DW_TAG_subprogram ]
!1168 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1169, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1169 = metadata !{metadata !183, metadata !643}
!1170 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcvxEv", metadata !78, i32 1249, metadata !1171, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1249} ; [ DW_TAG_subprogram ]
!1171 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1172 = metadata !{metadata !178, metadata !643}
!1173 = metadata !{i32 786478, i32 0, metadata !566, metadata !"length", metadata !"length", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6lengthEv", metadata !78, i32 1253, metadata !1125, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1253} ; [ DW_TAG_subprogram ]
!1174 = metadata !{i32 786478, i32 0, metadata !566, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE17countLeadingZerosEv", metadata !78, i32 1257, metadata !1175, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1257} ; [ DW_TAG_subprogram ]
!1175 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1176 = metadata !{metadata !94, metadata !582}
!1177 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !78, i32 1358, metadata !1178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1358} ; [ DW_TAG_subprogram ]
!1178 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1179, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1179 = metadata !{metadata !659, metadata !582}
!1180 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !78, i32 1362, metadata !1178, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1362} ; [ DW_TAG_subprogram ]
!1181 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !78, i32 1370, metadata !1182, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1370} ; [ DW_TAG_subprogram ]
!1182 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1183 = metadata !{metadata !593, metadata !582, metadata !94}
!1184 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !78, i32 1376, metadata !1182, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1376} ; [ DW_TAG_subprogram ]
!1185 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !78, i32 1384, metadata !1186, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1384} ; [ DW_TAG_subprogram ]
!1186 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1187, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1187 = metadata !{metadata !566, metadata !582}
!1188 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !78, i32 1388, metadata !1189, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1388} ; [ DW_TAG_subprogram ]
!1189 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1190 = metadata !{metadata !1191, metadata !643}
!1191 = metadata !{i32 786434, null, metadata !"ap_fixed_base<27, 12, true, 5, 3, 0>", metadata !78, i32 510, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1192 = metadata !{i32 786478, i32 0, metadata !566, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !78, i32 1394, metadata !1186, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1394} ; [ DW_TAG_subprogram ]
!1193 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !78, i32 1402, metadata !1194, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1402} ; [ DW_TAG_subprogram ]
!1194 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1195 = metadata !{metadata !70, metadata !643}
!1196 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !78, i32 1408, metadata !1197, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1408} ; [ DW_TAG_subprogram ]
!1197 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1198 = metadata !{metadata !566, metadata !643}
!1199 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !78, i32 1431, metadata !1200, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1431} ; [ DW_TAG_subprogram ]
!1200 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1201, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1201 = metadata !{metadata !566, metadata !643, metadata !94}
!1202 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !78, i32 1490, metadata !1203, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1490} ; [ DW_TAG_subprogram ]
!1203 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1204, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1204 = metadata !{metadata !566, metadata !643, metadata !165}
!1205 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !78, i32 1534, metadata !1200, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1534} ; [ DW_TAG_subprogram ]
!1206 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !78, i32 1592, metadata !1203, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1592} ; [ DW_TAG_subprogram ]
!1207 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !78, i32 1644, metadata !1208, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1644} ; [ DW_TAG_subprogram ]
!1208 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1209 = metadata !{metadata !659, metadata !582, metadata !94}
!1210 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !78, i32 1707, metadata !1211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1707} ; [ DW_TAG_subprogram ]
!1211 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1212, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1212 = metadata !{metadata !659, metadata !582, metadata !165}
!1213 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !78, i32 1754, metadata !1208, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1754} ; [ DW_TAG_subprogram ]
!1214 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !78, i32 1816, metadata !1211, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1816} ; [ DW_TAG_subprogram ]
!1215 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !78, i32 1894, metadata !1216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1894} ; [ DW_TAG_subprogram ]
!1216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1217 = metadata !{metadata !70, metadata !643, metadata !196}
!1218 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !78, i32 1895, metadata !1216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1895} ; [ DW_TAG_subprogram ]
!1219 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !78, i32 1896, metadata !1216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1896} ; [ DW_TAG_subprogram ]
!1220 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !78, i32 1897, metadata !1216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1897} ; [ DW_TAG_subprogram ]
!1221 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !78, i32 1898, metadata !1216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1898} ; [ DW_TAG_subprogram ]
!1222 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !78, i32 1899, metadata !1216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1899} ; [ DW_TAG_subprogram ]
!1223 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !78, i32 1902, metadata !1224, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1902} ; [ DW_TAG_subprogram ]
!1224 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1225, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1225 = metadata !{metadata !1226, metadata !582, metadata !165}
!1226 = metadata !{i32 786434, null, metadata !"af_bit_ref<26, 11, true, 5, 3, 0>", metadata !78, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1227 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !78, i32 1914, metadata !1228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1914} ; [ DW_TAG_subprogram ]
!1228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1229 = metadata !{metadata !70, metadata !643, metadata !165}
!1230 = metadata !{i32 786478, i32 0, metadata !566, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !78, i32 1919, metadata !1224, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1919} ; [ DW_TAG_subprogram ]
!1231 = metadata !{i32 786478, i32 0, metadata !566, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !78, i32 1932, metadata !1228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1932} ; [ DW_TAG_subprogram ]
!1232 = metadata !{i32 786478, i32 0, metadata !566, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !78, i32 1944, metadata !1233, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1944} ; [ DW_TAG_subprogram ]
!1233 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1234, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1234 = metadata !{metadata !70, metadata !643, metadata !94}
!1235 = metadata !{i32 786478, i32 0, metadata !566, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !78, i32 1950, metadata !1236, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1950} ; [ DW_TAG_subprogram ]
!1236 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1237, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1237 = metadata !{metadata !1226, metadata !582, metadata !94}
!1238 = metadata !{i32 786478, i32 0, metadata !566, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !78, i32 1965, metadata !1239, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1965} ; [ DW_TAG_subprogram ]
!1239 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1240, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1240 = metadata !{metadata !1241, metadata !582, metadata !94, metadata !94}
!1241 = metadata !{i32 786434, null, metadata !"af_range_ref<26, 11, true, 5, 3, 0>", metadata !78, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1242 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !78, i32 1971, metadata !1239, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1971} ; [ DW_TAG_subprogram ]
!1243 = metadata !{i32 786478, i32 0, metadata !566, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !78, i32 1977, metadata !1244, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1977} ; [ DW_TAG_subprogram ]
!1244 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1245, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1245 = metadata !{metadata !1241, metadata !643, metadata !94, metadata !94}
!1246 = metadata !{i32 786478, i32 0, metadata !566, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !78, i32 2026, metadata !1244, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2026} ; [ DW_TAG_subprogram ]
!1247 = metadata !{i32 786478, i32 0, metadata !566, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !78, i32 2031, metadata !1248, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2031} ; [ DW_TAG_subprogram ]
!1248 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1249, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1249 = metadata !{metadata !1241, metadata !582}
!1250 = metadata !{i32 786478, i32 0, metadata !566, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !78, i32 2036, metadata !1251, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2036} ; [ DW_TAG_subprogram ]
!1251 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1252, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1252 = metadata !{metadata !1241, metadata !643}
!1253 = metadata !{i32 786478, i32 0, metadata !566, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !78, i32 2040, metadata !1194, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2040} ; [ DW_TAG_subprogram ]
!1254 = metadata !{i32 786478, i32 0, metadata !566, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !78, i32 2044, metadata !1194, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2044} ; [ DW_TAG_subprogram ]
!1255 = metadata !{i32 786478, i32 0, metadata !566, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !78, i32 2050, metadata !1125, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2050} ; [ DW_TAG_subprogram ]
!1256 = metadata !{i32 786478, i32 0, metadata !566, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !78, i32 2054, metadata !1125, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2054} ; [ DW_TAG_subprogram ]
!1257 = metadata !{i32 786478, i32 0, metadata !566, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !78, i32 2058, metadata !1258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2058} ; [ DW_TAG_subprogram ]
!1258 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1259 = metadata !{metadata !116, metadata !643}
!1260 = metadata !{i32 786478, i32 0, metadata !566, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !78, i32 2062, metadata !1261, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2062} ; [ DW_TAG_subprogram ]
!1261 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1262, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1262 = metadata !{metadata !127, metadata !643}
!1263 = metadata !{i32 786478, i32 0, metadata !566, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !78, i32 2066, metadata !1125, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2066} ; [ DW_TAG_subprogram ]
!1264 = metadata !{i32 786478, i32 0, metadata !566, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !78, i32 2070, metadata !1265, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2070} ; [ DW_TAG_subprogram ]
!1265 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1266, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1266 = metadata !{metadata !545, metadata !582, metadata !546}
!1267 = metadata !{i32 786478, i32 0, metadata !566, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !78, i32 2074, metadata !1268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2074} ; [ DW_TAG_subprogram ]
!1268 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1269 = metadata !{metadata !545, metadata !582, metadata !146}
!1270 = metadata !{i32 786478, i32 0, metadata !566, metadata !"~ap_fixed_base", metadata !"~ap_fixed_base", metadata !"", metadata !78, i32 510, metadata !587, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !90, i32 510} ; [ DW_TAG_subprogram ]
!1271 = metadata !{metadata !1272, metadata !1273, metadata !95, metadata !559, metadata !560, metadata !561}
!1272 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !94, i64 26, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1273 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !94, i64 11, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1274 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator-<25, 10, true, 5, 3, 0>", metadata !"operator-<25, 10, true, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmiILi25ELi10ELb1ELS0_5ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE5minusERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !78, i32 1330, metadata !1275, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !111, i32 0, metadata !90, i32 1330} ; [ DW_TAG_subprogram ]
!1275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1276 = metadata !{metadata !1277, metadata !195, metadata !109}
!1277 = metadata !{i32 786454, metadata !288, metadata !"minus", metadata !78, i32 643, i64 0, i64 0, i64 0, i32 0, metadata !566} ; [ DW_TAG_typedef ]
!1278 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEv", metadata !78, i32 1358, metadata !1279, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1358} ; [ DW_TAG_subprogram ]
!1279 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1280, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1280 = metadata !{metadata !213, metadata !99}
!1281 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEv", metadata !78, i32 1362, metadata !1279, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1362} ; [ DW_TAG_subprogram ]
!1282 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator++", metadata !"operator++", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEppEi", metadata !78, i32 1370, metadata !1283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1370} ; [ DW_TAG_subprogram ]
!1283 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1284, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1284 = metadata !{metadata !110, metadata !99, metadata !94}
!1285 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator--", metadata !"operator--", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmmEi", metadata !78, i32 1376, metadata !1283, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1376} ; [ DW_TAG_subprogram ]
!1286 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator+", metadata !"operator+", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEpsEv", metadata !78, i32 1384, metadata !1287, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1384} ; [ DW_TAG_subprogram ]
!1287 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1288, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1288 = metadata !{metadata !77, metadata !99}
!1289 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator-", metadata !"operator-", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEngEv", metadata !78, i32 1388, metadata !1290, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1388} ; [ DW_TAG_subprogram ]
!1290 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1291, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1291 = metadata !{metadata !566, metadata !195}
!1292 = metadata !{i32 786478, i32 0, metadata !77, metadata !"getNeg", metadata !"getNeg", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6getNegEv", metadata !78, i32 1394, metadata !1287, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1394} ; [ DW_TAG_subprogram ]
!1293 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator!", metadata !"operator!", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEntEv", metadata !78, i32 1402, metadata !1294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1402} ; [ DW_TAG_subprogram ]
!1294 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1295 = metadata !{metadata !70, metadata !195}
!1296 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator~", metadata !"operator~", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEcoEv", metadata !78, i32 1408, metadata !1297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1408} ; [ DW_TAG_subprogram ]
!1297 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1298 = metadata !{metadata !77, metadata !195}
!1299 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEi", metadata !78, i32 1431, metadata !1300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1431} ; [ DW_TAG_subprogram ]
!1300 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1301, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1301 = metadata !{metadata !77, metadata !195, metadata !94}
!1302 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator<<", metadata !"operator<<", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElsEj", metadata !78, i32 1490, metadata !1303, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1490} ; [ DW_TAG_subprogram ]
!1303 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1304, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1304 = metadata !{metadata !77, metadata !195, metadata !165}
!1305 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEi", metadata !78, i32 1534, metadata !1300, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1534} ; [ DW_TAG_subprogram ]
!1306 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator>>", metadata !"operator>>", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErsEj", metadata !78, i32 1592, metadata !1303, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1592} ; [ DW_TAG_subprogram ]
!1307 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEi", metadata !78, i32 1644, metadata !1308, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1644} ; [ DW_TAG_subprogram ]
!1308 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1309, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1309 = metadata !{metadata !213, metadata !99, metadata !94}
!1310 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator<<=", metadata !"operator<<=", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EElSEj", metadata !78, i32 1707, metadata !1311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1707} ; [ DW_TAG_subprogram ]
!1311 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1312, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1312 = metadata !{metadata !213, metadata !99, metadata !165}
!1313 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEi", metadata !78, i32 1754, metadata !1308, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1754} ; [ DW_TAG_subprogram ]
!1314 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator>>=", metadata !"operator>>=", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EErSEj", metadata !78, i32 1816, metadata !1311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1816} ; [ DW_TAG_subprogram ]
!1315 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator><25, 10, true, 5, 3, 0>", metadata !"operator><25, 10, true, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtILi25ELi10ELb1ELS0_5ELS1_3ELi0EEEbRKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !78, i32 1884, metadata !1316, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !111, i32 0, metadata !90, i32 1884} ; [ DW_TAG_subprogram ]
!1316 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1317, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1317 = metadata !{metadata !70, metadata !195, metadata !109}
!1318 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator<<25, 10, true, 5, 3, 0>", metadata !"operator<<25, 10, true, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltILi25ELi10ELb1ELS0_5ELS1_3ELi0EEEbRKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !78, i32 1886, metadata !1316, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !111, i32 0, metadata !90, i32 1886} ; [ DW_TAG_subprogram ]
!1319 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator==", metadata !"operator==", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEeqEd", metadata !78, i32 1894, metadata !1320, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1894} ; [ DW_TAG_subprogram ]
!1320 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1321, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1321 = metadata !{metadata !70, metadata !195, metadata !196}
!1322 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator!=", metadata !"operator!=", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEneEd", metadata !78, i32 1895, metadata !1320, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1895} ; [ DW_TAG_subprogram ]
!1323 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator>", metadata !"operator>", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtEd", metadata !78, i32 1896, metadata !1320, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1896} ; [ DW_TAG_subprogram ]
!1324 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator>=", metadata !"operator>=", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgeEd", metadata !78, i32 1897, metadata !1320, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1897} ; [ DW_TAG_subprogram ]
!1325 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator<", metadata !"operator<", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltEd", metadata !78, i32 1898, metadata !1320, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1898} ; [ DW_TAG_subprogram ]
!1326 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator<=", metadata !"operator<=", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEleEd", metadata !78, i32 1899, metadata !1320, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1899} ; [ DW_TAG_subprogram ]
!1327 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !78, i32 1902, metadata !1328, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1902} ; [ DW_TAG_subprogram ]
!1328 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1329, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1329 = metadata !{metadata !1330, metadata !99, metadata !165}
!1330 = metadata !{i32 786434, null, metadata !"af_bit_ref<25, 10, true, 5, 3, 0>", metadata !78, i32 91, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1331 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEixEj", metadata !78, i32 1914, metadata !1332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1914} ; [ DW_TAG_subprogram ]
!1332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1333 = metadata !{metadata !70, metadata !195, metadata !165}
!1334 = metadata !{i32 786478, i32 0, metadata !77, metadata !"bit", metadata !"bit", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !78, i32 1919, metadata !1328, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1919} ; [ DW_TAG_subprogram ]
!1335 = metadata !{i32 786478, i32 0, metadata !77, metadata !"bit", metadata !"bit", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3bitEj", metadata !78, i32 1932, metadata !1332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1932} ; [ DW_TAG_subprogram ]
!1336 = metadata !{i32 786478, i32 0, metadata !77, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !78, i32 1944, metadata !1337, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1944} ; [ DW_TAG_subprogram ]
!1337 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1338, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1338 = metadata !{metadata !70, metadata !195, metadata !94}
!1339 = metadata !{i32 786478, i32 0, metadata !77, metadata !"get_bit", metadata !"get_bit", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7get_bitEi", metadata !78, i32 1950, metadata !1340, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1950} ; [ DW_TAG_subprogram ]
!1340 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1341, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1341 = metadata !{metadata !1330, metadata !99, metadata !94}
!1342 = metadata !{i32 786478, i32 0, metadata !77, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !78, i32 1965, metadata !1343, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1965} ; [ DW_TAG_subprogram ]
!1343 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1344, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1344 = metadata !{metadata !1345, metadata !99, metadata !94, metadata !94}
!1345 = metadata !{i32 786434, null, metadata !"af_range_ref<25, 10, true, 5, 3, 0>", metadata !78, i32 236, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1346 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator()", metadata !"operator()", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !78, i32 1971, metadata !1343, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1971} ; [ DW_TAG_subprogram ]
!1347 = metadata !{i32 786478, i32 0, metadata !77, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEii", metadata !78, i32 1977, metadata !1348, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1977} ; [ DW_TAG_subprogram ]
!1348 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1349, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1349 = metadata !{metadata !1345, metadata !195, metadata !94, metadata !94}
!1350 = metadata !{i32 786478, i32 0, metadata !77, metadata !"operator()", metadata !"operator()", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEclEii", metadata !78, i32 2026, metadata !1348, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2026} ; [ DW_TAG_subprogram ]
!1351 = metadata !{i32 786478, i32 0, metadata !77, metadata !"range", metadata !"range", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !78, i32 2031, metadata !1352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2031} ; [ DW_TAG_subprogram ]
!1352 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1353, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1353 = metadata !{metadata !1345, metadata !99}
!1354 = metadata !{i32 786478, i32 0, metadata !77, metadata !"range", metadata !"range", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE5rangeEv", metadata !78, i32 2036, metadata !1355, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2036} ; [ DW_TAG_subprogram ]
!1355 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1356, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1356 = metadata !{metadata !1345, metadata !195}
!1357 = metadata !{i32 786478, i32 0, metadata !77, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE7is_zeroEv", metadata !78, i32 2040, metadata !1294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2040} ; [ DW_TAG_subprogram ]
!1358 = metadata !{i32 786478, i32 0, metadata !77, metadata !"is_neg", metadata !"is_neg", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6is_negEv", metadata !78, i32 2044, metadata !1294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2044} ; [ DW_TAG_subprogram ]
!1359 = metadata !{i32 786478, i32 0, metadata !77, metadata !"wl", metadata !"wl", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE2wlEv", metadata !78, i32 2050, metadata !232, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2050} ; [ DW_TAG_subprogram ]
!1360 = metadata !{i32 786478, i32 0, metadata !77, metadata !"iwl", metadata !"iwl", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE3iwlEv", metadata !78, i32 2054, metadata !232, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2054} ; [ DW_TAG_subprogram ]
!1361 = metadata !{i32 786478, i32 0, metadata !77, metadata !"q_mode", metadata !"q_mode", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6q_modeEv", metadata !78, i32 2058, metadata !1362, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2058} ; [ DW_TAG_subprogram ]
!1362 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1363, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1363 = metadata !{metadata !116, metadata !195}
!1364 = metadata !{i32 786478, i32 0, metadata !77, metadata !"o_mode", metadata !"o_mode", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6o_modeEv", metadata !78, i32 2062, metadata !1365, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2062} ; [ DW_TAG_subprogram ]
!1365 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1366, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1366 = metadata !{metadata !127, metadata !195}
!1367 = metadata !{i32 786478, i32 0, metadata !77, metadata !"n_bits", metadata !"n_bits", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE6n_bitsEv", metadata !78, i32 2066, metadata !232, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2066} ; [ DW_TAG_subprogram ]
!1368 = metadata !{i32 786478, i32 0, metadata !77, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringE8BaseMode", metadata !78, i32 2070, metadata !1369, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2070} ; [ DW_TAG_subprogram ]
!1369 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1370, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1370 = metadata !{metadata !545, metadata !99, metadata !546}
!1371 = metadata !{i32 786478, i32 0, metadata !77, metadata !"to_string", metadata !"to_string", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EE9to_stringEa", metadata !78, i32 2074, metadata !1372, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2074} ; [ DW_TAG_subprogram ]
!1372 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1373, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1373 = metadata !{metadata !545, metadata !99, metadata !146}
!1374 = metadata !{metadata !1375, metadata !1376, metadata !95, metadata !559, metadata !560, metadata !561}
!1375 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !94, i64 25, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1376 = metadata !{i32 786480, null, metadata !"_AP_I", metadata !94, i64 10, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1377 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 290, metadata !1378, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 290} ; [ DW_TAG_subprogram ]
!1378 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1379, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1379 = metadata !{null, metadata !1380}
!1380 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !73} ; [ DW_TAG_pointer_type ]
!1381 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed<50, 20, true, 5, 3, 0>", metadata !"ap_fixed<50, 20, true, 5, 3, 0>", metadata !"", metadata !74, i32 332, metadata !1382, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !319, i32 0, metadata !90, i32 332} ; [ DW_TAG_subprogram ]
!1382 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1383, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1383 = metadata !{null, metadata !1380, metadata !317}
!1384 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed<26, 11, true, 5, 3, 0>", metadata !"ap_fixed<26, 11, true, 5, 3, 0>", metadata !"", metadata !74, i32 332, metadata !1385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !594, i32 0, metadata !90, i32 332} ; [ DW_TAG_subprogram ]
!1385 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1386, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1386 = metadata !{null, metadata !1380, metadata !592}
!1387 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 362, metadata !1388, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 362} ; [ DW_TAG_subprogram ]
!1388 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1389, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1389 = metadata !{null, metadata !1380, metadata !70}
!1390 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 363, metadata !1391, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 363} ; [ DW_TAG_subprogram ]
!1391 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1392, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1392 = metadata !{null, metadata !1380, metadata !146}
!1393 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 364, metadata !1394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 364} ; [ DW_TAG_subprogram ]
!1394 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1395, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1395 = metadata !{null, metadata !1380, metadata !150}
!1396 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 365, metadata !1397, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 365} ; [ DW_TAG_subprogram ]
!1397 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1398 = metadata !{null, metadata !1380, metadata !154}
!1399 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 366, metadata !1400, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 366} ; [ DW_TAG_subprogram ]
!1400 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1401, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1401 = metadata !{null, metadata !1380, metadata !158}
!1402 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 367, metadata !1403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 367} ; [ DW_TAG_subprogram ]
!1403 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1404, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1404 = metadata !{null, metadata !1380, metadata !94}
!1405 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 368, metadata !1406, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 368} ; [ DW_TAG_subprogram ]
!1406 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1407, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1407 = metadata !{null, metadata !1380, metadata !165}
!1408 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 369, metadata !1409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 369} ; [ DW_TAG_subprogram ]
!1409 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1410, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1410 = metadata !{null, metadata !1380, metadata !169}
!1411 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 370, metadata !1412, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 370} ; [ DW_TAG_subprogram ]
!1412 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1413, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1413 = metadata !{null, metadata !1380, metadata !173}
!1414 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 371, metadata !1415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 371} ; [ DW_TAG_subprogram ]
!1415 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1416 = metadata !{null, metadata !1380, metadata !183}
!1417 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 372, metadata !1418, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 372} ; [ DW_TAG_subprogram ]
!1418 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1419, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1419 = metadata !{null, metadata !1380, metadata !178}
!1420 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 373, metadata !1421, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 373} ; [ DW_TAG_subprogram ]
!1421 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1422, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1422 = metadata !{null, metadata !1380, metadata !200}
!1423 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 374, metadata !1424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 374} ; [ DW_TAG_subprogram ]
!1424 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1425, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1425 = metadata !{null, metadata !1380, metadata !196}
!1426 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 376, metadata !1427, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 376} ; [ DW_TAG_subprogram ]
!1427 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1428, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1428 = metadata !{null, metadata !1380, metadata !187}
!1429 = metadata !{i32 786478, i32 0, metadata !73, metadata !"ap_fixed", metadata !"ap_fixed", metadata !"", metadata !74, i32 377, metadata !1430, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 377} ; [ DW_TAG_subprogram ]
!1430 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1431, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1431 = metadata !{null, metadata !1380, metadata !187, metadata !146}
!1432 = metadata !{i32 786478, i32 0, metadata !73, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi25ELi10EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !74, i32 380, metadata !1433, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 380} ; [ DW_TAG_subprogram ]
!1433 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1434, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1434 = metadata !{metadata !1435, metadata !1380, metadata !1436}
!1435 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_reference_type ]
!1436 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1437} ; [ DW_TAG_reference_type ]
!1437 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_const_type ]
!1438 = metadata !{i32 786478, i32 0, metadata !73, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi25ELi10EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !74, i32 386, metadata !1433, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 386} ; [ DW_TAG_subprogram ]
!1439 = metadata !{i32 786478, i32 0, metadata !73, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi25ELi10EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !74, i32 391, metadata !1440, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 391} ; [ DW_TAG_subprogram ]
!1440 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1441, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1441 = metadata !{null, metadata !1442, metadata !1436}
!1442 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1443} ; [ DW_TAG_pointer_type ]
!1443 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_volatile_type ]
!1444 = metadata !{i32 786478, i32 0, metadata !73, metadata !"operator=", metadata !"operator=", metadata !"_ZNV8ap_fixedILi25ELi10EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERVKS2_", metadata !74, i32 396, metadata !1440, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 396} ; [ DW_TAG_subprogram ]
!1445 = metadata !{i32 786478, i32 0, metadata !73, metadata !"~ap_fixed", metadata !"~ap_fixed", metadata !"", metadata !74, i32 287, metadata !1378, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !90, i32 287} ; [ DW_TAG_subprogram ]
!1446 = metadata !{metadata !1375, metadata !1376, metadata !559, metadata !560, metadata !561}
!1447 = metadata !{i32 42, i32 26, metadata !66, null}
!1448 = metadata !{i32 790531, metadata !1449, metadata !"coeff[0].V", null, i32 42, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1449 = metadata !{i32 786689, metadata !66, metadata !"coeff", metadata !67, i32 33554474, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1450 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !1451} ; [ DW_TAG_pointer_type ]
!1451 = metadata !{i32 786438, null, metadata !"ap_fixed<25, 10, 5, 3, 0>", metadata !74, i32 287, i64 25, i64 32, i32 0, i32 0, null, metadata !1452, i32 0, null, metadata !1446} ; [ DW_TAG_class_field_type ]
!1452 = metadata !{metadata !1453}
!1453 = metadata !{i32 786438, null, metadata !"ap_fixed_base<25, 10, true, 5, 3, 0>", metadata !78, i32 510, i64 25, i64 32, i32 0, i32 0, null, metadata !1454, i32 0, null, metadata !1374} ; [ DW_TAG_class_field_type ]
!1454 = metadata !{metadata !1455}
!1455 = metadata !{i32 786438, null, metadata !"ssdm_int<25 + 1024 * 0, true>", metadata !82, i32 27, i64 25, i64 32, i32 0, i32 0, null, metadata !1456, i32 0, null, metadata !92} ; [ DW_TAG_class_field_type ]
!1456 = metadata !{metadata !84}
!1457 = metadata !{i32 42, i32 43, metadata !66, null}
!1458 = metadata !{i32 790531, metadata !1449, metadata !"coeff[1].V", null, i32 42, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1459 = metadata !{i32 790531, metadata !1449, metadata !"coeff[2].V", null, i32 42, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1460 = metadata !{i32 790531, metadata !1449, metadata !"coeff[3].V", null, i32 42, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1461 = metadata !{i32 790531, metadata !1449, metadata !"coeff[4].V", null, i32 42, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1462 = metadata !{i32 790531, metadata !1449, metadata !"coeff[5].V", null, i32 42, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1463 = metadata !{i32 790531, metadata !1464, metadata !"din[0].V", null, i32 42, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1464 = metadata !{i32 786689, metadata !66, metadata !"din", metadata !67, i32 50331690, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1465 = metadata !{i32 42, i32 63, metadata !66, null}
!1466 = metadata !{i32 790531, metadata !1464, metadata !"din[1].V", null, i32 42, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1467 = metadata !{i32 790531, metadata !1468, metadata !"dout[0].V", null, i32 42, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1468 = metadata !{i32 786689, metadata !66, metadata !"dout", metadata !67, i32 67108906, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1469 = metadata !{i32 42, i32 81, metadata !66, null}
!1470 = metadata !{i32 790531, metadata !1468, metadata !"dout[1].V", null, i32 42, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1471 = metadata !{i32 48, i32 1, metadata !1472, null}
!1472 = metadata !{i32 786443, metadata !66, i32 47, i32 1, metadata !67, i32 0} ; [ DW_TAG_lexical_block ]
!1473 = metadata !{i32 790531, metadata !1474, metadata !"op[0].V", null, i32 381, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1474 = metadata !{i32 786689, metadata !1475, metadata !"op", metadata !74, i32 33554813, metadata !1436, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!1475 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN8ap_fixedILi25ELi10EL9ap_q_mode5EL9ap_o_mode3ELi0EEaSERKS2_", metadata !74, i32 380, metadata !1433, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !1432, metadata !90, i32 381} ; [ DW_TAG_subprogram ]
!1476 = metadata !{i32 381, i32 49, metadata !1475, metadata !1477}
!1477 = metadata !{i32 58, i32 2, metadata !1472, null}
!1478 = metadata !{i32 790531, metadata !1474, metadata !"op[1].V", null, i32 381, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1479 = metadata !{i32 790531, metadata !1474, metadata !"op[2].V", null, i32 381, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1480 = metadata !{i32 790531, metadata !1474, metadata !"op[3].V", null, i32 381, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1481 = metadata !{i32 790531, metadata !1474, metadata !"op[4].V", null, i32 381, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1482 = metadata !{i32 790531, metadata !1474, metadata !"op[5].V", null, i32 381, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1483 = metadata !{i32 382, i32 9, metadata !1484, metadata !1477}
!1484 = metadata !{i32 786443, metadata !1475, i32 381, i32 53, metadata !74, i32 31} ; [ DW_TAG_lexical_block ]
!1485 = metadata !{i32 790529, metadata !1486, metadata !"Gi.V", null, i32 54, metadata !1451, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1486 = metadata !{i32 786688, metadata !1472, metadata !"Gi", metadata !67, i32 54, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1487 = metadata !{i32 382, i32 9, metadata !1484, metadata !1488}
!1488 = metadata !{i32 58, i32 17, metadata !1472, null}
!1489 = metadata !{i32 790529, metadata !1490, metadata !"Gd.V", null, i32 54, metadata !1451, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1490 = metadata !{i32 786688, metadata !1472, metadata !"Gd", metadata !67, i32 54, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1491 = metadata !{i32 382, i32 9, metadata !1484, metadata !1492}
!1492 = metadata !{i32 59, i32 2, metadata !1472, null}
!1493 = metadata !{i32 790529, metadata !1494, metadata !"C.V", null, i32 54, metadata !1451, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1494 = metadata !{i32 786688, metadata !1472, metadata !"C", metadata !67, i32 54, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1495 = metadata !{i32 382, i32 9, metadata !1484, metadata !1496}
!1496 = metadata !{i32 59, i32 16, metadata !1472, null}
!1497 = metadata !{i32 790529, metadata !1498, metadata !"Gp.V", null, i32 54, metadata !1451, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1498 = metadata !{i32 786688, metadata !1472, metadata !"Gp", metadata !67, i32 54, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1499 = metadata !{i32 382, i32 9, metadata !1484, metadata !1500}
!1500 = metadata !{i32 60, i32 2, metadata !1472, null}
!1501 = metadata !{i32 790529, metadata !1502, metadata !"max_lim.V", null, i32 54, metadata !1451, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1502 = metadata !{i32 786688, metadata !1472, metadata !"max_lim", metadata !67, i32 54, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1503 = metadata !{i32 382, i32 9, metadata !1484, metadata !1504}
!1504 = metadata !{i32 60, i32 22, metadata !1472, null}
!1505 = metadata !{i32 790529, metadata !1506, metadata !"min_lim.V", null, i32 54, metadata !1451, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1506 = metadata !{i32 786688, metadata !1472, metadata !"min_lim", metadata !67, i32 54, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1507 = metadata !{i32 381, i32 49, metadata !1475, metadata !1508}
!1508 = metadata !{i32 63, i32 2, metadata !1472, null}
!1509 = metadata !{i32 382, i32 9, metadata !1484, metadata !1508}
!1510 = metadata !{i32 382, i32 9, metadata !1484, metadata !1511}
!1511 = metadata !{i32 64, i32 2, metadata !1472, null}
!1512 = metadata !{i32 673, i32 0, metadata !1513, metadata !1518}
!1513 = metadata !{i32 786443, metadata !1514, i32 673, i32 25, metadata !78, i32 4} ; [ DW_TAG_lexical_block ]
!1514 = metadata !{i32 786443, metadata !1515, i32 661, i32 115, metadata !78, i32 3} ; [ DW_TAG_lexical_block ]
!1515 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<25, 10, true, 5, 3, 0>", metadata !"ap_fixed_base<25, 10, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi25ELi10ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !78, i32 661, metadata !1516, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !111, null, metadata !90, i32 661} ; [ DW_TAG_subprogram ]
!1516 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1517, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1517 = metadata !{null, metadata !582, metadata !109}
!1518 = metadata !{i32 771, i32 5, metadata !1519, metadata !1520}
!1519 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<25, 10, true, 5, 3, 0>", metadata !"ap_fixed_base<25, 10, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi26ELi11ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi25ELi10ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !78, i32 661, metadata !1516, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !111, null, metadata !90, i32 661} ; [ DW_TAG_subprogram ]
!1520 = metadata !{i32 1329, i32 0, metadata !1521, metadata !1523}
!1521 = metadata !{i32 786443, metadata !1522, i32 1329, i32 265, metadata !78, i32 2} ; [ DW_TAG_lexical_block ]
!1522 = metadata !{i32 786478, i32 0, null, metadata !"operator+<25, 10, true, 5, 3, 0>", metadata !"operator+<25, 10, true, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEplILi25ELi10ELb1ELS0_5ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE4plusERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !78, i32 1329, metadata !563, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !111, metadata !562, metadata !90, i32 1329} ; [ DW_TAG_subprogram ]
!1523 = metadata !{i32 95, i32 15, metadata !1472, null}
!1524 = metadata !{i32 673, i32 0, metadata !1513, metadata !1525}
!1525 = metadata !{i32 771, i32 5, metadata !1519, metadata !1526}
!1526 = metadata !{i32 1329, i32 0, metadata !1521, metadata !1527}
!1527 = metadata !{i32 94, i32 15, metadata !1472, null}
!1528 = metadata !{i32 673, i32 0, metadata !1513, metadata !1529}
!1529 = metadata !{i32 771, i32 5, metadata !1519, metadata !1530}
!1530 = metadata !{i32 1330, i32 0, metadata !1531, metadata !1533}
!1531 = metadata !{i32 786443, metadata !1532, i32 1330, i32 269, metadata !78, i32 22} ; [ DW_TAG_lexical_block ]
!1532 = metadata !{i32 786478, i32 0, null, metadata !"operator-<25, 10, true, 5, 3, 0>", metadata !"operator-<25, 10, true, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmiILi25ELi10ELb1ELS0_5ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE5minusERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !78, i32 1330, metadata !1275, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !111, metadata !1274, metadata !90, i32 1330} ; [ DW_TAG_subprogram ]
!1533 = metadata !{i32 87, i32 15, metadata !1472, null}
!1534 = metadata !{i32 1295, i32 9, metadata !1535, metadata !1537}
!1535 = metadata !{i32 786443, metadata !1536, i32 1290, i32 92, metadata !78, i32 13} ; [ DW_TAG_lexical_block ]
!1536 = metadata !{i32 786478, i32 0, null, metadata !"operator*<25, 10, true, 5, 3, 0>", metadata !"operator*<25, 10, true, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEmlILi25ELi10ELb1ELS0_5ELS1_3ELi0EEENS2_5RTypeIXT_EXT0_EXT1_EE4multERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !78, i32 1290, metadata !285, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !111, metadata !284, metadata !90, i32 1290} ; [ DW_TAG_subprogram ]
!1537 = metadata !{i32 86, i32 13, metadata !1472, null}
!1538 = metadata !{i32 66, i32 2, metadata !1472, null}
!1539 = metadata !{i32 786688, metadata !1513, metadata !"__Val2__", metadata !78, i32 673, metadata !85, i32 0, metadata !1540} ; [ DW_TAG_auto_variable ]
!1540 = metadata !{i32 771, i32 5, metadata !1519, metadata !1541}
!1541 = metadata !{i32 1330, i32 0, metadata !1531, metadata !1542}
!1542 = metadata !{i32 75, i32 15, metadata !1472, null}
!1543 = metadata !{i32 673, i32 0, metadata !1513, metadata !1540}
!1544 = metadata !{i32 677, i32 13, metadata !1545, metadata !1549}
!1545 = metadata !{i32 786443, metadata !1546, i32 661, i32 115, metadata !78, i32 20} ; [ DW_TAG_lexical_block ]
!1546 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<26, 11, true, 5, 3, 0>", metadata !"ap_fixed_base<26, 11, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi26ELi11ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !78, i32 661, metadata !1547, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !594, null, metadata !90, i32 661} ; [ DW_TAG_subprogram ]
!1547 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1548, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1548 = metadata !{null, metadata !99, metadata !592}
!1549 = metadata !{i32 333, i32 59, metadata !1550, metadata !1551}
!1550 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed<26, 11, true, 5, 3, 0>", metadata !"ap_fixed<26, 11, true, 5, 3, 0>", metadata !"_ZN8ap_fixedILi25ELi10EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi26ELi11ELb1ELS0_5ELS1_3ELi0EEERK13ap_fixed_baseIXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !74, i32 332, metadata !1385, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !594, metadata !1384, metadata !90, i32 333} ; [ DW_TAG_subprogram ]
!1551 = metadata !{i32 333, i32 60, metadata !1552, metadata !1542}
!1552 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed<26, 11, true, 5, 3, 0>", metadata !"ap_fixed<26, 11, true, 5, 3, 0>", metadata !"_ZN8ap_fixedILi25ELi10EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi26ELi11ELb1ELS0_5ELS1_3ELi0EEERK13ap_fixed_baseIXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !74, i32 332, metadata !1385, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !594, metadata !1384, metadata !90, i32 333} ; [ DW_TAG_subprogram ]
!1553 = metadata !{i32 790529, metadata !1554, metadata !"pid_addsub.V", null, i32 55, metadata !1451, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1554 = metadata !{i32 786688, metadata !1472, metadata !"pid_addsub", metadata !67, i32 55, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1555 = metadata !{i32 382, i32 9, metadata !1484, metadata !1542}
!1556 = metadata !{i32 1884, i32 0, metadata !1557, metadata !1559}
!1557 = metadata !{i32 786443, metadata !1558, i32 1884, i32 230, metadata !78, i32 18} ; [ DW_TAG_lexical_block ]
!1558 = metadata !{i32 786478, i32 0, null, metadata !"operator><25, 10, true, 5, 3, 0>", metadata !"operator><25, 10, true, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEgtILi25ELi10ELb1ELS0_5ELS1_3ELi0EEEbRKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !78, i32 1884, metadata !1316, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !111, metadata !1315, metadata !90, i32 1884} ; [ DW_TAG_subprogram ]
!1559 = metadata !{i32 76, i32 7, metadata !1472, null}
!1560 = metadata !{i32 790529, metadata !1561, metadata !"e.V", null, i32 52, metadata !1451, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1561 = metadata !{i32 786688, metadata !1472, metadata !"e", metadata !67, i32 52, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1562 = metadata !{i32 382, i32 9, metadata !1484, metadata !1559}
!1563 = metadata !{i32 1886, i32 0, metadata !1564, metadata !1566}
!1564 = metadata !{i32 786443, metadata !1565, i32 1886, i32 230, metadata !78, i32 17} ; [ DW_TAG_lexical_block ]
!1565 = metadata !{i32 786478, i32 0, null, metadata !"operator<<25, 10, true, 5, 3, 0>", metadata !"operator<<25, 10, true, 5, 3, 0>", metadata !"_ZNK13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEltILi25ELi10ELb1ELS0_5ELS1_3ELi0EEEbRKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !78, i32 1886, metadata !1316, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !111, metadata !1318, metadata !90, i32 1886} ; [ DW_TAG_subprogram ]
!1566 = metadata !{i32 77, i32 7, metadata !1472, null}
!1567 = metadata !{i32 382, i32 9, metadata !1484, metadata !1566}
!1568 = metadata !{i32 1293, i32 9, metadata !1535, metadata !1569}
!1569 = metadata !{i32 79, i32 13, metadata !1472, null}
!1570 = metadata !{i32 790529, metadata !1571, metadata !"OP1.V", null, i32 1292, metadata !1787, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1571 = metadata !{i32 786688, metadata !1535, metadata !"OP1", metadata !78, i32 1292, metadata !1572, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1572 = metadata !{i32 786434, null, metadata !"ap_int_base<50, true, true>", metadata !117, i32 1398, i64 64, i64 64, i32 0, i32 0, null, metadata !1573, i32 0, null, metadata !1786} ; [ DW_TAG_class_type ]
!1573 = metadata !{metadata !1574, metadata !1575, metadata !1579, metadata !1582, metadata !1585, metadata !1588, metadata !1591, metadata !1594, metadata !1597, metadata !1600, metadata !1603, metadata !1606, metadata !1609, metadata !1612, metadata !1615, metadata !1618, metadata !1621, metadata !1624, metadata !1629, metadata !1634, metadata !1635, metadata !1636, metadata !1640, metadata !1641, metadata !1644, metadata !1647, metadata !1650, metadata !1653, metadata !1656, metadata !1659, metadata !1662, metadata !1665, metadata !1668, metadata !1671, metadata !1680, metadata !1683, metadata !1686, metadata !1689, metadata !1692, metadata !1695, metadata !1698, metadata !1701, metadata !1704, metadata !1705, metadata !1710, metadata !1713, metadata !1714, metadata !1715, metadata !1716, metadata !1717, metadata !1718, metadata !1721, metadata !1722, metadata !1725, metadata !1726, metadata !1727, metadata !1728, metadata !1729, metadata !1730, metadata !1733, metadata !1734, metadata !1735, metadata !1738, metadata !1739, metadata !1742, metadata !1743, metadata !1747, metadata !1751, metadata !1752, metadata !1755, metadata !1756, metadata !1760, metadata !1761, metadata !1762, metadata !1763, metadata !1766, metadata !1767, metadata !1768, metadata !1769, metadata !1770, metadata !1771, metadata !1772, metadata !1773, metadata !1774, metadata !1775, metadata !1776, metadata !1777, metadata !1780, metadata !1783}
!1574 = metadata !{i32 786460, metadata !1572, null, metadata !117, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !294} ; [ DW_TAG_inheritance ]
!1575 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1439, metadata !1576, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1439} ; [ DW_TAG_subprogram ]
!1576 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1577, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1577 = metadata !{null, metadata !1578}
!1578 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1572} ; [ DW_TAG_pointer_type ]
!1579 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1461, metadata !1580, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1461} ; [ DW_TAG_subprogram ]
!1580 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1581, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1581 = metadata !{null, metadata !1578, metadata !70}
!1582 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1462, metadata !1583, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1462} ; [ DW_TAG_subprogram ]
!1583 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1584, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1584 = metadata !{null, metadata !1578, metadata !146}
!1585 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1463, metadata !1586, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1463} ; [ DW_TAG_subprogram ]
!1586 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1587, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1587 = metadata !{null, metadata !1578, metadata !150}
!1588 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1464, metadata !1589, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1464} ; [ DW_TAG_subprogram ]
!1589 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1590, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1590 = metadata !{null, metadata !1578, metadata !154}
!1591 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1465, metadata !1592, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1465} ; [ DW_TAG_subprogram ]
!1592 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1593, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1593 = metadata !{null, metadata !1578, metadata !158}
!1594 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1466, metadata !1595, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1466} ; [ DW_TAG_subprogram ]
!1595 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1596, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1596 = metadata !{null, metadata !1578, metadata !94}
!1597 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1467, metadata !1598, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1467} ; [ DW_TAG_subprogram ]
!1598 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1599, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1599 = metadata !{null, metadata !1578, metadata !165}
!1600 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1468, metadata !1601, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1468} ; [ DW_TAG_subprogram ]
!1601 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1602, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1602 = metadata !{null, metadata !1578, metadata !169}
!1603 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1469, metadata !1604, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1469} ; [ DW_TAG_subprogram ]
!1604 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1605, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1605 = metadata !{null, metadata !1578, metadata !173}
!1606 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1470, metadata !1607, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1470} ; [ DW_TAG_subprogram ]
!1607 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1608, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1608 = metadata !{null, metadata !1578, metadata !177}
!1609 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1471, metadata !1610, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1471} ; [ DW_TAG_subprogram ]
!1610 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1611, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1611 = metadata !{null, metadata !1578, metadata !182}
!1612 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1472, metadata !1613, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1472} ; [ DW_TAG_subprogram ]
!1613 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1614, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1614 = metadata !{null, metadata !1578, metadata !200}
!1615 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1473, metadata !1616, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !90, i32 1473} ; [ DW_TAG_subprogram ]
!1616 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1617, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1617 = metadata !{null, metadata !1578, metadata !196}
!1618 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1500, metadata !1619, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1500} ; [ DW_TAG_subprogram ]
!1619 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1620, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1620 = metadata !{null, metadata !1578, metadata !187}
!1621 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !117, i32 1507, metadata !1622, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1507} ; [ DW_TAG_subprogram ]
!1622 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1623, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1623 = metadata !{null, metadata !1578, metadata !187, metadata !146}
!1624 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi50ELb1ELb1EE4readEv", metadata !117, i32 1528, metadata !1625, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1528} ; [ DW_TAG_subprogram ]
!1625 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1626, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1626 = metadata !{metadata !1572, metadata !1627}
!1627 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1628} ; [ DW_TAG_pointer_type ]
!1628 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1572} ; [ DW_TAG_volatile_type ]
!1629 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi50ELb1ELb1EE5writeERKS0_", metadata !117, i32 1534, metadata !1630, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1534} ; [ DW_TAG_subprogram ]
!1630 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1631, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1631 = metadata !{null, metadata !1627, metadata !1632}
!1632 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1633} ; [ DW_TAG_reference_type ]
!1633 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1572} ; [ DW_TAG_const_type ]
!1634 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi50ELb1ELb1EEaSERVKS0_", metadata !117, i32 1546, metadata !1630, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1546} ; [ DW_TAG_subprogram ]
!1635 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi50ELb1ELb1EEaSERKS0_", metadata !117, i32 1555, metadata !1630, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1555} ; [ DW_TAG_subprogram ]
!1636 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEaSERVKS0_", metadata !117, i32 1578, metadata !1637, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1578} ; [ DW_TAG_subprogram ]
!1637 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1638, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1638 = metadata !{metadata !1639, metadata !1578, metadata !1632}
!1639 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1572} ; [ DW_TAG_reference_type ]
!1640 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEaSERKS0_", metadata !117, i32 1583, metadata !1637, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1583} ; [ DW_TAG_subprogram ]
!1641 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEaSEPKc", metadata !117, i32 1587, metadata !1642, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1587} ; [ DW_TAG_subprogram ]
!1642 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1643, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1643 = metadata !{metadata !1639, metadata !1578, metadata !187}
!1644 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE3setEPKca", metadata !117, i32 1595, metadata !1645, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1595} ; [ DW_TAG_subprogram ]
!1645 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1646, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1646 = metadata !{metadata !1639, metadata !1578, metadata !187, metadata !146}
!1647 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEaSEc", metadata !117, i32 1609, metadata !1648, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1609} ; [ DW_TAG_subprogram ]
!1648 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1649, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1649 = metadata !{metadata !1639, metadata !1578, metadata !142}
!1650 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEaSEh", metadata !117, i32 1610, metadata !1651, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1610} ; [ DW_TAG_subprogram ]
!1651 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1652, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1652 = metadata !{metadata !1639, metadata !1578, metadata !150}
!1653 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEaSEs", metadata !117, i32 1611, metadata !1654, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1611} ; [ DW_TAG_subprogram ]
!1654 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1655, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1655 = metadata !{metadata !1639, metadata !1578, metadata !154}
!1656 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEaSEt", metadata !117, i32 1612, metadata !1657, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1612} ; [ DW_TAG_subprogram ]
!1657 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1658, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1658 = metadata !{metadata !1639, metadata !1578, metadata !158}
!1659 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEaSEi", metadata !117, i32 1613, metadata !1660, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1613} ; [ DW_TAG_subprogram ]
!1660 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1661, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1661 = metadata !{metadata !1639, metadata !1578, metadata !94}
!1662 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEaSEj", metadata !117, i32 1614, metadata !1663, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1614} ; [ DW_TAG_subprogram ]
!1663 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1664, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1664 = metadata !{metadata !1639, metadata !1578, metadata !165}
!1665 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEaSEx", metadata !117, i32 1615, metadata !1666, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1615} ; [ DW_TAG_subprogram ]
!1666 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1667, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1667 = metadata !{metadata !1639, metadata !1578, metadata !177}
!1668 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEaSEy", metadata !117, i32 1616, metadata !1669, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1616} ; [ DW_TAG_subprogram ]
!1669 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1670, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1670 = metadata !{metadata !1639, metadata !1578, metadata !182}
!1671 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator long long", metadata !"operator long long", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EEcvxEv", metadata !117, i32 1654, metadata !1672, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1654} ; [ DW_TAG_subprogram ]
!1672 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1673, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1673 = metadata !{metadata !1674, metadata !1679}
!1674 = metadata !{i32 786454, metadata !1572, metadata !"RetType", metadata !117, i32 1403, i64 0, i64 0, i64 0, i32 0, metadata !1675} ; [ DW_TAG_typedef ]
!1675 = metadata !{i32 786454, metadata !1676, metadata !"Type", metadata !117, i32 1360, i64 0, i64 0, i64 0, i32 0, metadata !177} ; [ DW_TAG_typedef ]
!1676 = metadata !{i32 786434, null, metadata !"retval<7, true>", metadata !117, i32 1359, i64 8, i64 8, i32 0, i32 0, null, metadata !289, i32 0, null, metadata !1677} ; [ DW_TAG_class_type ]
!1677 = metadata !{metadata !1678, metadata !95}
!1678 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !94, i64 7, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!1679 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1633} ; [ DW_TAG_pointer_type ]
!1680 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE7to_boolEv", metadata !117, i32 1660, metadata !1681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1660} ; [ DW_TAG_subprogram ]
!1681 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1682, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1682 = metadata !{metadata !70, metadata !1679}
!1683 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE6to_intEv", metadata !117, i32 1661, metadata !1684, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1661} ; [ DW_TAG_subprogram ]
!1684 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1685, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1685 = metadata !{metadata !94, metadata !1679}
!1686 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE7to_uintEv", metadata !117, i32 1662, metadata !1687, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1662} ; [ DW_TAG_subprogram ]
!1687 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1688, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1688 = metadata !{metadata !165, metadata !1679}
!1689 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE7to_longEv", metadata !117, i32 1663, metadata !1690, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1663} ; [ DW_TAG_subprogram ]
!1690 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1691, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1691 = metadata !{metadata !169, metadata !1679}
!1692 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE8to_ulongEv", metadata !117, i32 1664, metadata !1693, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1664} ; [ DW_TAG_subprogram ]
!1693 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1694, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1694 = metadata !{metadata !173, metadata !1679}
!1695 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE8to_int64Ev", metadata !117, i32 1665, metadata !1696, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1665} ; [ DW_TAG_subprogram ]
!1696 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1697, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1697 = metadata !{metadata !177, metadata !1679}
!1698 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE9to_uint64Ev", metadata !117, i32 1666, metadata !1699, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1666} ; [ DW_TAG_subprogram ]
!1699 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1700, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1700 = metadata !{metadata !182, metadata !1679}
!1701 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE9to_doubleEv", metadata !117, i32 1667, metadata !1702, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1667} ; [ DW_TAG_subprogram ]
!1702 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1703, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1703 = metadata !{metadata !196, metadata !1679}
!1704 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE6lengthEv", metadata !117, i32 1680, metadata !1684, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1680} ; [ DW_TAG_subprogram ]
!1705 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi50ELb1ELb1EE6lengthEv", metadata !117, i32 1681, metadata !1706, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1681} ; [ DW_TAG_subprogram ]
!1706 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1707, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1707 = metadata !{metadata !94, metadata !1708}
!1708 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !1709} ; [ DW_TAG_pointer_type ]
!1709 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !1628} ; [ DW_TAG_const_type ]
!1710 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE7reverseEv", metadata !117, i32 1686, metadata !1711, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1686} ; [ DW_TAG_subprogram ]
!1711 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1712, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1712 = metadata !{metadata !1639, metadata !1578}
!1713 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE6iszeroEv", metadata !117, i32 1692, metadata !1681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1692} ; [ DW_TAG_subprogram ]
!1714 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE7is_zeroEv", metadata !117, i32 1697, metadata !1681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1697} ; [ DW_TAG_subprogram ]
!1715 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE4signEv", metadata !117, i32 1702, metadata !1681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1702} ; [ DW_TAG_subprogram ]
!1716 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE5clearEi", metadata !117, i32 1710, metadata !1595, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1710} ; [ DW_TAG_subprogram ]
!1717 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE6invertEi", metadata !117, i32 1716, metadata !1595, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1716} ; [ DW_TAG_subprogram ]
!1718 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE4testEi", metadata !117, i32 1724, metadata !1719, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1724} ; [ DW_TAG_subprogram ]
!1719 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1720, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1720 = metadata !{metadata !70, metadata !1679, metadata !94}
!1721 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE3setEi", metadata !117, i32 1730, metadata !1595, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1730} ; [ DW_TAG_subprogram ]
!1722 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE3setEib", metadata !117, i32 1736, metadata !1723, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1736} ; [ DW_TAG_subprogram ]
!1723 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1724, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1724 = metadata !{null, metadata !1578, metadata !94, metadata !70}
!1725 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE7lrotateEi", metadata !117, i32 1743, metadata !1595, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1743} ; [ DW_TAG_subprogram ]
!1726 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE7rrotateEi", metadata !117, i32 1752, metadata !1595, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1752} ; [ DW_TAG_subprogram ]
!1727 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE7set_bitEib", metadata !117, i32 1760, metadata !1723, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1760} ; [ DW_TAG_subprogram ]
!1728 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE7get_bitEi", metadata !117, i32 1765, metadata !1719, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1765} ; [ DW_TAG_subprogram ]
!1729 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE5b_notEv", metadata !117, i32 1770, metadata !1576, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1770} ; [ DW_TAG_subprogram ]
!1730 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE17countLeadingZerosEv", metadata !117, i32 1777, metadata !1731, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1777} ; [ DW_TAG_subprogram ]
!1731 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1732, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1732 = metadata !{metadata !94, metadata !1578}
!1733 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEppEv", metadata !117, i32 1834, metadata !1711, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1834} ; [ DW_TAG_subprogram ]
!1734 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEmmEv", metadata !117, i32 1838, metadata !1711, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1838} ; [ DW_TAG_subprogram ]
!1735 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEppEi", metadata !117, i32 1846, metadata !1736, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1846} ; [ DW_TAG_subprogram ]
!1736 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1737, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1737 = metadata !{metadata !1633, metadata !1578, metadata !94}
!1738 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEmmEi", metadata !117, i32 1851, metadata !1736, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1851} ; [ DW_TAG_subprogram ]
!1739 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EEpsEv", metadata !117, i32 1860, metadata !1740, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1860} ; [ DW_TAG_subprogram ]
!1740 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1741, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1741 = metadata !{metadata !1572, metadata !1679}
!1742 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EEntEv", metadata !117, i32 1866, metadata !1681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1866} ; [ DW_TAG_subprogram ]
!1743 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EEngEv", metadata !117, i32 1871, metadata !1744, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 1871} ; [ DW_TAG_subprogram ]
!1744 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1745, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1745 = metadata !{metadata !1746, metadata !1679}
!1746 = metadata !{i32 786434, null, metadata !"ap_int_base<51, true, true>", metadata !117, i32 651, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1747 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE5rangeEii", metadata !117, i32 2001, metadata !1748, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2001} ; [ DW_TAG_subprogram ]
!1748 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1749, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1749 = metadata !{metadata !1750, metadata !1578, metadata !94, metadata !94}
!1750 = metadata !{i32 786434, null, metadata !"ap_range_ref<50, true>", metadata !117, i32 924, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1751 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEclEii", metadata !117, i32 2007, metadata !1748, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2007} ; [ DW_TAG_subprogram ]
!1752 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE5rangeEii", metadata !117, i32 2013, metadata !1753, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2013} ; [ DW_TAG_subprogram ]
!1753 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1754, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1754 = metadata !{metadata !1750, metadata !1679, metadata !94, metadata !94}
!1755 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EEclEii", metadata !117, i32 2019, metadata !1753, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2019} ; [ DW_TAG_subprogram ]
!1756 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EEixEi", metadata !117, i32 2038, metadata !1757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2038} ; [ DW_TAG_subprogram ]
!1757 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1758, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1758 = metadata !{metadata !1759, metadata !1578, metadata !94}
!1759 = metadata !{i32 786434, null, metadata !"ap_bit_ref<50, true>", metadata !117, i32 1194, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!1760 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EEixEi", metadata !117, i32 2052, metadata !1719, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2052} ; [ DW_TAG_subprogram ]
!1761 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE3bitEi", metadata !117, i32 2066, metadata !1757, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2066} ; [ DW_TAG_subprogram ]
!1762 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE3bitEi", metadata !117, i32 2080, metadata !1719, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2080} ; [ DW_TAG_subprogram ]
!1763 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE10and_reduceEv", metadata !117, i32 2260, metadata !1764, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2260} ; [ DW_TAG_subprogram ]
!1764 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1765, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1765 = metadata !{metadata !70, metadata !1578}
!1766 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE11nand_reduceEv", metadata !117, i32 2263, metadata !1764, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2263} ; [ DW_TAG_subprogram ]
!1767 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE9or_reduceEv", metadata !117, i32 2266, metadata !1764, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2266} ; [ DW_TAG_subprogram ]
!1768 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE10nor_reduceEv", metadata !117, i32 2269, metadata !1764, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2269} ; [ DW_TAG_subprogram ]
!1769 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE10xor_reduceEv", metadata !117, i32 2272, metadata !1764, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2272} ; [ DW_TAG_subprogram ]
!1770 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi50ELb1ELb1EE11xnor_reduceEv", metadata !117, i32 2275, metadata !1764, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2275} ; [ DW_TAG_subprogram ]
!1771 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE10and_reduceEv", metadata !117, i32 2279, metadata !1681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2279} ; [ DW_TAG_subprogram ]
!1772 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE11nand_reduceEv", metadata !117, i32 2282, metadata !1681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2282} ; [ DW_TAG_subprogram ]
!1773 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE9or_reduceEv", metadata !117, i32 2285, metadata !1681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2285} ; [ DW_TAG_subprogram ]
!1774 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE10nor_reduceEv", metadata !117, i32 2288, metadata !1681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2288} ; [ DW_TAG_subprogram ]
!1775 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE10xor_reduceEv", metadata !117, i32 2291, metadata !1681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2291} ; [ DW_TAG_subprogram ]
!1776 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE11xnor_reduceEv", metadata !117, i32 2294, metadata !1681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2294} ; [ DW_TAG_subprogram ]
!1777 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !117, i32 2301, metadata !1778, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2301} ; [ DW_TAG_subprogram ]
!1778 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1779, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1779 = metadata !{null, metadata !1679, metadata !545, metadata !94, metadata !546, metadata !70}
!1780 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE9to_stringE8BaseModeb", metadata !117, i32 2328, metadata !1781, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2328} ; [ DW_TAG_subprogram ]
!1781 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1782, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1782 = metadata !{metadata !545, metadata !1679, metadata !546, metadata !70}
!1783 = metadata !{i32 786478, i32 0, metadata !1572, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi50ELb1ELb1EE9to_stringEab", metadata !117, i32 2332, metadata !1784, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !90, i32 2332} ; [ DW_TAG_subprogram ]
!1784 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1785, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1785 = metadata !{metadata !545, metadata !1679, metadata !146, metadata !70}
!1786 = metadata !{metadata !557, metadata !95, metadata !1082}
!1787 = metadata !{i32 786438, null, metadata !"ap_int_base<50, true, true>", metadata !117, i32 1398, i64 50, i64 64, i32 0, i32 0, null, metadata !1788, i32 0, null, metadata !1786} ; [ DW_TAG_class_field_type ]
!1788 = metadata !{metadata !1789}
!1789 = metadata !{i32 786438, null, metadata !"ssdm_int<50 + 1024 * 0, true>", metadata !82, i32 52, i64 50, i64 64, i32 0, i32 0, null, metadata !1790, i32 0, null, metadata !302} ; [ DW_TAG_class_field_type ]
!1790 = metadata !{metadata !296}
!1791 = metadata !{i32 1295, i32 9, metadata !1535, metadata !1569}
!1792 = metadata !{i32 790529, metadata !1793, metadata !"OP2.V", null, i32 1294, metadata !1787, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1793 = metadata !{i32 786688, metadata !1535, metadata !"OP2", metadata !78, i32 1294, metadata !1572, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1794 = metadata !{i32 1296, i32 9, metadata !1535, metadata !1569}
!1795 = metadata !{i32 786688, metadata !1796, metadata !"__Val2__", metadata !78, i32 673, metadata !297, i32 0, metadata !1801} ; [ DW_TAG_auto_variable ]
!1796 = metadata !{i32 786443, metadata !1797, i32 673, i32 25, metadata !78, i32 9} ; [ DW_TAG_lexical_block ]
!1797 = metadata !{i32 786443, metadata !1798, i32 661, i32 115, metadata !78, i32 8} ; [ DW_TAG_lexical_block ]
!1798 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed_base<50, 20, true, 5, 3, 0>", metadata !"ap_fixed_base<50, 20, true, 5, 3, 0>", metadata !"_ZN13ap_fixed_baseILi25ELi10ELb1EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi50ELi20ELb1ELS0_5ELS1_3ELi0EEERKS_IXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !78, i32 661, metadata !1799, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !319, null, metadata !90, i32 661} ; [ DW_TAG_subprogram ]
!1799 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1800, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!1800 = metadata !{null, metadata !99, metadata !317}
!1801 = metadata !{i32 333, i32 59, metadata !1802, metadata !1803}
!1802 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed<50, 20, true, 5, 3, 0>", metadata !"ap_fixed<50, 20, true, 5, 3, 0>", metadata !"_ZN8ap_fixedILi25ELi10EL9ap_q_mode5EL9ap_o_mode3ELi0EEC2ILi50ELi20ELb1ELS0_5ELS1_3ELi0EEERK13ap_fixed_baseIXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !74, i32 332, metadata !1382, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !319, metadata !1381, metadata !90, i32 333} ; [ DW_TAG_subprogram ]
!1803 = metadata !{i32 333, i32 60, metadata !1804, metadata !1569}
!1804 = metadata !{i32 786478, i32 0, null, metadata !"ap_fixed<50, 20, true, 5, 3, 0>", metadata !"ap_fixed<50, 20, true, 5, 3, 0>", metadata !"_ZN8ap_fixedILi25ELi10EL9ap_q_mode5EL9ap_o_mode3ELi0EEC1ILi50ELi20ELb1ELS0_5ELS1_3ELi0EEERK13ap_fixed_baseIXT_EXT0_EXT1_EXT2_EXT3_EXT4_EE", metadata !74, i32 332, metadata !1382, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !319, metadata !1381, metadata !90, i32 333} ; [ DW_TAG_subprogram ]
!1805 = metadata !{i32 673, i32 0, metadata !1796, metadata !1801}
!1806 = metadata !{i32 680, i32 17, metadata !1807, metadata !1801}
!1807 = metadata !{i32 786443, metadata !1797, i32 678, i32 30, metadata !78, i32 10} ; [ DW_TAG_lexical_block ]
!1808 = metadata !{i32 1293, i32 9, metadata !1535, metadata !1809}
!1809 = metadata !{i32 80, i32 14, metadata !1472, null}
!1810 = metadata !{i32 1296, i32 9, metadata !1535, metadata !1809}
!1811 = metadata !{i32 786688, metadata !1796, metadata !"__Val2__", metadata !78, i32 673, metadata !297, i32 0, metadata !1812} ; [ DW_TAG_auto_variable ]
!1812 = metadata !{i32 333, i32 59, metadata !1802, metadata !1813}
!1813 = metadata !{i32 333, i32 60, metadata !1804, metadata !1809}
!1814 = metadata !{i32 673, i32 0, metadata !1796, metadata !1812}
!1815 = metadata !{i32 680, i32 17, metadata !1807, metadata !1812}
!1816 = metadata !{i32 790529, metadata !1817, metadata !"pid_mult2.V", null, i32 55, metadata !1451, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1817 = metadata !{i32 786688, metadata !1472, metadata !"pid_mult2", metadata !67, i32 55, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1818 = metadata !{i32 382, i32 9, metadata !1484, metadata !1809}
!1819 = metadata !{i32 1293, i32 9, metadata !1535, metadata !1537}
!1820 = metadata !{i32 1296, i32 9, metadata !1535, metadata !1537}
!1821 = metadata !{i32 786688, metadata !1796, metadata !"__Val2__", metadata !78, i32 673, metadata !297, i32 0, metadata !1822} ; [ DW_TAG_auto_variable ]
!1822 = metadata !{i32 333, i32 59, metadata !1802, metadata !1823}
!1823 = metadata !{i32 333, i32 60, metadata !1804, metadata !1537}
!1824 = metadata !{i32 673, i32 0, metadata !1796, metadata !1822}
!1825 = metadata !{i32 680, i32 17, metadata !1807, metadata !1822}
!1826 = metadata !{i32 786688, metadata !1513, metadata !"__Val2__", metadata !78, i32 673, metadata !85, i32 0, metadata !1529} ; [ DW_TAG_auto_variable ]
!1827 = metadata !{i32 677, i32 13, metadata !1545, metadata !1828}
!1828 = metadata !{i32 333, i32 59, metadata !1550, metadata !1829}
!1829 = metadata !{i32 333, i32 60, metadata !1552, metadata !1533}
!1830 = metadata !{i32 786688, metadata !1513, metadata !"__Val2__", metadata !78, i32 673, metadata !85, i32 0, metadata !1831} ; [ DW_TAG_auto_variable ]
!1831 = metadata !{i32 771, i32 5, metadata !1519, metadata !1832}
!1832 = metadata !{i32 1330, i32 0, metadata !1531, metadata !1833}
!1833 = metadata !{i32 88, i32 15, metadata !1472, null}
!1834 = metadata !{i32 673, i32 0, metadata !1513, metadata !1831}
!1835 = metadata !{i32 677, i32 13, metadata !1545, metadata !1836}
!1836 = metadata !{i32 333, i32 59, metadata !1550, metadata !1837}
!1837 = metadata !{i32 333, i32 60, metadata !1552, metadata !1833}
!1838 = metadata !{i32 786688, metadata !1513, metadata !"__Val2__", metadata !78, i32 673, metadata !85, i32 0, metadata !1525} ; [ DW_TAG_auto_variable ]
!1839 = metadata !{i32 786688, metadata !1513, metadata !"__Val2__", metadata !78, i32 673, metadata !85, i32 0, metadata !1518} ; [ DW_TAG_auto_variable ]
!1840 = metadata !{i32 677, i32 13, metadata !1545, metadata !1841}
!1841 = metadata !{i32 333, i32 59, metadata !1550, metadata !1842}
!1842 = metadata !{i32 333, i32 60, metadata !1552, metadata !1523}
!1843 = metadata !{i32 790529, metadata !1844, metadata !"pid_addsub2.V", null, i32 55, metadata !1451, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1844 = metadata !{i32 786688, metadata !1472, metadata !"pid_addsub2", metadata !67, i32 55, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1845 = metadata !{i32 382, i32 9, metadata !1484, metadata !1523}
!1846 = metadata !{i32 1884, i32 0, metadata !1557, metadata !1847}
!1847 = metadata !{i32 96, i32 8, metadata !1472, null}
!1848 = metadata !{i32 790529, metadata !1849, metadata !"yi.V", null, i32 52, metadata !1451, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1849 = metadata !{i32 786688, metadata !1472, metadata !"yi", metadata !67, i32 52, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1850 = metadata !{i32 382, i32 9, metadata !1484, metadata !1847}
!1851 = metadata !{i32 1886, i32 0, metadata !1564, metadata !1852}
!1852 = metadata !{i32 97, i32 8, metadata !1472, null}
!1853 = metadata !{i32 1293, i32 9, metadata !1535, metadata !1854}
!1854 = metadata !{i32 106, i32 13, metadata !1472, null}
!1855 = metadata !{i32 1296, i32 9, metadata !1535, metadata !1854}
!1856 = metadata !{i32 786688, metadata !1796, metadata !"__Val2__", metadata !78, i32 673, metadata !297, i32 0, metadata !1857} ; [ DW_TAG_auto_variable ]
!1857 = metadata !{i32 333, i32 59, metadata !1802, metadata !1858}
!1858 = metadata !{i32 333, i32 60, metadata !1804, metadata !1854}
!1859 = metadata !{i32 673, i32 0, metadata !1796, metadata !1857}
!1860 = metadata !{i32 680, i32 17, metadata !1807, metadata !1857}
!1861 = metadata !{i32 786688, metadata !1513, metadata !"__Val2__", metadata !78, i32 673, metadata !85, i32 0, metadata !1862} ; [ DW_TAG_auto_variable ]
!1862 = metadata !{i32 771, i32 5, metadata !1519, metadata !1863}
!1863 = metadata !{i32 1329, i32 0, metadata !1521, metadata !1864}
!1864 = metadata !{i32 107, i32 18, metadata !1472, null}
!1865 = metadata !{i32 673, i32 0, metadata !1513, metadata !1862}
!1866 = metadata !{i32 786688, metadata !1513, metadata !"__Val2__", metadata !78, i32 673, metadata !85, i32 0, metadata !1867} ; [ DW_TAG_auto_variable ]
!1867 = metadata !{i32 771, i32 5, metadata !1519, metadata !1868}
!1868 = metadata !{i32 1329, i32 0, metadata !1521, metadata !1869}
!1869 = metadata !{i32 108, i32 15, metadata !1472, null}
!1870 = metadata !{i32 673, i32 0, metadata !1513, metadata !1867}
!1871 = metadata !{i32 677, i32 13, metadata !1545, metadata !1872}
!1872 = metadata !{i32 333, i32 59, metadata !1550, metadata !1873}
!1873 = metadata !{i32 333, i32 60, metadata !1552, metadata !1869}
!1874 = metadata !{i32 382, i32 9, metadata !1484, metadata !1869}
!1875 = metadata !{i32 1884, i32 0, metadata !1557, metadata !1876}
!1876 = metadata !{i32 109, i32 9, metadata !1472, null}
!1877 = metadata !{i32 790529, metadata !1878, metadata !"tmp.V", null, i32 54, metadata !1451, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!1878 = metadata !{i32 786688, metadata !1472, metadata !"tmp", metadata !67, i32 54, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!1879 = metadata !{i32 382, i32 9, metadata !1484, metadata !1876}
!1880 = metadata !{i32 1886, i32 0, metadata !1564, metadata !1881}
!1881 = metadata !{i32 110, i32 9, metadata !1472, null}
!1882 = metadata !{i32 382, i32 9, metadata !1484, metadata !1881}
!1883 = metadata !{i32 790531, metadata !1884, metadata !"ssdm_int<25 + 1024 * 0, true>[0].V", null, i32 380, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1884 = metadata !{i32 786689, metadata !1475, metadata !"this", metadata !74, i32 16777596, metadata !1885, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!1885 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ]
!1886 = metadata !{i32 380, i32 53, metadata !1475, metadata !1887}
!1887 = metadata !{i32 111, i32 5, metadata !1472, null}
!1888 = metadata !{i32 790531, metadata !1884, metadata !"ssdm_int<25 + 1024 * 0, true>[1].V", null, i32 380, metadata !1450, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!1889 = metadata !{i32 382, i32 9, metadata !1484, metadata !1887}
!1890 = metadata !{i32 382, i32 9, metadata !1484, metadata !1891}
!1891 = metadata !{i32 112, i32 2, metadata !1472, null}
!1892 = metadata !{i32 382, i32 9, metadata !1484, metadata !1893}
!1893 = metadata !{i32 71, i32 4, metadata !1894, null}
!1894 = metadata !{i32 786443, metadata !1472, i32 67, i32 2, metadata !67, i32 1} ; [ DW_TAG_lexical_block ]
!1895 = metadata !{i32 382, i32 9, metadata !1484, metadata !1896}
!1896 = metadata !{i32 70, i32 4, metadata !1894, null}
!1897 = metadata !{i32 382, i32 9, metadata !1484, metadata !1898}
!1898 = metadata !{i32 69, i32 4, metadata !1894, null}
!1899 = metadata !{i32 382, i32 9, metadata !1484, metadata !1900}
!1900 = metadata !{i32 68, i32 4, metadata !1894, null}
!1901 = metadata !{i32 118, i32 2, metadata !1472, null}
