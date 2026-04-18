.class public Lcn/codemao/android/sketch/action/ReEditSingleScaleAction;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "ReEditSingleScaleAction.java"


# instance fields
.field private endPoint:Lcn/codemao/android/sketch/model/PointInfo;

.field private final figureMode:I

.field private startPoint:Lcn/codemao/android/sketch/model/PointInfo;


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/model/StickerFigureInfo;IFFFF)V
    .registers 7

    .line 25
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 26
    iput p2, p0, Lcn/codemao/android/sketch/action/ReEditSingleScaleAction;->figureMode:I

    .line 27
    new-instance p1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p1, p3, p4}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object p1, p0, Lcn/codemao/android/sketch/action/ReEditSingleScaleAction;->startPoint:Lcn/codemao/android/sketch/model/PointInfo;

    .line 28
    new-instance p1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p1, p5, p6}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object p1, p0, Lcn/codemao/android/sketch/action/ReEditSingleScaleAction;->endPoint:Lcn/codemao/android/sketch/model/PointInfo;

    return-void
.end method


# virtual methods
.method public needScaleAndTrans()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 6

    .line 44
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 45
    iget-object p1, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    check-cast v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v1, p0, Lcn/codemao/android/sketch/action/ReEditSingleScaleAction;->figureMode:I

    iget-object v2, p0, Lcn/codemao/android/sketch/action/ReEditSingleScaleAction;->endPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1, v0, v1, v3, v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->singleScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;IFF)V

    return-void
.end method

.method public undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 6

    .line 35
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 37
    iget-object p1, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    check-cast v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v1, p0, Lcn/codemao/android/sketch/action/ReEditSingleScaleAction;->figureMode:I

    iget-object v2, p0, Lcn/codemao/android/sketch/action/ReEditSingleScaleAction;->startPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1, v0, v1, v3, v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->singleScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;IFF)V

    return-void
.end method

.method public updateAllOffset(FF)V
    .registers 3

    .line 51
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/action/SketchAction;->updateAllOffset(FF)V

    return-void
.end method

.method public updateAllScaled(FLcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    .line 61
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/action/SketchAction;->updateAllScaled(FLcn/codemao/android/sketch/view/paint/SketchControll;)V

    return-void
.end method
