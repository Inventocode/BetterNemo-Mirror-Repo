.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(IZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V
    .registers 3

    .line 2679
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 2682
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v1, v2, :cond_df

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v1, :cond_df

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v1, :cond_df

    .line 2683
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->val$success:Z

    if-eqz v1, :cond_17

    .line 2684
    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->resetNoMoreData()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 2686
    :cond_17
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->RefreshFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 2687
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->val$success:Z

    invoke-interface {v1, v0, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    move-result v0

    .line 2688
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v2, :cond_3b

    iget-object v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v3, v1, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v3, :cond_3b

    .line 2689
    check-cast v1, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    iget-boolean v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->val$success:Z

    invoke-interface {v2, v1, v3}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onHeaderFinish(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;Z)V

    :cond_3b
    const v1, 0x7fffffff

    if-ge v0, v1, :cond_df

    .line 2694
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    const/4 v3, 0x0

    if-nez v2, :cond_4b

    iget-boolean v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v1, :cond_a6

    .line 2695
    :cond_4b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2696
    iget-object v12, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_89

    .line 2697
    iget v4, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v4, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 2698
    iput v3, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 2699
    iput-boolean v3, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    const/4 v8, 0x0

    .line 2700
    iget v9, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget v5, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v10, v4, v5

    const/4 v11, 0x0

    move-wide v4, v1

    move-wide v6, v1

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->access$001(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2701
    iget-object v12, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v8, 0x2

    iget v9, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget v4, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iget v5, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    int-to-float v5, v5

    add-float v10, v4, v5

    move-wide v4, v1

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->access$101(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2703
    :cond_89
    iget-object v12, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v4, :cond_a6

    .line 2704
    iput v3, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    const/4 v8, 0x1

    .line 2705
    iget v9, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget v10, v12, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    const/4 v11, 0x0

    move-wide v4, v1

    move-wide v6, v1

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->access$201(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2706
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    .line 2707
    iput v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 2710
    :cond_a6
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-lez v2, :cond_cb

    const/4 v2, 0x0

    .line 2712
    iget-object v4, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget v5, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2713
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v3, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenRefreshed:Z

    if-eqz v3, :cond_c3

    .line 2714
    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget v1, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    invoke-interface {v2, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->scrollContentWhenFinished(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    :cond_c3
    if-eqz v0, :cond_df

    if-eqz v2, :cond_df

    .line 2717
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_df

    :cond_cb
    if-gez v2, :cond_d5

    .line 2720
    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundInterpolator:Landroid/view/animation/Interpolator;

    iget v4, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mReboundDuration:I

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;

    goto :goto_df

    .line 2722
    :cond_d5
    iget-object v0, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v3, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 2723
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$6;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->resetStatus()V

    :cond_df
    :goto_df
    return-void
.end method
