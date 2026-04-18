.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshKernel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RefreshKernelImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method public constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .registers 2

    .line 3137
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animSpinner(I)Landroid/animation/ValueAnimator;
    .registers 6

    .line 3429
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public finishTwoLevel()Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .registers 4

    .line 3283
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_2d

    .line 3284
    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 3285
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 3286
    invoke-virtual {p0, v1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 3287
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_2d

    .line 3289
    :cond_21
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_2d
    :goto_2d
    return-object p0
.end method

.method public getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .registers 2

    .line 3142
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    return-object v0
.end method

.method public moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3312
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-ne v3, v1, :cond_21

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_14

    .line 3313
    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v2

    if-nez v2, :cond_21

    :cond_14
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_20

    .line 3314
    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v2

    if-nez v2, :cond_21

    :cond_20
    return-object v0

    .line 3317
    :cond_21
    iget-object v9, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3318
    iget v10, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    .line 3319
    iput v1, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz p2, :cond_7d

    .line 3322
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isDragging:Z

    if-nez v3, :cond_33

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz v2, :cond_7d

    :cond_33
    int-to-float v2, v1

    .line 3323
    iget v3, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v3

    iget v4, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTriggerRate:F

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4d

    .line 3324
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v2, v3, :cond_7d

    .line 3325
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_7d

    :cond_4d
    neg-int v2, v1

    int-to-float v2, v2

    .line 3327
    iget v3, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v3, v3

    iget v4, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTriggerRate:F

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_66

    iget-boolean v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_66

    .line 3328
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_7d

    :cond_66
    if-gez v1, :cond_74

    .line 3329
    iget-boolean v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-nez v2, :cond_74

    .line 3330
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_7d

    :cond_74
    if-lez v1, :cond_7d

    .line 3332
    iget-object v2, v9, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 3335
    :cond_7d
    :goto_7d
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_126

    const/4 v3, 0x0

    if-ltz v1, :cond_9f

    .line 3337
    iget-object v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v4, :cond_9f

    .line 3338
    iget-boolean v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    invoke-virtual {v2, v5, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 3339
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_9f

    :cond_99
    if-gez v10, :cond_9f

    .line 3341
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_9f
    :goto_9f
    if-gtz v1, :cond_ba

    .line 3344
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v4, :cond_ba

    .line 3345
    iget-boolean v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    invoke-virtual {v2, v5, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 3346
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_ba

    :cond_b4
    if-lez v10, :cond_ba

    .line 3348
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_ba
    :goto_ba
    if-eqz v3, :cond_126

    .line 3352
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v6, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderTranslationViewId:I

    iget v5, v5, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterTranslationViewId:I

    invoke-interface {v2, v4, v6, v5}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->moveSpinner(III)V

    .line 3353
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipHeaderWhenFixedBehind:Z

    if-eqz v4, :cond_e1

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_e1

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v2

    sget-object v4, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v2, v4, :cond_e1

    const/4 v2, 0x1

    goto :goto_e2

    :cond_e1
    const/4 v2, 0x0

    :goto_e2
    if-nez v2, :cond_ed

    .line 3354
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v2, :cond_eb

    goto :goto_ed

    :cond_eb
    const/4 v2, 0x0

    goto :goto_ee

    :cond_ed
    :goto_ed
    const/4 v2, 0x1

    .line 3355
    :goto_ee
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v5, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableClipFooterWhenFixedBehind:Z

    if-eqz v5, :cond_102

    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v4, :cond_102

    invoke-interface {v4}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v4

    sget-object v5, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->FixedBehind:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v4, v5, :cond_102

    const/4 v4, 0x1

    goto :goto_103

    :cond_102
    const/4 v4, 0x0

    :goto_103
    if-nez v4, :cond_10e

    .line 3356
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v4, :cond_10c

    goto :goto_10e

    :cond_10c
    const/4 v4, 0x0

    goto :goto_10f

    :cond_10e
    :goto_10e
    const/4 v4, 0x1

    :goto_10f
    if-eqz v2, :cond_119

    .line 3357
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_123

    if-gtz v10, :cond_123

    :cond_119
    if-eqz v4, :cond_126

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_123

    if-gez v10, :cond_126

    .line 3358
    :cond_123
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    :cond_126
    const/high16 v13, 0x3f800000  # 1.0f

    if-gez v1, :cond_12c

    if-lez v10, :cond_1fe

    .line 3362
    :cond_12c
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_1fe

    .line 3364
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 3365
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v14, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    int-to-float v3, v14

    .line 3366
    iget v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    mul-float v3, v3, v4

    float-to-int v15, v3

    int-to-float v3, v8

    mul-float v3, v3, v13

    if-nez v14, :cond_147

    const/4 v4, 0x1

    goto :goto_148

    :cond_147
    move v4, v14

    :goto_148
    int-to-float v4, v4

    div-float v16, v3, v4

    .line 3369
    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v2

    if-nez v2, :cond_15d

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v2, v3, :cond_1df

    if-nez p2, :cond_1df

    .line 3370
    :cond_15d
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eq v10, v3, :cond_1ba

    .line 3371
    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v2

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v2, v3, :cond_195

    .line 3372
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 3373
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    if-eqz v3, :cond_1ac

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_1ac

    iget-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    iget-object v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v2, v3, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v2

    if-nez v2, :cond_1ac

    .line 3374
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_1ac

    .line 3376
    :cond_195
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v2

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v2, v3, :cond_1ac

    .line 3377
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 3379
    :cond_1ac
    :goto_1ac
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    move/from16 v3, p2

    move/from16 v4, v16

    move v5, v8

    move v6, v14

    move v7, v15

    invoke-interface/range {v2 .. v7}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onMoving(ZFIII)V

    :cond_1ba
    if-eqz p2, :cond_1df

    .line 3381
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v2

    if-eqz v2, :cond_1df

    .line 3382
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v2, v2

    .line 3383
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 3384
    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    if-nez v3, :cond_1d7

    const/4 v6, 0x1

    goto :goto_1d8

    :cond_1d7
    move v6, v3

    :goto_1d8
    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 3385
    iget-object v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v4, v5, v2, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    .line 3389
    :cond_1df
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eq v10, v3, :cond_1fe

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v3, :cond_1fe

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v4, v2, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v4, :cond_1fe

    .line 3390
    move-object v4, v2

    check-cast v4, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p2

    move/from16 v5, v16

    move v6, v8

    move v7, v14

    move v8, v15

    invoke-interface/range {v2 .. v8}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onHeaderMoving(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;ZFIII)V

    :cond_1fe
    if-lez v1, :cond_202

    if-gez v10, :cond_2d2

    .line 3394
    :cond_202
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_2d2

    .line 3396
    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    neg-int v7, v1

    .line 3397
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v8, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    int-to-float v2, v8

    .line 3398
    iget v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterMaxDragRate:F

    mul-float v2, v2, v3

    float-to-int v12, v2

    int-to-float v2, v7

    mul-float v2, v2, v13

    if-nez v8, :cond_21e

    const/4 v3, 0x1

    goto :goto_21f

    :cond_21e
    move v3, v8

    :goto_21f
    int-to-float v3, v3

    div-float v13, v2, v3

    .line 3401
    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v1

    if-nez v1, :cond_234

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_2b4

    if-nez p2, :cond_2b4

    .line 3402
    :cond_234
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eq v10, v2, :cond_290

    .line 3403
    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Translate:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_26c

    .line 3404
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3405
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    if-eqz v2, :cond_283

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_283

    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    iget-object v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {v1, v2, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableTranslationContent(ZLcom/scwang/smartrefresh/layout/api/RefreshInternal;)Z

    move-result v1

    if-nez v1, :cond_283

    .line 3406
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_283

    .line 3408
    :cond_26c
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    move-result-object v1

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;->Scale:Lcom/scwang/smartrefresh/layout/constant/SpinnerStyle;

    if-ne v1, v2, :cond_283

    .line 3409
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 3411
    :cond_283
    :goto_283
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    move/from16 v2, p2

    move v3, v13

    move v4, v7

    move v5, v8

    move v6, v12

    invoke-interface/range {v1 .. v6}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onMoving(ZFIII)V

    :cond_290
    if-eqz p2, :cond_2b4

    .line 3413
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->isSupportHorizontalDrag()Z

    move-result v1

    if-eqz v1, :cond_2b4

    .line 3414
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    float-to-int v1, v1

    .line 3415
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 3416
    iget-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    if-nez v2, :cond_2ac

    goto :goto_2ad

    :cond_2ac
    move v11, v2

    :goto_2ad
    int-to-float v5, v11

    div-float/2addr v4, v5

    .line 3417
    iget-object v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-interface {v3, v4, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onHorizontalDrag(FII)V

    .line 3421
    :cond_2b4
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eq v10, v2, :cond_2d2

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v2, :cond_2d2

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v3, v1, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v3, :cond_2d2

    .line 3422
    move-object v3, v1

    check-cast v3, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    move-object v1, v2

    move-object v2, v3

    move/from16 v3, p2

    move v4, v13

    move v5, v7

    move v6, v8

    move v7, v12

    invoke-interface/range {v1 .. v7}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onFooterMoving(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;ZFIII)V

    :cond_2d2
    return-object v0
.end method

.method public requestDrawBackgroundFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .registers 5

    .line 3438
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_f

    if-eqz p2, :cond_f

    .line 3439
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mPaint:Landroid/graphics/Paint;

    .line 3441
    :cond_f
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3442
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderBackgroundColor:I

    goto :goto_2c

    .line 3443
    :cond_1e
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 3444
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterBackgroundColor:I

    :cond_2c
    :goto_2c
    return-object p0
.end method

.method public requestFloorDuration(I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .registers 3

    .line 3489
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput p1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorDuration:I

    return-object p0
.end method

.method public requestNeedTouchEventFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .registers 4

    .line 3451
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3452
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderNeedTouchEventWhenRefreshing:Z

    goto :goto_1d

    .line 3453
    :cond_f
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 3454
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNeedTouchEventWhenLoading:Z

    :cond_1d
    :goto_1d
    return-object p0
.end method

.method public setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .registers 4

    .line 3153
    sget-object v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$10;->$SwitchMap$com$scwang$smartrefresh$layout$constant$RefreshState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_1b2

    goto/16 :goto_1b0

    .line 3250
    :pswitch_e  #0x11
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3247
    :pswitch_17  #0x10
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3244
    :pswitch_20  #0xf
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->TwoLevelReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3238
    :pswitch_29  #0xe
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1b0

    .line 3239
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3232
    :pswitch_38  #0xd
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v1, :cond_1b0

    .line 3233
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3229
    :pswitch_47  #0xc
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateLoading(Z)V

    goto/16 :goto_1b0

    .line 3226
    :pswitch_4e  #0xb
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V

    goto/16 :goto_1b0

    .line 3218
    :pswitch_55  #0xa
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_6e

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 3219
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3221
    :cond_6e
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3210
    :pswitch_77  #0x9
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_90

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 3211
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3213
    :cond_90
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshReleased:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3202
    :pswitch_99  #0x8
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_b2

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_b2

    .line 3203
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3205
    :cond_b2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToTwoLevel:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3195
    :pswitch_bb  #0x7
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_e0

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v1, :cond_e0

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v0, :cond_e0

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_d9

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-nez v0, :cond_e0

    .line 3196
    :cond_d9
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3198
    :cond_e0
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3188
    :pswitch_e9  #0x6
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_102

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_102

    .line 3189
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3191
    :cond_102
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3180
    :pswitch_10b  #0x5
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_131

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_131

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_125

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-nez v0, :cond_131

    .line 3181
    :cond_125
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 3182
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->resetStatus()V

    goto/16 :goto_1b0

    .line 3184
    :cond_131
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto/16 :goto_1b0

    .line 3172
    :pswitch_13a  #0x4
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_157

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_157

    .line 3173
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 3174
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->resetStatus()V

    goto :goto_1b0

    .line 3176
    :cond_157
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownCanceled:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_1b0

    .line 3165
    :pswitch_15f  #0x3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_183

    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v1, :cond_183

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v0, :cond_183

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_17d

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-nez v0, :cond_183

    .line 3166
    :cond_17d
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_1b0

    .line 3168
    :cond_183
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullUpToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_1b0

    .line 3158
    :pswitch_18b  #0x2
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_1a3

    iget-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableRefresh:Z

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result p1

    if-eqz p1, :cond_1a3

    .line 3159
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_1b0

    .line 3161
    :cond_1a3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->PullDownToRefresh:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_1b0

    .line 3155
    :pswitch_1ab  #0x1
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->resetStatus()V

    :cond_1b0
    :goto_1b0
    const/4 p1, 0x0

    return-object p1

    :pswitch_data_1b2
    .packed-switch 0x1
        :pswitch_1ab  #00000001
        :pswitch_18b  #00000002
        :pswitch_15f  #00000003
        :pswitch_13a  #00000004
        :pswitch_10b  #00000005
        :pswitch_e9  #00000006
        :pswitch_bb  #00000007
        :pswitch_99  #00000008
        :pswitch_77  #00000009
        :pswitch_55  #0000000a
        :pswitch_4e  #0000000b
        :pswitch_47  #0000000c
        :pswitch_38  #0000000d
        :pswitch_29  #0000000e
        :pswitch_20  #0000000f
        :pswitch_17  #00000010
        :pswitch_e  #00000011
    .end packed-switch
.end method

.method public startTwoLevel(Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
    .registers 5

    if-eqz p1, :cond_28

    .line 3259
    new-instance p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl$1;

    invoke-direct {p1, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl$1;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;)V

    .line 3265
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3266
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 3267
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-ne v0, v2, :cond_23

    .line 3268
    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFloorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3269
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_36

    :cond_23
    const/4 v0, 0x0

    .line 3271
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_36

    :cond_28
    const/4 p1, 0x0

    .line 3274
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-nez p1, :cond_36

    .line 3275
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$RefreshKernelImpl;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_36
    :goto_36
    return-object p0
.end method
