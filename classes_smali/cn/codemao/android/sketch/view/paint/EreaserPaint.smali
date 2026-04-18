.class public Lcn/codemao/android/sketch/view/paint/EreaserPaint;
.super Lcn/codemao/android/sketch/view/paint/PenPaint;
.source "EreaserPaint.java"


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 34
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/paint/PenPaint;-><init>()V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 40
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public bindReEditPaint(Lcn/codemao/android/sketch/view/paint/ReEditPaint;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    return-void
.end method

.method public bindSketchControll(Lcn/codemao/android/sketch/view/paint/SketchControll;I)V
    .registers 4

    .line 45
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/view/paint/IPaint;->bindSketchControll(Lcn/codemao/android/sketch/view/paint/SketchControll;I)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_13

    .line 47
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->paint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1f

    .line 49
    :cond_13
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->paint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_1f
    return-void
.end method

.method protected doMotionEventDown(FFLandroid/graphics/Canvas;)V
    .registers 4

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/PenPaint;->doMotionEventDown(FFLandroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getReEditPaint()Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    move-result-object p3

    if-eqz p3, :cond_18

    .line 69
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getReEditPaint()Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->onEraserDown(FF)V

    :cond_18
    return-void
.end method

.method protected doMotionEventMove(FFLandroid/graphics/Canvas;)V
    .registers 5

    .line 76
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getReEditPaint()Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 77
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getReEditPaint()Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->onEraserMove(FF)V

    .line 79
    :cond_15
    invoke-virtual {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->drawEraserPath(FFLandroid/graphics/Canvas;)V

    return-void
.end method

.method public drawCustomCenter(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;Landroid/graphics/RectF;)V
    .registers 6

    .line 191
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getBGColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/PenPaint;->drawCustomCenter(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;Landroid/graphics/RectF;)V

    return-void
.end method

.method public drawEraserPath(FFLandroid/graphics/Canvas;)V
    .registers 12

    .line 84
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getBGColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16d

    .line 88
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 89
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

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/PointInfo;

    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_16d

    .line 90
    :cond_4c
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-le v0, v2, :cond_e3

    .line 91
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

    .line 92
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

    goto :goto_14b

    .line 94
    :cond_e3
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

    .line 95
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

    .line 97
    :goto_14b
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 98
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setNeedUpdatePen(Z)V

    .line 100
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    :cond_16d
    return-void
.end method

.method public drawEraserPathWithScale(FFLandroid/graphics/Canvas;F)V
    .registers 12

    .line 106
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/IPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getBGColor()I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_16e

    .line 110
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    .line 111
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/codemao/android/sketch/model/PointInfo;

    iget p4, p4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float p4, p4, p1

    if-nez p4, :cond_4d

    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/codemao/android/sketch/model/PointInfo;

    iget p4, p4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    cmpl-float p4, p4, p2

    if-eqz p4, :cond_16e

    .line 112
    :cond_4d
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const/high16 v0, 0x40000000  # 2.0f

    if-le p4, v1, :cond_e4

    .line 113
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v2, v3

    div-float/2addr v2, v0

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v3, v4

    div-float/2addr v3, v0

    invoke-virtual {p4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 114
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v4, p1

    div-float/2addr v4, v0

    iget-object v5, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v1, p2

    div-float/2addr v1, v0

    invoke-virtual {p4, v2, v3, v4, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_14c

    .line 116
    :cond_e4
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p4, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 117
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v4, p1

    div-float/2addr v4, v0

    iget-object v5, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v1, p2

    div-float/2addr v1, v0

    invoke-virtual {p4, v2, v3, v4, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 119
    :goto_14c
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 120
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    new-instance p4, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p4, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setNeedUpdatePen(Z)V

    .line 122
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    invoke-interface {p1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    :cond_16e
    return-void
.end method

.method protected getDrawPaint()Landroid/graphics/Paint;
    .registers 2

    .line 61
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 165
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_eraser:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/PointInfo;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 180
    sget v0, Lcn/codemao/android/sketch/R$mipmap;->icon_eraser:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V
    .registers 7

    .line 185
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getBGColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Lcn/codemao/android/sketch/view/paint/PenPaint;->onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V

    return-void
.end method

.method protected saveDrawingPath()V
    .registers 7

    .line 135
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getReEditPaint()Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 136
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getReEditPaint()Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->saveEraserPath()Lcn/codemao/android/sketch/model/StickerFigureInfo;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 138
    :goto_18
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_22

    return-void

    .line 141
    :cond_22
    new-instance v1, Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    const/4 v2, 0x1

    .line 142
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    new-instance v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/16 v4, 0x63

    invoke-direct {v3, v4}, Lcn/codemao/android/sketch/model/StickerFigureInfo;-><init>(I)V

    .line 144
    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 v4, 0x3ea

    .line 145
    invoke-virtual {v3, v4}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setPaintType(I)V

    .line 146
    invoke-virtual {v3, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmPaint(Landroid/graphics/Paint;)V

    .line 147
    invoke-virtual {v3, p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setiPaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    .line 148
    invoke-static {v3}, Lcn/codemao/android/sketch/utils/RectUtil;->getPathRect(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    .line 150
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/EreaserPaint;->reEditPaint:Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-eqz v1, :cond_54

    .line 151
    invoke-virtual {v3, v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setBindObject(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    .line 155
    :cond_54
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->insertDrawingList(Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V

    .line 156
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 157
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/PenPaint;->penPointInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setNeedUpdatePen(Z)V

    .line 160
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method
