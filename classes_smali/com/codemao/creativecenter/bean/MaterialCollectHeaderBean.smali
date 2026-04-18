.class public Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;
.super Landroidx/databinding/BaseObservable;
.source "MaterialCollectHeaderBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isOpenManagerMode:Z

.field private isShowEmpty:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;->isOpenManagerMode:Z

    .line 11
    iput-boolean v0, p0, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;->isShowEmpty:Z

    return-void
.end method


# virtual methods
.method public isOpenManagerMode()Z
    .registers 2

    .line 15
    iget-boolean v0, p0, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;->isOpenManagerMode:Z

    return v0
.end method

.method public isShowEmpty()Z
    .registers 2

    .line 25
    iget-boolean v0, p0, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;->isShowEmpty:Z

    return v0
.end method

.method public setOpenManagerMode(Z)V
    .registers 2

    .line 19
    iput-boolean p1, p0, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;->isOpenManagerMode:Z

    .line 20
    sget p1, Lcom/codemao/creativecenter/BR;->openManagerMode:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setShowEmpty(Z)V
    .registers 2

    .line 29
    iput-boolean p1, p0, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;->isShowEmpty:Z

    .line 30
    sget p1, Lcom/codemao/creativecenter/BR;->showEmpty:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method
