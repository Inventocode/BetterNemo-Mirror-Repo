.class public Lcn/codemao/android/sketch/view/figure/HalfCircleFigure;
.super Lcn/codemao/android/sketch/view/figure/IFigure;
.source "HalfCircleFigure.java"


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/figure/IFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    return-void
.end method


# virtual methods
.method public createStickerFigureRectInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;
    .registers 11

    .line 47
    invoke-super {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->createStickerFigureRectInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 51
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 53
    iget v4, v1, Landroid/graphics/RectF;->left:F

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v4, v2

    .line 54
    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    .line 58
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    .line 59
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v5

    .line 64
    new-instance v6, Lcn/codemao/android/sketch/model/PointInfo;

    sub-float v7, v4, v2

    invoke-direct {v6, v7, v1}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v6, Lcn/codemao/android/sketch/model/PointInfo;

    sub-float v8, v1, v2

    invoke-direct {v6, v4, v8}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v6, Lcn/codemao/android/sketch/model/PointInfo;

    add-float v9, v4, v2

    invoke-direct {v6, v9, v1}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diff:F

    mul-float v6, v6, v2

    sub-float v6, v1, v6

    invoke-direct {v3, v7, v6}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diff:F

    mul-float v6, v6, v2

    sub-float v6, v4, v6

    invoke-direct {v3, v6, v8}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v6, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diff:F

    mul-float v6, v6, v2

    add-float/2addr v4, v6

    invoke-direct {v3, v4, v8}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diff:F

    mul-float v2, v2, v4

    sub-float/2addr v1, v2

    invoke-direct {v3, v9, v1}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected draw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
    .registers 4

    .line 110
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected getInitHeight()I
    .registers 2

    const/16 v0, 0x26

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 104
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_semicircle:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 32
    sget v0, Lcn/codemao/android/sketch/R$drawable;->selector_shape_half_circle:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method protected minHelpRectHeight()I
    .registers 2

    const/16 v0, 0x22

    return v0
.end method

.method public updatePath(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 12

    .line 87
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    .line 91
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v9, 0x0

    .line 92
    :goto_24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_73

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v9, v2, :cond_36

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    goto :goto_70

    :cond_36
    mul-int/lit8 v2, v9, 0x2

    .line 96
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

    add-int/lit8 v2, v9, 0x1

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

    :goto_70
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    :cond_73
    return-void
.end method
