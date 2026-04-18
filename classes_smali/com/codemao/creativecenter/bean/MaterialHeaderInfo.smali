.class public Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;
.super Landroidx/databinding/BaseObservable;
.source "MaterialHeaderInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private isHeader:Z

.field private showThemeNewVersion:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .line 15
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->showThemeNewVersion:Z

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->isHeader:Z

    .line 16
    iput-boolean p1, p0, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->isHeader:Z

    return-void
.end method


# virtual methods
.method public isHeader()Z
    .registers 2

    .line 20
    iget-boolean v0, p0, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->isHeader:Z

    return v0
.end method

.method public isShowThemeNewVersion()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->showThemeNewVersion:Z

    return v0
.end method

.method public setShowThemeNewVersion(Z)V
    .registers 2

    .line 33
    iput-boolean p1, p0, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->showThemeNewVersion:Z

    .line 34
    sget p1, Lcom/codemao/creativecenter/BR;->showThemeNewVersion:I

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    return-void
.end method
