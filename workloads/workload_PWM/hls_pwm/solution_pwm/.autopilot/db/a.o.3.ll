; ModuleID = '/home/warehouse/lbremer/ese566/workload_PWM/hls_pwm/solution_pwm/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [14 x i8] c"ap_ctrl_hs_ce\00", align 1 ; [#uses=1 type=[14 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [4 x i8] c"mul\00", align 1 ; [#uses=1 type=[4 x i8]*]
@str = internal constant [8 x i8] c"gen_pwm\00"   ; [#uses=1 type=[8 x i8]*]

; [#uses=0]
define void @gen_pwm(i32 %duty, i32 %freq, i1* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %duty) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %freq) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  %freq_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %freq) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %freq_read}, i64 0, metadata !16), !dbg !28 ; [debug line = 2:32] [debug variable = freq]
  %duty_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %duty) nounwind ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %duty_read}, i64 0, metadata !29), !dbg !30 ; [debug line = 2:20] [debug variable = duty]
  call void @llvm.dbg.value(metadata !{i32 %duty}, i64 0, metadata !29), !dbg !30 ; [debug line = 2:20] [debug variable = duty]
  call void @llvm.dbg.value(metadata !{i32 %freq}, i64 0, metadata !16), !dbg !28 ; [debug line = 2:32] [debug variable = freq]
  call void @llvm.dbg.value(metadata !{i1* %out}, i64 0, metadata !31), !dbg !32 ; [debug line = 2:45] [debug variable = out]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [14 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !33 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !33 ; [debug line = 4:1]
  br label %1, !dbg !35                           ; [debug line = 5:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i31 [ 0, %0 ], [ %i_1, %2 ]            ; [#uses=2 type=i31]
  %i_cast = zext i31 %i to i32, !dbg !35          ; [#uses=2 type=i32] [debug line = 5:9]
  %tmp = icmp slt i32 %i_cast, %freq_read, !dbg !35 ; [#uses=1 type=i1] [debug line = 5:9]
  %i_1 = add i31 %i, 1, !dbg !37                  ; [#uses=1 type=i31] [debug line = 5:20]
  br i1 %tmp, label %2, label %3, !dbg !35        ; [debug line = 5:9]

; <label>:2                                       ; preds = %1
  %tmp_1 = icmp slt i32 %i_cast, %duty_read, !dbg !38 ; [#uses=1 type=i1] [debug line = 7:8]
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %out, i1 %tmp_1) nounwind, !dbg !40 ; [debug line = 8:12]
  call void @llvm.dbg.value(metadata !{i31 %i_1}, i64 0, metadata !41), !dbg !37 ; [debug line = 5:20] [debug variable = i]
  br label %1, !dbg !37                           ; [debug line = 5:20]

; <label>:3                                       ; preds = %1
  ret void, !dbg !42                              ; [debug line = 12:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecResourceLimit(...) nounwind {
entry:
  ret void
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"duty", metadata !4, metadata !"int32", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 0}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"freq", metadata !4, metadata !"int32", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 0, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"out", metadata !14, metadata !"int1", i32 0, i32 0}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 0, i32 1}
!16 = metadata !{i32 786689, metadata !17, metadata !"freq", metadata !18, i32 33554434, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!17 = metadata !{i32 786478, i32 0, metadata !18, metadata !"gen_pwm", metadata !"gen_pwm", metadata !"", metadata !18, i32 2, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i1*)* @gen_pwm, null, null, metadata !26, i32 3} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786473, metadata !"./gen_pwm.c", metadata !"/home/warehouse/lbremer/ese566/workload_PWM", null} ; [ DW_TAG_file_type ]
!19 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!20 = metadata !{null, metadata !21, metadata !21, metadata !23}
!21 = metadata !{i32 786454, null, metadata !"int32", metadata !18, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_typedef ]
!22 = metadata !{i32 786468, null, metadata !"int32", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ]
!24 = metadata !{i32 786454, null, metadata !"int1", metadata !18, i32 3, i64 0, i64 0, i64 0, i32 0, metadata !25} ; [ DW_TAG_typedef ]
!25 = metadata !{i32 786468, null, metadata !"int1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!28 = metadata !{i32 2, i32 32, metadata !17, null}
!29 = metadata !{i32 786689, metadata !17, metadata !"duty", metadata !18, i32 16777218, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 2, i32 20, metadata !17, null}
!31 = metadata !{i32 786689, metadata !17, metadata !"out", metadata !18, i32 50331650, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!32 = metadata !{i32 2, i32 45, metadata !17, null}
!33 = metadata !{i32 4, i32 1, metadata !34, null}
!34 = metadata !{i32 786443, metadata !17, i32 3, i32 1, metadata !18, i32 0} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 5, i32 9, metadata !36, null}
!36 = metadata !{i32 786443, metadata !34, i32 5, i32 5, metadata !18, i32 1} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 5, i32 20, metadata !36, null}
!38 = metadata !{i32 7, i32 8, metadata !39, null}
!39 = metadata !{i32 786443, metadata !36, i32 6, i32 5, metadata !18, i32 2} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 8, i32 12, metadata !39, null}
!41 = metadata !{i32 786688, metadata !34, metadata !"i", metadata !18, i32 4, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 12, i32 1, metadata !34, null}
