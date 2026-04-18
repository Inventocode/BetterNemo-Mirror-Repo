.class public Lcn/codemao/android/sketch/view/figure/PentagonFigure;
.super Lcn/codemao/android/sketch/view/figure/IFigure;
.source "PentagonFigure.java"


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/figure/IFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    return-void
.end method

.method public static fivePoints(FFF)[F
    .registers 14

    float-to-double v0, p0

    float-to-double v2, p2

    const-wide/high16 v4, 0x4032000000000000L  # 18.0

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v6, v6, v2

    sub-double v6, v0, v6

    double-to-float v6, v6

    .line 74
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v7, v7, v2

    add-double/2addr v0, v7

    double-to-float v0, v0

    float-to-double v7, p1

    .line 75
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, v2

    add-double/2addr v4, v7

    double-to-float v1, v4

    sub-float v2, v0, v6

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    .line 76
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const/high16 v9, 0x40000000  # 2.0f

    div-float/2addr p2, v9

    float-to-double v9, p2

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v7, v2

    double-to-float v2, v7

    add-float v3, p0, p2

    sub-float p2, p0, p2

    const/16 v4, 0xc

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p0, v4, v5

    const/4 v5, 0x1

    aput p1, v4, v5

    const/4 v5, 0x2

    aput v3, v4, v5

    const/4 v3, 0x3

    aput v2, v4, v3

    const/4 v3, 0x4

    aput v0, v4, v3

    const/4 v0, 0x5

    aput v1, v4, v0

    const/4 v0, 0x6

    aput v6, v4, v0

    const/4 v0, 0x7

    aput v1, v4, v0

    const/16 v0, 0x8

    aput p2, v4, v0

    const/16 p2, 0x9

    aput v2, v4, p2

    const/16 p2, 0xa

    aput p0, v4, p2

    const/16 p0, 0xb

    aput p1, v4, p0

    return-object v4
.end method


# virtual methods
.method public createStickerFigureRectInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;
    .registers 8

    .line 42
    invoke-super {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->createStickerFigureRectInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 47
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    .line 49
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    invoke-static {v4, v1, v2}, Lcn/codemao/android/sketch/view/figure/PentagonFigure;->fivePoints(FFF)[F

    move-result-object v1

    .line 50
    new-instance v2, Lcn/codemao/android/sketch/model/PointInfo;

    const/4 v4, 0x0

    aget v4, v1, v4

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-direct {v2, v4, v5}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lcn/codemao/android/sketch/model/PointInfo;

    aget v4, v1, v6

    const/4 v5, 0x3

    aget v5, v1, v5

    invoke-direct {v2, v4, v5}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v2, Lcn/codemao/android/sketch/model/PointInfo;

    const/4 v4, 0x4

    aget v4, v1, v4

    const/4 v5, 0x5

    aget v5, v1, v5

    invoke-direct {v2, v4, v5}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v2, Lcn/codemao/android/sketch/model/PointInfo;

    const/4 v4, 0x6

    aget v4, v1, v4

    const/4 v5, 0x7

    aget v5, v1, v5

    invoke-direct {v2, v4, v5}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v2, Lcn/codemao/android/sketch/model/PointInfo;

    const/16 v4, 0x8

    aget v4, v1, v4

    const/16 v5, 0x9

    aget v1, v1, v5

    invoke-direct {v2, v4, v1}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected draw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
    .registers 4

    .line 106
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 100
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_pentagon:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 31
    sget v0, Lcn/codemao/android/sketch/R$drawable;->selector_shape_pentagon:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public updatePath(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 6

    .line 84
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/view/figure/IFigure;->updatePath(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    const/4 v0, 0x0

    .line 86
    :goto_4
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 87
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    if-nez v0, :cond_26

    .line 89
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_31

    .line 91
    :cond_26
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 95
    :cond_34
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method
