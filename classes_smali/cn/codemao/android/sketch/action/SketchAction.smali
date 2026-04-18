.class public abstract Lcn/codemao/android/sketch/action/SketchAction;
.super Ljava/lang/Object;
.source "SketchAction.java"


# instance fields
.field protected baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    return-void
.end method


# virtual methods
.method public getBaseStickerInfo()Lcn/codemao/android/sketch/model/BaseStickerInfo;
    .registers 2

    .line 42
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    return-object v0
.end method

.method public needScaleAndTrans()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 2

    return-void
.end method

.method public undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 2

    return-void
.end method

.method public updateAllOffset(FF)V
    .registers 3

    return-void
.end method

.method public updateAllScaled(FLcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    return-void
.end method
