.class public abstract Lcn/codemao/android/sketch/view/strokes/IStroke;
.super Ljava/lang/Object;
.source "IStroke.java"


# instance fields
.field protected mLastX:F

.field protected mLastY:F

.field protected penPaint:Landroid/graphics/Paint;

.field protected penPath:Landroid/graphics/Path;

.field protected scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

.field protected sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

.field protected unitSize:F


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/ScrawlPaint;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->penPath:Landroid/graphics/Path;

    .line 45
    iput-object p1, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    .line 46
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->penPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public doSomethingBeforeScale()V
    .registers 1

    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRes()I
.end method

.method public getScrawlPaint()Lcn/codemao/android/sketch/view/paint/ScrawlPaint;
    .registers 2

    .line 54
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public needCreateBitmap()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V
    .registers 4

    .line 86
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    neg-float p2, p2

    neg-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;F)V
    .registers 5

    .line 99
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V
    .registers 12

    .line 128
    check-cast p2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 133
    iget-object p3, p2, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftTop:Lcn/codemao/android/sketch/model/PointInfo;

    const/high16 p4, 0x3f800000  # 1.0f

    const/4 v0, 0x0

    const/high16 v1, -0x40800000  # -1.0f

    if-eqz p3, :cond_55

    iget-object v2, p2, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    if-eqz v2, :cond_55

    iget-object v3, p2, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    if-eqz v3, :cond_55

    iget-object v3, p2, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightTop:Lcn/codemao/android/sketch/model/PointInfo;

    if-eqz v3, :cond_55

    .line 134
    iget v4, p3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget v5, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    cmpl-float v6, v4, v5

    if-nez v6, :cond_3b

    .line 135
    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    cmpg-float v2, v4, v2

    if-gez v2, :cond_2e

    .line 137
    iget p3, p3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v2, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float p3, p3, v2

    if-lez p3, :cond_55

    goto :goto_38

    :cond_2e
    const/high16 v0, 0x43340000  # 180.0f

    .line 142
    iget p3, p3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v2, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpg-float p3, p3, v2

    if-gez p3, :cond_55

    :goto_38
    const/high16 p4, -0x40800000  # -1.0f

    goto :goto_55

    :cond_3b
    cmpg-float v0, v4, v5

    if-gez v0, :cond_4a

    const/high16 v0, 0x42b40000  # 90.0f

    .line 148
    iget p3, p3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpg-float p3, p3, v2

    if-gez p3, :cond_55

    goto :goto_57

    :cond_4a
    const/high16 v0, 0x43870000  # 270.0f

    .line 153
    iget p3, p3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float p3, p3, v2

    if-lez p3, :cond_55

    goto :goto_57

    :cond_55
    :goto_55
    const/high16 v1, 0x3f800000  # 1.0f

    .line 161
    :goto_57
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 162
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p3, p4, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 164
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-virtual {p3, v0, p4, p2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 166
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onTouchDown(FF)V
    .registers 4

    .line 58
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->penPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 59
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->penPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 60
    iput p1, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->mLastX:F

    .line 61
    iput p2, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->mLastY:F

    return-void
.end method

.method public onTouchMove(FFLandroid/graphics/Canvas;)V
    .registers 4

    return-void
.end method

.method public onTouchUp(FFLandroid/graphics/Canvas;)V
    .registers 4

    return-void
.end method

.method public updateUnsize()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x43bb8000  # 375.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->unitSize:F

    return-void
.end method
