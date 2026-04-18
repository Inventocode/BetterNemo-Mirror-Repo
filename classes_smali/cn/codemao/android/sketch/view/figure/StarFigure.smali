.class public Lcn/codemao/android/sketch/view/figure/StarFigure;
.super Lcn/codemao/android/sketch/view/figure/IFigure;
.source "StarFigure.java"


# instance fields
.field private cornerPathEffect:Landroid/graphics/CornerPathEffect;


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/figure/IFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    .line 28
    new-instance p1, Landroid/graphics/CornerPathEffect;

    const/high16 v0, 0x41200000  # 10.0f

    invoke-direct {p1, v0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/figure/StarFigure;->cornerPathEffect:Landroid/graphics/CornerPathEffect;

    return-void
.end method


# virtual methods
.method public createStickerFigureRectInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;
    .registers 20

    .line 47
    invoke-super/range {p0 .. p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->createStickerFigureRectInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    div-float v3, v2, v3

    .line 56
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v4

    .line 60
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .line 61
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    move-object/from16 v6, p0

    iget-object v7, v6, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/4 v8, 0x4

    invoke-interface {v7, v8}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getScaledSize(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v1, v7

    .line 64
    new-instance v7, Lcn/codemao/android/sketch/model/PointInfo;

    float-to-double v8, v5

    float-to-double v10, v3

    const-wide v12, 0x3fee28c731eb6950L  # 0.9424777960769379

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v14, v14, v10

    add-double/2addr v14, v8

    double-to-float v3, v14

    float-to-double v14, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v12, v12, v10

    sub-double v12, v14, v12

    double-to-float v1, v12

    invoke-direct {v7, v3, v1}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_4a
    const/4 v3, 0x5

    if-ge v1, v3, :cond_a2

    mul-int/lit8 v3, v1, 0x48

    add-int/lit8 v5, v3, 0x5a

    int-to-double v12, v5

    const-wide v16, 0x3f91df46a2529d39L  # 0.017453292519943295

    mul-double v12, v12, v16

    double-to-float v5, v12

    add-int/lit8 v3, v3, 0x36

    int-to-double v12, v3

    mul-double v12, v12, v16

    double-to-float v3, v12

    .line 70
    new-instance v7, Lcn/codemao/android/sketch/model/PointInfo;

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v10

    move-object v3, v0

    move/from16 v18, v1

    add-double v0, v8, v16

    double-to-float v0, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double v12, v12, v10

    sub-double v12, v14, v12

    double-to-float v1, v12

    invoke-direct {v7, v0, v1}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    float-to-double v12, v2

    move v7, v2

    float-to-double v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v12

    add-double v5, v8, v16

    double-to-float v5, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v12, v12, v1

    sub-double v1, v14, v12

    double-to-float v1, v1

    invoke-direct {v0, v5, v1}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v18, 0x1

    move-object/from16 v6, p0

    move-object v0, v3

    move v2, v7

    goto :goto_4a

    :cond_a2
    move-object v3, v0

    return-object v3
.end method

.method protected draw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
    .registers 5

    .line 135
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p3

    iget-object v0, p0, Lcn/codemao/android/sketch/view/figure/StarFigure;->cornerPathEffect:Landroid/graphics/CornerPathEffect;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 136
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 129
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_five_pointed_star:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 36
    sget v0, Lcn/codemao/android/sketch/R$drawable;->selector_shape_star:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public updatePath(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 6

    .line 113
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/view/figure/IFigure;->updatePath(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    const/4 v0, 0x0

    .line 115
    :goto_4
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 116
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    if-nez v0, :cond_26

    .line 118
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_31

    .line 120
    :cond_26
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 124
    :cond_34
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method
