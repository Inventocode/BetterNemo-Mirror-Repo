.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateRefreshing(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field final synthetic val$notify:Z


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;Z)V
    .registers 3

    .line 1266
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->val$notify:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .line 1269
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mLastOpenTime:J

    .line 1270
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    .line 1271
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshListener:Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;

    if-eqz v0, :cond_1d

    .line 1272
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->val$notify:Z

    if-eqz v1, :cond_26

    .line 1273
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;->onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    goto :goto_26

    .line 1275
    :cond_1d
    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-nez v0, :cond_26

    const/16 v0, 0xbb8

    .line 1276
    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh(I)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 1278
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_37

    .line 1279
    iget v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget v2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-interface {v0, p1, v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V

    .line 1281
    :cond_37
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    if-eqz v0, :cond_5d

    iget-object v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v1, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v1, :cond_5d

    .line 1282
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->val$notify:Z

    if-eqz v1, :cond_4a

    .line 1283
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;->onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    .line 1285
    :cond_4a
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$2;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mOnMultiPurposeListener:Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;

    iget-object v1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    check-cast v1, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    iget v2, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderMaxDragRate:F

    int-to-float v3, v2

    mul-float p1, p1, v3

    float-to-int p1, p1

    invoke-interface {v0, v1, v2, p1}, Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;->onHeaderStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)V

    :cond_5d
    return-void
.end method
