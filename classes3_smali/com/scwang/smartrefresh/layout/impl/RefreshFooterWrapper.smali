.class public Lcom/scwang/smartrefresh/layout/impl/RefreshFooterWrapper;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "RefreshFooterWrapper.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshFooter;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setNoMoreData(Z)Z
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->mWrappedInternal:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    instance-of v1, v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    if-eqz v1, :cond_10

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;

    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshFooter;->setNoMoreData(Z)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method
