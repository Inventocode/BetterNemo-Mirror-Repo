.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishLoadMore(IZZ)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field final synthetic val$noMoreData:Z

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;ZZ)V
    .registers 4

    .line 2765
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$success:Z

    iput-boolean p3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$noMoreData:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 18

    move-object/from16 v0, p0

    .line 2768
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_e5

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v2, :cond_e5

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    if-eqz v2, :cond_e5

    .line 2769
    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v1, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 2770
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iget-boolean v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$success:Z

    invoke-interface {v2, v1, v3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I

    move-result v1

    .line 2771
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v3, :cond_35

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v5, v2, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v5, :cond_35

    .line 2772
    check-cast v2, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    iget-boolean v5, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$success:Z

    invoke-interface {v3, v2, v5}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onFooterFinish(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;Z)V

    :cond_35
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_ec

    .line 2776
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$noMoreData:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_52

    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v5, :cond_52

    iget v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v5, :cond_52

    iget-object v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v2}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->canLoadMore()Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_53

    :cond_52
    const/4 v4, 0x0

    .line 2777
    :goto_53
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v4, :cond_61

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v2, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_62

    :cond_61
    const/4 v2, 0x0

    :goto_62
    sub-int/2addr v5, v2

    .line 2779
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-nez v4, :cond_6d

    iget-boolean v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v2, :cond_d0

    .line 2780
    :cond_6d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2781
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    if-eqz v4, :cond_b3

    .line 2782
    iget v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    iput v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchY:F

    .line 2783
    iget v6, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    sub-int/2addr v6, v5

    iput v6, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 2784
    iput-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mIsBeingDragged:Z

    .line 2785
    iget-boolean v6, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    if-eqz v6, :cond_88

    move v6, v5

    goto :goto_89

    :cond_88
    const/4 v6, 0x0

    :goto_89
    const/4 v10, 0x0

    .line 2786
    iget v11, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    int-to-float v13, v6

    add-float/2addr v4, v13

    iget v6, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSlop:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float v12, v4, v6

    const/4 v4, 0x0

    move-wide v6, v14

    move-wide v8, v14

    move/from16 v16, v13

    move v13, v4

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->access$301(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2787
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v10, 0x2

    iget v11, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    add-float v12, v4, v16

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->access$401(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2789
    :cond_b3
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v4, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    if-eqz v4, :cond_d0

    .line 2790
    iput v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTotalUnconsumed:I

    const/4 v10, 0x1

    .line 2791
    iget v11, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchX:F

    iget v12, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastTouchY:F

    const/4 v13, 0x0

    move-wide v6, v14

    move-wide v8, v14

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->access$501(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Landroid/view/MotionEvent;)Z

    .line 2792
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mNestedInProgress:Z

    .line 2793
    iput v3, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mTouchSpinner:I

    .line 2797
    :cond_d0
    iget-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;

    invoke-direct {v3, v0, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;I)V

    iget-object v4, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v4, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-gez v4, :cond_df

    int-to-long v4, v1

    goto :goto_e1

    :cond_df
    const-wide/16 v4, 0x0

    :goto_e1
    invoke-virtual {v2, v3, v4, v5}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_ec

    .line 2849
    :cond_e5
    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz v2, :cond_ec

    .line 2850
    invoke-virtual {v1, v4}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    :cond_ec
    :goto_ec
    return-void
.end method
