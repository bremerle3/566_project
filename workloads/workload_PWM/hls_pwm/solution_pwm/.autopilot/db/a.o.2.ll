; ModuleID = '/home/warehouse/lbremer/ese566/workload_PWM/hls_pwm/solution_pwm/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"ap_ctrl_hs_ce\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=6 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [4 x i8] c"mul\00", align 1 ; [#uses=1 type=[4 x i8]*]
@str = internal constant [8 x i8] c"gen_pwm\00"   ; [#uses=1 type=[8 x i8]*]

; [#uses=0]
define void @gen_pwm(i32 %duty, i32 %freq, i1* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %duty) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %freq) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out) nounwind, !map !36
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32 %duty}, i64 0, metadata !42), !dbg !43 ; [debug line = 2:20] [debug variable = duty]
  call void @llvm.dbg.value(metadata !{i32 %freq}, i64 0, metadata !44), !dbg !45 ; [debug line = 2:32] [debug variable = freq]
  call void @llvm.dbg.value(metadata !{i1* %out}, i64 0, metadata !46), !dbg !47 ; [debug line = 2:45] [debug variable = out]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [14 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !48 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @.str2, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !48 ; [debug line = 4:1]
  br label %1, !dbg !50                           ; [debug line = 5:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i31 [ 0, %0 ], [ %i.1, %2 ]            ; [#uses=2 type=i31]
  %i.cast = zext i31 %i to i32, !dbg !50          ; [#uses=2 type=i32] [debug line = 5:9]
  %tmp = icmp slt i32 %i.cast, %freq, !dbg !50    ; [#uses=1 type=i1] [debug line = 5:9]
  br i1 %tmp, label %2, label %3, !dbg !50        ; [debug line = 5:9]

; <label>:2                                       ; preds = %1
  %tmp.1 = icmp slt i32 %i.cast, %duty, !dbg !52  ; [#uses=1 type=i1] [debug line = 7:8]
  store i1 %tmp.1, i1* %out, align 1, !dbg !54    ; [debug line = 8:12]
  %i.1 = add i31 %i, 1, !dbg !55                  ; [#uses=1 type=i31] [debug line = 5:20]
  call void @llvm.dbg.value(metadata !{i31 %i.1}, i64 0, metadata !56), !dbg !55 ; [debug line = 5:20] [debug variable = i]
  br label %1, !dbg !55                           ; [debug line = 5:20]

; <label>:3                                       ; preds = %1
  ret void, !dbg !57                              ; [debug line = 12:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecResourceLimit(...) nounwind

; [#uses=4]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=3]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/warehouse/lbremer/ese566/workload_PWM/hls_pwm/solution_pwm/.autopilot/db/gen_pwm.pragma.2.c", metadata !"/home/warehouse/lbremer/ese566/workload_PWM", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !16} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"gen_pwm", metadata !"gen_pwm", metadata !"", metadata !6, i32 2, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i1*)* @gen_pwm, null, null, metadata !14, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"./gen_pwm.c", metadata !"/home/warehouse/lbremer/ese566/workload_PWM", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !11}
!9 = metadata !{i32 786454, null, metadata !"int32", metadata !6, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786468, null, metadata !"int32", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ]
!12 = metadata !{i32 786454, null, metadata !"int1", metadata !6, i32 3, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!13 = metadata !{i32 786468, null, metadata !"int1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !18, metadata !21, metadata !22, metadata !23}
!18 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !19, i32 321, metadata !20, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/warehouse/lbremer/ese566/workload_PWM", null} ; [ DW_TAG_file_type ]
!20 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !19, i32 319, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!21 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !19, i32 322, metadata !20, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!22 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !19, i32 323, metadata !20, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !24, i32 26, metadata !25, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786473, metadata !"/usr/include/bits/sys_errlist.h", metadata !"/home/warehouse/lbremer/ese566/workload_PWM", null} ; [ DW_TAG_file_type ]
!25 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 31, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"duty", metadata !30, metadata !"int32", i32 0, i32 31}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 0, i32 0}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"freq", metadata !30, metadata !"int32", i32 0, i32 31}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 0, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"out", metadata !40, metadata !"int1", i32 0, i32 0}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 0, i32 1}
!42 = metadata !{i32 786689, metadata !5, metadata !"duty", metadata !6, i32 16777218, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!43 = metadata !{i32 2, i32 20, metadata !5, null}
!44 = metadata !{i32 786689, metadata !5, metadata !"freq", metadata !6, i32 33554434, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 2, i32 32, metadata !5, null}
!46 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 50331650, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!47 = metadata !{i32 2, i32 45, metadata !5, null}
!48 = metadata !{i32 4, i32 1, metadata !49, null}
!49 = metadata !{i32 786443, metadata !5, i32 3, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 5, i32 9, metadata !51, null}
!51 = metadata !{i32 786443, metadata !49, i32 5, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 7, i32 8, metadata !53, null}
!53 = metadata !{i32 786443, metadata !51, i32 6, i32 5, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 8, i32 12, metadata !53, null}
!55 = metadata !{i32 5, i32 20, metadata !51, null}
!56 = metadata !{i32 786688, metadata !49, metadata !"i", metadata !6, i32 4, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!57 = metadata !{i32 12, i32 1, metadata !49, null}
