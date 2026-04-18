.class public Lcn/codemao/android/sketch/action/SingleScaleAction;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "SingleScaleAction.java"


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
    iput p2, p0, Lcn/codemao/android/sketch/action/SingleScaleAction;->figureMode:I

    .line 27
    new-instance p1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p1, p3, p4}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object p1, p0, Lcn/codemao/android/sketch/action/SingleScaleAction;->startPoint:Lcn/codemao/android/sketch/model/PointInfo;

    .line 28
    new-instance p1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p1, p5, p6}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object p1, p0, Lcn/codemao/android/sketch/action/SingleScaleAction;->endPoint:Lcn/codemao/android/sketch/model/PointInfo;

    return-void
.end method


# virtual methods
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

    iget v1, p0, Lcn/codemao/android/sketch/action/SingleScaleAction;->figureMode:I

    iget-object v2, p0, Lcn/codemao/android/sketch/action/SingleScaleAction;->endPoint:Lcn/codemao/android/sketch/model/PointInfo;

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

    iget v1, p0, Lcn/codemao/android/sketch/action/SingleScaleAction;->figureMode:I

    iget-object v2, p0, Lcn/codemao/android/sketch/action/SingleScaleAction;->startPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1, v0, v1, v3, v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->singleScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;IFF)V

    return-void
.end method

.method public updateAllOffset(FF)V
    .registers 5

    .line 51
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/action/SketchAction;->updateAllOffset(FF)V

    .line 52
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SingleScaleAction;->startPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v1, p2

    .line 53
    iput v1, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 55
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SingleScaleAction;->endPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 56
    iget p1, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr p1, p2

    iput p1, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    return-void
.end method

.method public updateAllScaled(FLcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 7

    .line 61
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/action/SketchAction;->updateAllScaled(FLcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 64
    invoke-interface {p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v0

    .line 65
    invoke-interface {p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result p2

    .line 67
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 68
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    .line 70
    iget-object v1, p0, Lcn/codemao/android/sketch/action/SingleScaleAction;->startPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v2, v0

    mul-float v2, v2, p1

    add-float/2addr v2, v0

    iget v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v3, p2

    mul-float v3, v3, p1

    add-float/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    .line 72
    iget-object v1, p0, Lcn/codemao/android/sketch/action/SingleScaleAction;->endPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v2, v0

    mul-float v2, v2, p1

    add-float/2addr v2, v0

    iget v0, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v0, p2

    mul-float v0, v0, p1

    add-float/2addr v0, p2

    invoke-virtual {v1, v2, v0}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    return-void
.end method
