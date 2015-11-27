; ModuleID = '/home/warehouse/lbremer/566_project/workloads/workload_PWM/hls_pwm/solution_pwm/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [14 x i8] c"ap_ctrl_hs_ce\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@str = internal constant [8 x i8] c"gen_pwm\00"

define void @gen_pwm(i32 %duty, i32 %freq, i8* %out_r) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %duty) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %freq) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %out_r) nounwind, !map !10
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @str) nounwind
  %freq_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %freq) nounwind
  %duty_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %duty) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [14 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecResourceLimit(i32 1, [4 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i31 [ 0, %0 ], [ %i_1, %2 ]
  %i_cast = zext i31 %i to i32
  %tmp = icmp slt i32 %i_cast, %freq_read
  %i_1 = add i31 %i, 1
  br i1 %tmp, label %2, label %3

; <label>:2                                       ; preds = %1
  %tmp_1 = icmp slt i32 %i_cast, %duty_read
  %storemerge = zext i1 %tmp_1 to i8
  call void @_ssdm_op_Write.ap_auto.i8P(i8* %out_r, i8 %storemerge) nounwind
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

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

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak void @_ssdm_op_Write.ap_auto.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"duty", metadata !4, metadata !"int", i32 0, i32 31}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 0}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"freq", metadata !4, metadata !"int", i32 0, i32 31}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 7, metadata !12}
!12 = metadata !{metadata !13}
!13 = metadata !{metadata !"out", metadata !14, metadata !"signed char", i32 0, i32 7}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 0, i32 1}
