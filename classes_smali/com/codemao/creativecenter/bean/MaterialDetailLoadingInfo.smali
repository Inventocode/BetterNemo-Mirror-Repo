.class public Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;
.super Landroidx/databinding/BaseObservable;
.source "MaterialDetailLoadingInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private downlaodStatus:I

.field private downloadItemNum:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 23
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    .line 24
    iput p1, p0, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->downlaodStatus:I

    return-void
.end method


# virtual methods
.method public getDownlaodStatus()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->downlaodStatus:I

    return v0
.end method

.method public getDownloadItemNum()I
    .registers 2

    .line 38
    iget v0, p0, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->downloadItemNum:I

    return v0
.end method

.method public setDownlaodStatus(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->downlaodStatus:I

    .line 34
    sget p1, Lcom/codemao/creativecenter/BR;->downlaodStatus:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method

.method public setDownloadItemNum(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->downloadItemNum:I

    return-void
.end method
