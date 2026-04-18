.class public Lcn/codemao/android/sketch/view/figure/MoonFigure;
.super Lcn/codemao/android/sketch/view/figure/IFigure;
.source "MoonFigure.java"


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/figure/IFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
    .registers 24

    .line 45
    invoke-virtual/range {p2 .. p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-nez v1, :cond_15

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    goto :goto_16

    :cond_15
    move-wide v5, v3

    :goto_16
    const-wide v7, 0x3fe3333340000000L  # 0.6000000238418579

    mul-double v7, v7, v5

    .line 51
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual/range {p2 .. p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const-wide/high16 v9, 0x4000000000000000L  # 2.0

    .line 53
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    sub-double/2addr v11, v13

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    add-double/2addr v11, v13

    mul-double v13, v7, v9

    div-double/2addr v11, v13

    sub-double v13, v7, v11

    double-to-float v13, v13

    .line 57
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    move-wide/from16 v16, v3

    float-to-double v2, v13

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    sub-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v4, v14

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v14

    .line 61
    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    .line 63
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    add-float/2addr v15, v13

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    add-float/2addr v0, v4

    invoke-virtual {v14, v15, v0}, Landroid/graphics/Path;->moveTo(FF)V

    div-double v2, v2, v16

    .line 65
    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    .line 68
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x43b40000  # 360.0f

    const/high16 v3, 0x40000000  # 2.0f

    mul-float v3, v3, v0

    sub-float/2addr v2, v3

    div-double/2addr v11, v5

    .line 76
    invoke-static {v11, v12}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    .line 79
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L  # 180.0

    add-double/2addr v5, v3

    double-to-float v5, v5

    mul-double v3, v3, v9

    double-to-float v3, v3

    .line 85
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v6, 0x41000000  # 8.0f

    div-float/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    const/4 v4, 0x0

    .line 87
    invoke-virtual {v14, v1, v0, v2, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    double-to-float v0, v7

    .line 89
    invoke-virtual {v1, v0, v6}, Landroid/graphics/RectF;->offset(FF)V

    neg-float v0, v3

    .line 91
    invoke-virtual {v14, v1, v5, v0, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 93
    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    .line 95
    invoke-virtual/range {p2 .. p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v14, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 102
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_crescent:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 32
    sget v0, Lcn/codemao/android/sketch/R$drawable;->selector_shape_moon:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method
