.class public final Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Lcom/codemao/creativecenter/customview/CreationRootLayout$DispatchTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewBcmFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewBcmFragment.kt\ncom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1\n*L\n1#1,3510:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 452
    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 454
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_13

    :cond_a
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_37

    .line 455
    :cond_13
    iget-object v1, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getSidebarVM$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, v1, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_27

    :cond_26
    move-object v1, v0

    :goto_27
    if-nez v1, :cond_2a

    goto :goto_37

    :cond_2a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_37

    .line 456
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$defaultDispatchTouchEvent(Lcom/codemao/creativecenter/NewBcmFragment;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_37
    :goto_37
    const/4 v1, 0x0

    if-eqz p1, :cond_3c0

    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_3c0

    .line 461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 464
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardItemVM$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/vm/StageDashboardItemVM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativecenter/vm/StageDashboardItemVM;->getCurrentModel()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2ac

    .line 465
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v3

    if-eqz v3, :cond_60

    iget-object v3, v3, Lcom/codemao/creativestore/presenter/CreateUtils;->stagePositionBean:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;

    goto :goto_61

    :cond_60
    move-object v3, v0

    :goto_61
    if-eqz v3, :cond_290

    .line 466
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->getCreateUtils()Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v3

    if-nez v3, :cond_6e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6e
    iget-object v3, v3, Lcom/codemao/creativestore/presenter/CreateUtils;->stagePositionBean:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;

    const-string v4, "createUtils!!.stagePositionBean"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->getLandscape()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    move-result-object v3

    .line 468
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v4}, Lcom/codemao/creativecenter/NewBcmFragment;->access$isFullScreen$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z

    move-result v4

    const-string v5, "landscape"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_8b

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->getFullscreen()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    move-result-object v3

    goto :goto_8f

    :cond_8b
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->getNormal()Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    move-result-object v3

    :goto_8f
    const-string v4, "webViewRect"

    .line 470
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v4

    .line 472
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getTop()I

    move-result v5

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v5}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v5

    .line 474
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v6}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v6

    .line 476
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v3

    .line 478
    iget-object v7, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v7}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v7

    if-eqz v7, :cond_d3

    iget-object v7, v7, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    if-eqz v7, :cond_d3

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    goto :goto_d4

    :cond_d3
    const/4 v7, 0x0

    :goto_d4
    sub-int v3, v7, v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_ec

    sub-int/2addr v7, v6

    int-to-float v3, v7

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_ec

    int-to-float v3, v4

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_ec

    int-to-float v3, v5

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_ec

    return v1

    .line 486
    :cond_ec
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$isFullScreen$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z

    move-result v3

    if-nez v3, :cond_132

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v3

    if-eqz v3, :cond_132

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v3

    if-nez v3, :cond_107

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 487
    :cond_107
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v4}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v4

    if-nez v4, :cond_112

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_112
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 488
    iget-object v5, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v5}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v5

    if-nez v5, :cond_124

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_124
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    .line 486
    invoke-virtual {v3, v4, v5}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->isInRevertButtonBounds(FF)Z

    move-result v3

    if-eqz v3, :cond_132

    return v1

    .line 493
    :cond_132
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$isFullScreen$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z

    move-result v3

    if-eqz v3, :cond_178

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v3

    if-eqz v3, :cond_178

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v3

    if-nez v3, :cond_14d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 494
    :cond_14d
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v4}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v4

    if-nez v4, :cond_158

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_158
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 495
    iget-object v5, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v5}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v5

    if-nez v5, :cond_16a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_16a
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    .line 493
    invoke-virtual {v3, v4, v5}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->isInRevertButtonBounds(FF)Z

    move-result v3

    if-eqz v3, :cond_178

    return v1

    .line 503
    :cond_178
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$isFullScreen$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z

    move-result v3

    if-nez v3, :cond_1be

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v3

    if-eqz v3, :cond_1be

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v3

    if-nez v3, :cond_193

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 504
    :cond_193
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v4}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v4

    if-nez v4, :cond_19e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_19e
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 505
    iget-object v5, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v5}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v5

    if-nez v5, :cond_1b0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1b0
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    .line 503
    invoke-virtual {v3, v4, v5}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->isInOrientationButtonBounds(FF)Z

    move-result v3

    if-eqz v3, :cond_1be

    return v1

    .line 510
    :cond_1be
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$isFullScreen$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z

    move-result v3

    if-eqz v3, :cond_204

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v3

    if-eqz v3, :cond_204

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v3

    if-nez v3, :cond_1d9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 511
    :cond_1d9
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v4}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v4

    if-nez v4, :cond_1e4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1e4
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 512
    iget-object v5, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v5}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v5

    if-nez v5, :cond_1f6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1f6
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    .line 510
    invoke-virtual {v3, v4, v5}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->isInOrientationButtonBounds(FF)Z

    move-result v3

    if-eqz v3, :cond_204

    return v1

    .line 520
    :cond_204
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$isFullScreen$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z

    move-result v3

    if-nez v3, :cond_24a

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v3

    if-eqz v3, :cond_24a

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v3

    if-nez v3, :cond_21f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 521
    :cond_21f
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v4}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v4

    if-nez v4, :cond_22a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_22a
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 522
    iget-object v5, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v5}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v5

    if-nez v5, :cond_23c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_23c
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    .line 520
    invoke-virtual {v3, v4, v5}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->isInCenterPButtonBounds(FF)Z

    move-result v3

    if-eqz v3, :cond_24a

    return v1

    .line 527
    :cond_24a
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$isFullScreen$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z

    move-result v3

    if-eqz v3, :cond_290

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v3

    if-eqz v3, :cond_290

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v3

    if-nez v3, :cond_265

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 528
    :cond_265
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v4}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v4

    if-nez v4, :cond_270

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_270
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 529
    iget-object v5, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v5}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v5

    if-nez v5, :cond_282

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_282
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    .line 527
    invoke-virtual {v3, v4, v5}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->isInCenterPButtonBounds(FF)Z

    move-result v3

    if-eqz v3, :cond_290

    return v1

    .line 536
    :cond_290
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v3

    if-eqz v3, :cond_2ac

    iget-object v3, v3, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->rootLayout:Lcom/codemao/creativecenter/customview/CreationRootLayout;

    if-eqz v3, :cond_2ac

    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v4}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v4

    if-eqz v4, :cond_2ac

    const-string v5, "it"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->clickCenterP(Landroid/view/View;)V

    .line 538
    :cond_2ac
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getBinding$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;

    move-result-object v3

    if-eqz v3, :cond_2b6

    iget-object v0, v3, Lcom/codemao/creativecenter/databinding/CreativeBcmFragmentBinding;->clKeyboard:Landroid/widget/FrameLayout;

    .line 549
    :cond_2b6
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$isFullScreen$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z

    move-result v3

    if-nez v3, :cond_33b

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v3

    if-eqz v3, :cond_33b

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v3

    if-eqz v3, :cond_33b

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_33b

    .line 544
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v3

    if-nez v3, :cond_2df

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 545
    :cond_2df
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v4}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v4

    if-nez v4, :cond_2ea

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2ea
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 546
    iget-object v5, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v5}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getStageDashboardView$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmStageDashboardView;

    move-result-object v5

    if-nez v5, :cond_2fc

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2fc
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    .line 544
    invoke-virtual {v3, v4, v5}, Lcom/codemao/creativecenter/customview/CmStageDashboardView;->isInLlFunc(FF)Z

    move-result v3

    if-nez v3, :cond_33b

    if-eqz v0, :cond_33b

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_33b

    .line 554
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_336

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_336

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_336

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_336

    return v1

    .line 558
    :cond_336
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$cancelCLKeyboard(Lcom/codemao/creativecenter/NewBcmFragment;)V

    .line 568
    :cond_33b
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$isFullScreen$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z

    move-result v3

    if-eqz v3, :cond_3c0

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v3

    if-eqz v3, :cond_3c0

    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v3

    if-eqz v3, :cond_3c0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3c0

    .line 563
    iget-object v3, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v3}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v3

    if-nez v3, :cond_364

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 564
    :cond_364
    iget-object v4, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v4}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v4

    if-nez v4, :cond_36f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_36f
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    .line 565
    iget-object v5, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v5}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getCfbv$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;

    move-result-object v5

    if-nez v5, :cond_381

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_381
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, p1, v5

    .line 563
    invoke-virtual {v3, v4, v5}, Lcom/codemao/creativecenter/customview/CmFullScreenBottomView;->isInLlFunc(FF)Z

    move-result v3

    if-nez v3, :cond_3c0

    if-eqz v0, :cond_3c0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3c0

    .line 573
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_3bb

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3bb

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_3bb

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3bb

    return v1

    .line 577
    :cond_3bb
    iget-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$landscapeStyleDispatchTouchListener$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->access$cancelCLKeyboard(Lcom/codemao/creativecenter/NewBcmFragment;)V

    :cond_3c0
    return v1
.end method
