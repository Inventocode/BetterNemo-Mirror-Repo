.class public interface abstract Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;
.super Ljava/lang/Object;
.source "OnMultiPurposeListener.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;
.implements Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;
.implements Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;


# virtual methods
.method public abstract onFooterFinish(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;Z)V
.end method

.method public abstract onFooterMoving(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;ZFIII)V
.end method

.method public abstract onFooterReleased(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)V
.end method

.method public abstract onFooterStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)V
.end method

.method public abstract onHeaderFinish(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;Z)V
.end method

.method public abstract onHeaderMoving(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;ZFIII)V
.end method

.method public abstract onHeaderReleased(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)V
.end method

.method public abstract onHeaderStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)V
.end method
