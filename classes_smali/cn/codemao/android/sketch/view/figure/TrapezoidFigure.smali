.class public Lcn/codemao/android/sketch/view/figure/TrapezoidFigure;
.super Lcn/codemao/android/sketch/view/figure/IFigure;
.source "TrapezoidFigure.java"


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/figure/IFigure;-><init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V

    return-void
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

    const/high16 v3, 0x40400000  # 3.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x40800000  # 4.0f

    div-float/2addr v2, v3

    .line 47
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    .line 49
    new-instance v4, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v2, v6

    sub-float/2addr v5, v2

    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {v4, v5, v6}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v4, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float/2addr v5, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {v4, v5, v2}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v4, v5}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v4, v1}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected draw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
    .registers 4

    .line 93
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected getInitHeight()I
    .registers 2

    const/16 v0, 0x3e

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 77
    invoke-static {}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getInstance()Lcn/codemao/android/sketch/config/SketchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/config/SketchConfigManager;->getApp()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$string;->nemoide_sketch_trapezoid:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRes()I
    .registers 2

    .line 31
    sget v0, Lcn/codemao/android/sketch/R$drawable;->selector_shape_trapezoid:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public updatePath(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 6

    .line 61
    invoke-super {p0, p1}, Lcn/codemao/android/sketch/view/figure/IFigure;->updatePath(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    const/4 v0, 0x0

    .line 63
    :goto_4
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 64
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    if-nez v0, :cond_26

    .line 66
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_31

    .line 68
    :cond_26
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 72
    :cond_34
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method
