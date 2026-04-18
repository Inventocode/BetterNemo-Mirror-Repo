.class public Lcn/codemao/android/sketch/view/figure/HeartFigure;
.super Lcn/codemao/android/sketch/view/figure/IFigure;
.source "HeartFigure.java"


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/figure/IFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    return-void
.end method


# virtual methods
.method public createStickerFigureRectInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;
    .registers 14

    .line 43
    invoke-super {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->createStickerFigureRectInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 47
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 49
    iget v4, v1, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v4, v2

    .line 50
    iget v1, v1, Landroid/graphics/RectF;->top:F

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    .line 54
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    .line 55
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v6

    const v7, 0x3e4ccccd  # 0.2f

    mul-float v7, v7, v2

    .line 62
    new-instance v8, Lcn/codemao/android/sketch/model/PointInfo;

    sub-float v9, v1, v2

    sub-float/2addr v9, v7

    invoke-direct {v8, v4, v9}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v8, Lcn/codemao/android/sketch/model/PointInfo;

    add-float v10, v4, v2

    sub-float v11, v1, v7

    invoke-direct {v8, v10, v11}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v8, Lcn/codemao/android/sketch/model/PointInfo;

    add-float v12, v1, v2

    div-float v5, v7, v5

    sub-float v5, v12, v5

    invoke-direct {v8, v4, v5}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v5, Lcn/codemao/android/sketch/model/PointInfo;

    sub-float v8, v4, v2

    invoke-direct {v5, v8, v11}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v11, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diff:F

    mul-float v11, v11, v2

    add-float/2addr v11, v4

    invoke-direct {v5, v11, v9}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v11, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diff:F

    mul-float v11, v11, v2

    sub-float v11, v1, v11

    sub-float/2addr v11, v7

    invoke-direct {v5, v10, v11}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v5, Lcn/codemao/android/sketch/model/PointInfo;

    add-float/2addr v10, v7

    iget v11, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diff:F

    mul-float v11, v11, v2

    add-float/2addr v11, v1

    sub-float/2addr v11, v7

    invoke-direct {v5, v10, v11}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v10, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diff:F

    mul-float v10, v10, v2

    add-float/2addr v10, v4

    sub-float/2addr v12, v7

    invoke-direct {v5, v10, v12}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v10, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diff:F

    mul-float v10, v10, v2

    sub-float v10, v4, v10

    invoke-direct {v5, v10, v12}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v5, Lcn/codemao/android/sketch/model/PointInfo;

    sub-float v10, v8, v7

    iget v11, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diff:F

    mul-float v11, v11, v2

    add-float/2addr v11, v1

    sub-float/2addr v11, v7

    invoke-direct {v5, v10, v11}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v10, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diff:F

    mul-float v10, v10, v2

    sub-float/2addr v1, v10

    sub-float/2addr v1, v7

    invoke-direct {v5, v8, v1}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diff:F

    mul-float v5, v5, v2

    sub-float/2addr v4, v5

    invoke-direct {v1, v4, v9}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 82
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    const/high16 v7, 0x3f000000  # 0.5f

    mul-float v7, v7, v2

    add-float/2addr v5, v7

    iput v5, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    const/4 v4, 0x3

    .line 83
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v7, v5, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    const v8, 0x3cf5c28f  # 0.03f

    mul-float v8, v8, v2

    add-float/2addr v7, v8

    iput v7, v5, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    const/4 v5, 0x1

    .line 84
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v5, v8

    iput v5, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 86
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    const v5, 0x3e051eb8  # 0.13f

    mul-float v5, v5, v2

    add-float/2addr v3, v5

    iput v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    const/4 v1, 0x2

    .line 88
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    const v7, 0x3ea8f5c3  # 0.33f

    mul-float v7, v7, v2

    sub-float/2addr v3, v7

    iput v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 90
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    const v4, 0x3edc28f6  # 0.43f

    mul-float v2, v2, v4

    sub-float/2addr v3, v2

    iput v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    const/4 v1, 0x4

    .line 91
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v3, v2

    iput v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    const/4 v1, 0x5

    .line 92
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v2, v7

    iput v2, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    const/4 v1, 0x7

    .line 95
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v2, v5

    iput v2, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    return-object v0
.end method

.method protected draw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
    .registers 4

    .line 125
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 119
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_heart_shape:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 32
    sget v0, Lcn/codemao/android/sketch/R$drawable;->selector_shape_heart:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public updatePath(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 13

    .line 102
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v1

    .line 104
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p1

    const/4 v9, 0x0

    .line 105
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v10, 0x0

    .line 106
    :goto_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_a6

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v10, v2, :cond_68

    mul-int/lit8 v2, v10, 0x2

    .line 108
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v7, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v8, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_a2

    :cond_68
    mul-int/lit8 v2, v10, 0x2

    .line 111
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/codemao/android/sketch/model/PointInfo;

    iget v5, v5, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-int/lit8 v2, v10, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/codemao/android/sketch/model/PointInfo;

    iget v7, v7, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v8, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_a2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_21

    :cond_a6
    return-void
.end method
