.class public Lcn/codemao/android/sketch/view/paint/PenPaint;
.super Lcn/codemao/android/sketch/view/paint/IPaint;
.source "PenPaint.java"


# instance fields
.field protected penPath:Landroid/graphics/Path;

.field protected penPointInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/PointInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public bindPaint(Landroid/graphics/Paint;)V
    .registers 3

    .line 35
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->bindPaint(Landroid/graphics/Paint;)V

    .line 36
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public clearPath()V
    .registers 2

    .line 110
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 111
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected doMotionEventDown(FFLandroid/graphics/Canvas;)V
    .registers 4

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventDown(FFLandroid/graphics/Canvas;)V

    .line 42
    invoke-virtual {p0, p1, p2}, Lcn/codemao/android/sketch/view/paint/PenPaint;->resetPaint(FF)V

    return-void
.end method

.method protected doMotionEventMove(FFLandroid/graphics/Canvas;)V
    .registers 12

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventMove(FFLandroid/graphics/Canvas;)V

    .line 55
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_158

    .line 56
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 57
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/PointInfo;

    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_37

    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/PointInfo;

    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_158

    .line 58
    :cond_37
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-le v0, v2, :cond_ce

    .line 59
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v3, v4

    div-float/2addr v3, v1

    iget-object v4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v5, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v4, v5

    div-float/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 60
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v5, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v5, p1

    div-float/2addr v5, v1

    iget-object v6, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v2, p2

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_136

    .line 62
    :cond_ce
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 63
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v5, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v5, p1

    div-float/2addr v5, v1

    iget-object v6, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v2, p2

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 65
    :goto_136
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/PenPaint;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 66
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setNeedUpdatePen(Z)V

    .line 68
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    :cond_158
    return-void
.end method

.method protected doMotionEventUp(FFLandroid/graphics/Canvas;)V
    .registers 4

    .line 85
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->doMotionEventUp(FFLandroid/graphics/Canvas;)V

    .line 86
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/PenPaint;->saveDrawingPath()V

    return-void
.end method

.method public doSomethingBeforeScale()V
    .registers 1

    .line 79
    invoke-super {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->doSomethingBeforeScale()V

    .line 80
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/PenPaint;->saveDrawingPath()V

    return-void
.end method

.method public drawCustomCenter(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;Landroid/graphics/RectF;)V
    .registers 14

    .line 192
    check-cast p2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 193
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 201
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    const/4 v1, 0x0

    .line 202
    :goto_f
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_98

    if-nez v1, :cond_3d

    .line 204
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 205
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    .line 204
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_94

    .line 207
    :cond_3d
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 208
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, v6, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/codemao/android/sketch/model/PointInfo;

    iget v8, v8, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/codemao/android/sketch/model/PointInfo;

    iget v7, v7, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v8, v7

    div-float/2addr v8, v6

    .line 207
    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_94
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f

    .line 211
    :cond_98
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    invoke-virtual {v0, v1, v2, p3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 212
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 216
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected getDrawPaint()Landroid/graphics/Paint;
    .registers 2

    .line 74
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 117
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_doodle_pen:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 122
    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icon_pen:I

    return v0
.end method

.method public onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V
    .registers 8

    .line 133
    check-cast p1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 134
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    const/4 p4, 0x0

    .line 135
    :goto_a
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_3e

    .line 136
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v1, p2

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v2, p3

    invoke-virtual {v0, v1, v2}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_a

    :cond_3e
    return-void
.end method

.method public onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V
    .registers 10

    .line 145
    check-cast p1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 146
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    mul-float v0, v0, p2

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p3, 0x0

    .line 149
    :goto_14
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_66

    .line 150
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    mul-float v1, v1, p2

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float v2, p2, v2

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    mul-float v3, v3, p2

    iget-object v5, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mSketchControll:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v5}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v2, v2, v5

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_14

    :cond_66
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V
    .registers 13

    .line 156
    check-cast p2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 157
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 165
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    const/4 p4, 0x0

    .line 166
    :goto_f
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, 0x40000000  # 2.0f

    if-ge p4, v0, :cond_98

    if-nez p4, :cond_3f

    .line 168
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 169
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    .line 168
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_94

    .line 171
    :cond_3f
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 172
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v5

    add-int/lit8 v6, p4, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v4, v5

    div-float/2addr v4, v1

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, v6, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v5, v6

    div-float/2addr v5, v1

    .line 171
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    :goto_94
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_f

    .line 175
    :cond_98
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result p4

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v2

    invoke-interface {v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p3, p4, v0, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 176
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 180
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public resetPaint(FF)V
    .registers 5

    .line 46
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/PenPaint;->clearPath()V

    .line 47
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    new-instance v1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v1, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    return-void
.end method

.method protected saveDrawingPath()V
    .registers 6

    .line 91
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_a

    return-void

    .line 94
    :cond_a
    new-instance v0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/PenPaint;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    new-instance v2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/16 v3, 0x63

    invoke-direct {v2, v3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;-><init>(I)V

    .line 97
    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 v3, 0x3e9

    .line 98
    invoke-virtual {v2, v3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setPaintType(I)V

    .line 99
    invoke-virtual {v2, v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmPaint(Landroid/graphics/Paint;)V

    .line 100
    invoke-virtual {v2, p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setiPaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    .line 101
    invoke-static {v2}, Lcn/codemao/android/sketch/utils/RectUtil;->getPathRect(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    .line 102
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->insertDrawingList(Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V

    .line 103
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/PenPaint;->clearPath()V

    .line 105
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setNeedUpdatePen(Z)V

    .line 106
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method
