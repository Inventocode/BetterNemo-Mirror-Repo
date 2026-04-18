.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animSpinner(IILandroid/view/animation/Interpolator;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .registers 2

    .line 1497
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 1500
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 1501
    iget v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-nez v0, :cond_1b

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v1, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_1b

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v2, :cond_1b

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isDragging:Z

    if-nez v0, :cond_1b

    .line 1502
    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    goto :goto_24

    .line 1503
    :cond_1b
    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-object v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v1, :cond_24

    .line 1509
    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_24
    :goto_24
    return-void
.end method
