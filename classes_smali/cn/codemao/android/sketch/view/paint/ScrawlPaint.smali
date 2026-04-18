.class public Lcn/codemao/android/sketch/view/paint/ScrawlPaint;
.super Lcn/codemao/android/sketch/view/paint/IPaint;
.source "ScrawlPaint.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas1:Landroid/graphics/Canvas;

.field private curSelectStroke:I

.field private curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

.field mStrokes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/codemao/android/sketch/view/strokes/IStroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->curSelectStroke:I

    .line 40
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    return-void
.end method

.method private toOragin(FFZ)V
    .registers 8

    .line 46
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/model/PointInfo;->setX(F)V

    .line 47
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v0, p2}, Lcn/codemao/android/sketch/model/PointInfo;->setY(F)V

    if-nez p3, :cond_d

    return-void

    .line 51
    :cond_d
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object p3

    .line 53
    invoke-virtual {p3}, Lcn/codemao/android/sketch/RectHelper;->getCanvasRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr v0, p1

    .line 54
    invoke-virtual {p3}, Lcn/codemao/android/sketch/RectHelper;->getCanvasRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p1, p2

    .line 57
    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p3}, Lcn/codemao/android/sketch/RectHelper;->getCanvasWidth()F

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p3}, Lcn/codemao/android/sketch/RectHelper;->getScale()F

    move-result v3

    div-float/2addr v0, v3

    sub-float/2addr v1, v0

    invoke-virtual {p2, v1}, Lcn/codemao/android/sketch/model/PointInfo;->setX(F)V

    .line 58
    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p3}, Lcn/codemao/android/sketch/RectHelper;->getCanvasHeight()F

    move-result v0

    div-float/2addr v0, v2

    invoke-virtual {p3}, Lcn/codemao/android/sketch/RectHelper;->getScale()F

    move-result p3

    div-float/2addr p1, p3

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcn/codemao/android/sketch/model/PointInfo;->setY(F)V

    return-void
.end method


# virtual methods
.method public changeStroke(Lcn/codemao/android/sketch/view/strokes/IStroke;)V
    .registers 4

    .line 189
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/strokes/IStroke;->getType()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->curSelectStroke:I

    .line 190
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-static {}, Lcn/codemao/android/sketch/model/ReportParams;->create()Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object v1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/strokes/IStroke;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/codemao/android/sketch/model/ReportParams;->setSpecialType(Ljava/lang/String;)Lcn/codemao/android/sketch/model/ReportParams;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/ReportParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v1, "特效笔类型"

    invoke-interface {v0, v1, p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->sendReport(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected doMotionEventDown(FFLandroid/graphics/Canvas;)V
    .registers 5

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventDown(FFLandroid/graphics/Canvas;)V

    .line 80
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->mStrokes:Landroid/util/SparseArray;

    iget v0, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->curSelectStroke:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/codemao/android/sketch/view/strokes/IStroke;

    if-eqz p3, :cond_1f

    .line 82
    invoke-virtual {p3}, Lcn/codemao/android/sketch/view/strokes/IStroke;->needCreateBitmap()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->toOragin(FFZ)V

    .line 83
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget p2, p1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p1, p1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p3, p2, p1}, Lcn/codemao/android/sketch/view/strokes/IStroke;->onTouchDown(FF)V

    :cond_1f
    return-void
.end method

.method protected doMotionEventMove(FFLandroid/graphics/Canvas;)V
    .registers 8

    .line 103
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventMove(FFLandroid/graphics/Canvas;)V

    .line 106
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->mStrokes:Landroid/util/SparseArray;

    iget v1, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->curSelectStroke:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/strokes/IStroke;

    if-eqz v0, :cond_5c

    .line 108
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->canvas1:Landroid/graphics/Canvas;

    if-nez v1, :cond_44

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/strokes/IStroke;->needCreateBitmap()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 109
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/sketch/RectHelper;->getCanvasWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v2

    invoke-interface {v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/sketch/RectHelper;->getCanvasHeight()F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->bitmap:Landroid/graphics/Bitmap;

    .line 110
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->canvas1:Landroid/graphics/Canvas;

    .line 113
    :cond_44
    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/strokes/IStroke;->needCreateBitmap()Z

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->toOragin(FFZ)V

    .line 114
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget p2, p1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p1, p1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/strokes/IStroke;->needCreateBitmap()Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->canvas1:Landroid/graphics/Canvas;

    :cond_59
    invoke-virtual {v0, p2, p1, p3}, Lcn/codemao/android/sketch/view/strokes/IStroke;->onTouchMove(FFLandroid/graphics/Canvas;)V

    :cond_5c
    return-void
.end method

.method protected doMotionEventUp(FFLandroid/graphics/Canvas;)V
    .registers 6

    .line 123
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventUp(FFLandroid/graphics/Canvas;)V

    .line 125
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->mStrokes:Landroid/util/SparseArray;

    iget v1, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->curSelectStroke:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/strokes/IStroke;

    if-eqz v0, :cond_27

    .line 127
    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/strokes/IStroke;->needCreateBitmap()Z

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->toOragin(FFZ)V

    .line 128
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->curTouchPoint:Lcn/codemao/android/sketch/model/PointInfo;

    iget p2, p1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p1, p1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/strokes/IStroke;->needCreateBitmap()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->canvas1:Landroid/graphics/Canvas;

    :cond_24
    invoke-virtual {v0, p2, p1, p3}, Lcn/codemao/android/sketch/view/strokes/IStroke;->onTouchUp(FFLandroid/graphics/Canvas;)V

    .line 132
    :cond_27
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->canvas1:Landroid/graphics/Canvas;

    const/4 p2, 0x0

    if-eqz p1, :cond_33

    .line 133
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    iput-object p2, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->bitmap:Landroid/graphics/Bitmap;

    .line 137
    :cond_33
    iput-object p2, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->canvas1:Landroid/graphics/Canvas;

    return-void
.end method

.method public doSomethingBeforeScale()V
    .registers 3

    .line 90
    invoke-super {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->doSomethingBeforeScale()V

    .line 92
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->mStrokes:Landroid/util/SparseArray;

    iget v1, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->curSelectStroke:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/strokes/IStroke;

    if-eqz v0, :cond_12

    .line 95
    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/strokes/IStroke;->doSomethingBeforeScale()V

    :cond_12
    return-void
.end method

.method public getMode()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 147
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_special_effect_pen:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 152
    sget v0, Lcn/codemao/android/sketch/R$drawable;->icon_scrawl:I

    return v0
.end method

.method public getTuyaBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 142
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V
    .registers 6

    .line 163
    check-cast p1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 164
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->mStrokes:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/codemao/android/sketch/view/strokes/IStroke;

    invoke-virtual {p4, p1, p2, p3}, Lcn/codemao/android/sketch/view/strokes/IStroke;->onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    return-void
.end method

.method public onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V
    .registers 5

    .line 176
    check-cast p1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 177
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->mStrokes:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/codemao/android/sketch/view/strokes/IStroke;

    invoke-virtual {p3, p1, p2}, Lcn/codemao/android/sketch/view/strokes/IStroke;->onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;F)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V
    .registers 7

    .line 170
    check-cast p2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 171
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->mStrokes:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/strokes/IStroke;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/codemao/android/sketch/view/strokes/IStroke;->onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V

    return-void
.end method

.method public setmStrokes(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcn/codemao/android/sketch/view/strokes/IStroke;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->mStrokes:Landroid/util/SparseArray;

    return-void
.end method

.method public toTouchRect(Landroid/graphics/RectF;)V
    .registers 8

    .line 65
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/RectHelper;->getCanvasWidth()F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    .line 66
    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/sketch/RectHelper;->getCanvasHeight()F

    move-result v2

    div-float/2addr v2, v1

    .line 67
    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcn/codemao/android/sketch/RectHelper;->getScale()F

    move-result v3

    iget-object v4, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v4}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcn/codemao/android/sketch/RectHelper;->getCanvasWidth()F

    move-result v4

    div-float/2addr v4, v1

    iget-object v5, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v5}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcn/codemao/android/sketch/RectHelper;->getCanvasHeight()F

    move-result v5

    div-float/2addr v5, v1

    invoke-static {p1, v3, v4, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FFF)V

    .line 68
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/sketch/RectHelper;->getCanvasRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/RectHelper;->getCanvasRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method
