; ModuleID = '/home/warehouse/lbremer/ese566/workload_PID/hls/fixp/hls_fixedp_pid_prj/solution_fixedp/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [14 x i8] c"ap_ctrl_hs_ce\00", align 1
@p_str4 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@prev_x1_V = internal unnamed_addr global i25 0
@prev_x2_V = internal unnamed_addr global i25 0
@prev_yd_V = internal unnamed_addr global i25 0
@prev_yi_V = internal unnamed_addr global i25 0
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [15 x i8] c"PID_Controller\00"

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecResourceLimit(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

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
  %InitN_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %InitN)
  call void (...)* @_ssdm_op_SpecInterface(i25* %dout_0_V, i25* %dout_1_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [14 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str4, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %Gi_V = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %coeff_0_V)
  %Gd_V = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %coeff_1_V)
  %C_V = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %coeff_2_V)
  %Gp_V = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %coeff_3_V)
  %max_lim_V = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %coeff_4_V)
  %min_lim_V = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %coeff_5_V)
  %p_Val2_s = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %din_0_V)
  %p_Val2_1 = call i25 @_ssdm_op_Read.ap_auto.i25P(i25* %din_1_V)
  %prev_yi_V_load = load i25* @prev_yi_V, align 4
  %prev_x2_V_load = load i25* @prev_x2_V, align 4
  %prev_x1_V_load = load i25* @prev_x1_V, align 4
  %prev_yd_V_load = load i25* @prev_yd_V, align 4
  %p_Val2_12 = select i1 %InitN_read, i25 %prev_yi_V_load, i25 0
  %p_Val2_9 = select i1 %InitN_read, i25 %prev_x2_V_load, i25 0
  %p_Val2_6 = select i1 %InitN_read, i25 %prev_x1_V_load, i25 0
  %prev_yd_V_load_s = select i1 %InitN_read, i25 %prev_yd_V_load, i25 0
  %pid_addsub_V = sub i25 %p_Val2_s, %p_Val2_1
  %tmp_6 = icmp sgt i25 %pid_addsub_V, %max_lim_V
  %e_V = select i1 %tmp_6, i25 %max_lim_V, i25 %pid_addsub_V
  %tmp_7 = icmp slt i25 %pid_addsub_V, %min_lim_V
  %e_V_1 = select i1 %tmp_7, i25 %min_lim_V, i25 %e_V
  %OP1_V = sext i25 %Gd_V to i50
  %OP2_V = sext i25 %e_V_1 to i50
  %p_Val2_2 = mul nsw i50 %OP2_V, %OP1_V
  %p_Val2_5 = call i25 @_ssdm_op_PartSelect.i25.i50.i32.i32(i50 %p_Val2_2, i32 15, i32 39)
  %OP1_V_1 = sext i25 %Gi_V to i50
  %p_Val2_3 = mul nsw i50 %OP2_V, %OP1_V_1
  %pid_mult2_V = call i25 @_ssdm_op_PartSelect.i25.i50.i32.i32(i50 %p_Val2_3, i32 15, i32 39)
  %OP1_V_2 = sext i25 %C_V to i50
  %OP2_V_1 = sext i25 %prev_yd_V_load_s to i50
  %p_Val2_4 = mul nsw i50 %OP2_V_1, %OP1_V_2
  %p_Val2_8 = call i25 @_ssdm_op_PartSelect.i25.i50.i32.i32(i50 %p_Val2_4, i32 15, i32 39)
  %p_Val2_7 = sub i25 %p_Val2_5, %p_Val2_6
  %p_Val2_10 = sub i25 %p_Val2_7, %p_Val2_8
  %tmp = add i25 %pid_mult2_V, %p_Val2_12
  %pid_addsub2_V = add i25 %tmp, %p_Val2_9
  %tmp_1 = icmp sgt i25 %pid_addsub2_V, %max_lim_V
  %yi_V = select i1 %tmp_1, i25 %max_lim_V, i25 %pid_addsub2_V
  %tmp_2 = icmp slt i25 %pid_addsub2_V, %min_lim_V
  %p_Val2_15 = select i1 %tmp_2, i25 %min_lim_V, i25 %yi_V
  %OP1_V_3 = sext i25 %Gp_V to i50
  %p_Val2_13 = mul nsw i50 %OP2_V, %OP1_V_3
  %p_Val2_14 = call i25 @_ssdm_op_PartSelect.i25.i50.i32.i32(i50 %p_Val2_13, i32 15, i32 39)
  %tmp1 = add i25 %p_Val2_10, %p_Val2_14
  %pid_addsub2_V_1 = add i25 %tmp1, %p_Val2_15
  %tmp_4 = icmp sgt i25 %pid_addsub2_V_1, %max_lim_V
  %tmp_V = select i1 %tmp_4, i25 %max_lim_V, i25 %pid_addsub2_V_1
  %tmp_9 = icmp slt i25 %pid_addsub2_V_1, %min_lim_V
  %tmp_V_1 = select i1 %tmp_9, i25 %min_lim_V, i25 %tmp_V
  call void @_ssdm_op_Write.ap_none.i25P(i25* %dout_0_V, i25 %tmp_V_1)
  call void @_ssdm_op_Write.ap_none.i25P(i25* %dout_1_V, i25 %e_V_1)
  store i25 %p_Val2_10, i25* @prev_yd_V, align 4
  store i25 %p_Val2_5, i25* @prev_x1_V, align 4
  store i25 %pid_mult2_V, i25* @prev_x2_V, align 4
  store i25 %p_Val2_15, i25* @prev_yi_V, align 4
  ret void
}

define weak i25 @_ssdm_op_PartSelect.i25.i50.i32.i32(i50, i32, i32) nounwind readnone {
entry:
  %empty = call i50 @llvm.part.select.i50(i50 %0, i32 %1, i32 %2)
  %empty_4 = trunc i50 %empty to i25
  ret i25 %empty_4
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak i25 @_ssdm_op_Read.ap_auto.i25P(i25*) {
entry:
  %empty = load i25* %0
  ret i25 %empty
}

define weak void @_ssdm_op_Write.ap_none.i25P(i25*, i25) {
entry:
  store i25 %1, i25* %0
  ret void
}

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
