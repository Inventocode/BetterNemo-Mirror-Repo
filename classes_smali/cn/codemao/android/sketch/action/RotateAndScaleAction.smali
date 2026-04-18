.class public Lcn/codemao/android/sketch/action/RotateAndScaleAction;
.super Lcn/codemao/android/sketch/action/SketchAction;
.source "RotateAndScaleAction.java"


# instance fields
.field private endPoint:Lcn/codemao/android/sketch/model/PointInfo;

.field private endRotateAngle:F

.field private startPoint:Lcn/codemao/android/sketch/model/PointInfo;

.field private startRotateAngle:F


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFFFFF)V
    .registers 9

    .line 29
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;)V

    .line 30
    new-instance p1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p1, p2, p3}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object p1, p0, Lcn/codemao/android/sketch/action/RotateAndScaleAction;->startPoint:Lcn/codemao/android/sketch/model/PointInfo;

    .line 31
    new-instance p1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p1, p4, p5}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object p1, p0, Lcn/codemao/android/sketch/action/RotateAndScaleAction;->endPoint:Lcn/codemao/android/sketch/model/PointInfo;

    .line 33
    iput p6, p0, Lcn/codemao/android/sketch/action/RotateAndScaleAction;->startRotateAngle:F

    .line 35
    iput p7, p0, Lcn/codemao/android/sketch/action/RotateAndScaleAction;->endRotateAngle:F

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RotateAndScaleAction: startRotateAngle = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p6, " endRotateAngle = "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p6, "RotateAndScaleAction"

    invoke-static {p6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "RotateAndScaleAction: startX = "

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " startY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RotateAndScaleAction: endX = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " endY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RotateAndScaleAction: scale = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 8

    .line 57
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->redo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 59
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    iget-object v2, p0, Lcn/codemao/android/sketch/action/RotateAndScaleAction;->startPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v4, p0, Lcn/codemao/android/sketch/action/RotateAndScaleAction;->endPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v3, v5

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v3, v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->rotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    .line 60
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    iget v1, p0, Lcn/codemao/android/sketch/action/RotateAndScaleAction;->endRotateAngle:F

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmRotateAngle(F)V

    .line 61
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 8

    .line 47
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/action/SketchAction;->undo(Lcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 49
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    iget-object v2, p0, Lcn/codemao/android/sketch/action/RotateAndScaleAction;->endPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v4, p0, Lcn/codemao/android/sketch/action/RotateAndScaleAction;->startPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v3, v5

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v3, v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->rotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    .line 50
    iget-object v0, p0, Lcn/codemao/android/sketch/action/SketchAction;->baseStickerInfo:Lcn/codemao/android/sketch/model/BaseStickerInfo;

    iget v1, p0, Lcn/codemao/android/sketch/action/RotateAndScaleAction;->startRotateAngle:F

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmRotateAngle(F)V

    .line 51
    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public updateAllOffset(FF)V
    .registers 4

    .line 67
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/action/SketchAction;->updateAllOffset(FF)V

    .line 68
    iget-object v0, p0, Lcn/codemao/android/sketch/action/RotateAndScaleAction;->startPoint:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;->offset(FF)V

    .line 69
    iget-object v0, p0, Lcn/codemao/android/sketch/action/RotateAndScaleAction;->endPoint:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;->offset(FF)V

    return-void
.end method

.method public updateAllScaled(FLcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 7

    .line 75
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/action/SketchAction;->updateAllScaled(FLcn/codemao/android/sketch/view/paint/SketchControll;)V

    .line 78
    invoke-interface {p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v0

    .line 79
    invoke-interface {p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result p2

    .line 81
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 82
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    .line 84
    iget-object v1, p0, Lcn/codemao/android/sketch/action/RotateAndScaleAction;->startPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v2, v0

    mul-float v2, v2, p1

    add-float/2addr v2, v0

    iget v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v3, p2

    mul-float v3, v3, p1

    add-float/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    .line 86
    iget-object v1, p0, Lcn/codemao/android/sketch/action/RotateAndScaleAction;->endPoint:Lcn/codemao/android/sketch/model/PointInfo;

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
