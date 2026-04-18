.class public abstract Lcn/codemao/android/sketch/view/paint/IPaint;
.super Ljava/lang/Object;
.source "IPaint.java"


# instance fields
.field protected lastX:F

.field protected lastY:F

.field protected mPaint:Landroid/graphics/Paint;

.field protected mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

.field protected startX:F

.field protected startY:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bindPaint(Landroid/graphics/Paint;)V
    .registers 3

    .line 95
    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public bindSketchControll(Lcn/codemao/android/sketch/view/paint/SketchControll;I)V
    .registers 3

    .line 104
    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    return-void
.end method

.method public canAnim()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected doMotionEventDown(FFLandroid/graphics/Canvas;)V
    .registers 4

    return-void
.end method

.method protected doMotionEventMove(FFLandroid/graphics/Canvas;)V
    .registers 4

    return-void
.end method

.method protected doMotionEventUp(FFLandroid/graphics/Canvas;)V
    .registers 4

    return-void
.end method

.method public doSomethingBeforeChangeMode(Lcn/codemao/android/sketch/view/paint/IPaint;)V
    .registers 2

    return-void
.end method

.method public doSomethingBeforeScale()V
    .registers 1

    return-void
.end method

.method public abstract getMode()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRes()I
.end method

.method public getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;
    .registers 2

    .line 157
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    return-object v0
.end method

.method protected invalidate()V
    .registers 2

    .line 222
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public moveFigure(Lcn/codemao/android/sketch/model/BaseStickerInfo;ZFF)V
    .registers 5

    return-void
.end method

.method public onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V
    .registers 5

    return-void
.end method

.method public onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V
    .registers 4

    return-void
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Canvas;)Z
    .registers 6

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_20

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1c

    const/4 v2, 0x2

    if-eq p1, v2, :cond_18

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1c

    goto :goto_27

    .line 63
    :cond_18
    invoke-virtual {p0, v0, v1, p2}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventMove(FFLandroid/graphics/Canvas;)V

    goto :goto_27

    .line 69
    :cond_1c
    invoke-virtual {p0, v0, v1, p2}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventUp(FFLandroid/graphics/Canvas;)V

    goto :goto_27

    .line 54
    :cond_20
    iput v0, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->startX:F

    .line 55
    iput v1, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->startY:F

    .line 56
    invoke-virtual {p0, v0, v1, p2}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventDown(FFLandroid/graphics/Canvas;)V

    .line 72
    :goto_27
    iput v0, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->lastX:F

    .line 73
    iput v1, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->lastY:F

    const/4 p1, 0x0

    return p1
.end method

.method public rotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V
    .registers 4

    return-void
.end method

.method public singleScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;IFF)V
    .registers 5

    return-void
.end method

.method public whenChangeMyMode(Landroid/content/Context;Z)V
    .registers 3

    return-void
.end method
