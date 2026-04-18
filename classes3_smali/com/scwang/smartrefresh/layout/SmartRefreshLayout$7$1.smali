.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;I)V
    .registers 3

    .line 2797
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;->val$offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 2801
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableScrollContentWhenLoaded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;->val$offset:I

    if-gez v1, :cond_16

    .line 2802
    iget-object v1, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    invoke-interface {v1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->scrollContentWhenFinished(I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v2

    :goto_17
    if-eqz v0, :cond_26

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2805
    fill-array-data v1, :array_8a

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 2808
    :cond_26
    new-instance v1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1$1;

    invoke-direct {v1, p0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1$1;-><init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;)V

    .line 2820
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    iget-object v4, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v5, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    const/4 v6, 0x0

    if-lez v5, :cond_3b

    .line 2821
    iget-object v0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_80

    :cond_3b
    if-nez v0, :cond_62

    if-nez v5, :cond_40

    goto :goto_62

    .line 2830
    :cond_40
    iget-boolean v0, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz v0, :cond_5b

    iget-boolean v0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_5b

    .line 2831
    iget v0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v3, v0

    if-lt v5, v3, :cond_53

    .line 2832
    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {v4, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_7f

    .line 2834
    :cond_53
    iget-object v3, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    neg-int v0, v0

    invoke-interface {v3, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_80

    .line 2837
    :cond_5b
    iget-object v0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->animSpinner(I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_80

    .line 2823
    :cond_62
    :goto_62
    iget-object v0, v4, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6f

    .line 2824
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2825
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 2827
    :cond_6f
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    invoke-interface {v0, v6, v6}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 2828
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->resetStatus()V

    :goto_7f
    move-object v0, v2

    :goto_80
    if-eqz v0, :cond_86

    .line 2841
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_89

    .line 2843
    :cond_86
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_89
    return-void

    :array_8a
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
