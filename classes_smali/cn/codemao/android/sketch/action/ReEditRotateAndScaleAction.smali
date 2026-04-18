.class public Lcn/codemao/android/sketch/action/ReEditRotateAndScaleAction;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "ReEditRotateAndScaleAction.java"


# instance fields
.field private endPoint:Lcn/codemao/android/sketch/model/PointInfo;

.field private endRotateAngle:F

.field private startPoint:Lcn/codemao/android/sketch/model/PointInfo;

.field private startRotateAngle:F


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFFFFF)V
    .registers 8

    .line 29
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 30
    new-instance p1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p1, p2, p3}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object p1, p0, Lcn/codemao/android/sketch/action/ReEditRotateAndScaleAction;->startPoint:Lcn/codemao/android/sketch/model/PointInfo;

    .line 31
    new-instance p1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p1, p4, p5}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object p1, p0, Lcn/codemao/android/sketch/action/ReEditRotateAndScaleAction;->endPoint:Lcn/codemao/android/sketch/model/PointInfo;

    .line 33
    iput p6, p0, Lcn/codemao/android/sketch/action/ReEditRotateAndScaleAction;->startRotateAngle:F

    .line 35
    iput p7, p0, Lcn/codemao/android/sketch/action/ReEditRotateAndScaleAction;->endRotateAngle:F

    return-void
.end method


# virtual methods
.method public needScaleAndTrans()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 8

    .line 52
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 54
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    iget-object v2, p0, Lcn/codemao/android/sketch/action/ReEditRotateAndScaleAction;->startPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v4, p0, Lcn/codemao/android/sketch/action/ReEditRotateAndScaleAction;->endPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v3, v5

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v3, v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->rotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    .line 55
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    iget v1, p0, Lcn/codemao/android/sketch/action/ReEditRotateAndScaleAction;->endRotateAngle:F

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmRotateAngle(F)V

    .line 56
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 8

    .line 42
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 44
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    iget-object v2, p0, Lcn/codemao/android/sketch/action/ReEditRotateAndScaleAction;->endPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v4, p0, Lcn/codemao/android/sketch/action/ReEditRotateAndScaleAction;->startPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v3, v5

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v3, v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->rotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    .line 45
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    iget v1, p0, Lcn/codemao/android/sketch/action/ReEditRotateAndScaleAction;->startRotateAngle:F

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmRotateAngle(F)V

    .line 46
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public updateAllOffset(FF)V
    .registers 3

    .line 62
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/action/SketchAction;->updateAllOffset(FF)V

    return-void
.end method

.method public updateAllScaled(FLcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    .line 70
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/action/SketchAction;->updateAllScaled(FLcn/codemao/android/sketch/view/paint/SketchControll;)V

    return-void
.end method
