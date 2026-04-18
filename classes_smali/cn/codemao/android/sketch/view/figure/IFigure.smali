.class public abstract Lcn/codemao/android/sketch/view/figure/IFigure;
.super Ljava/lang/Object;
.source "IFigure.java"


# instance fields
.field protected diff:F

.field private diffX:F

.field private diffY:F

.field private endRotateAngle:F

.field protected figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

.field private pointInfo:Lcn/codemao/android/sketch/model/PointInfo;

.field protected sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

.field private startRotateAngle:F

.field protected startX:F

.field protected startY:F


# direct methods
.method public constructor <init>(Lcn/codemao/android/sketch/view/paint/FigurePaint;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f0d6289

    .line 37
    iput v0, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diff:F

    .line 44
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->pointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    .line 48
    iput-object p1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    .line 49
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    return-void
.end method


# virtual methods
.method public addFigure()V
    .registers 4

    .line 66
    iget-object v0, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->createStickerFigureRectInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/codemao/android/sketch/view/paint/FigurePaint;->addFigure(Lcn/codemao/android/sketch/model/StickerFigureInfo;Ljava/lang/String;)V

    return-void
.end method

.method protected configHelpRectBeforeDraw(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 9

    .line 200
    iget-object v0, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v0

    .line 203
    iget-object v1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getHelpRectVerticlePadding()I

    move-result v2

    invoke-interface {v1, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getScaledSize(I)I

    move-result v1

    .line 205
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    sub-float/2addr v3, v0

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v0

    int-to-float v1, v1

    sub-float/2addr v4, v1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v0

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v0

    add-float/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 207
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->minHelpRectWidth()I

    move-result v2

    invoke-interface {v1, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v1

    .line 210
    iget-object v2, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->minHelpRectHeight()I

    move-result v3

    invoke-interface {v2, v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v2

    .line 212
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_72

    .line 213
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 214
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v3, v1

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 217
    :cond_72
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    int-to-float v3, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_94

    .line 218
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 219
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 223
    :cond_94
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 224
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_ad
    return-void
.end method

.method public createStickerFigureRectInfo()Lcn/codemao/android/sketch/model/StickerFigureInfo;
    .registers 9

    .line 71
    new-instance v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getType()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;-><init>(I)V

    const/4 v1, 0x0

    .line 72
    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setDrawing(Z)V

    .line 73
    iget-object v1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->figurePaint:Lcn/codemao/android/sketch/view/paint/FigurePaint;

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setiPaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    .line 74
    iget-object v1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getInitHeight()I

    move-result v2

    invoke-interface {v1, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v1

    .line 75
    iget-object v2, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getInitWidth()I

    move-result v3

    invoke-interface {v2, v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v2

    .line 76
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v4, v2

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v6, v1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    add-float/2addr v7, v2

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v2, v1

    invoke-virtual {v3, v4, v6, v7, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-object v0
.end method

.method protected abstract draw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
.end method

.method public drawFigure(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V
    .registers 9

    .line 101
    invoke-virtual {p0, p2}, Lcn/codemao/android/sketch/view/figure/IFigure;->configHelpRectBeforeDraw(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    .line 103
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 104
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleX()F

    move-result v1

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleY()F

    move-result v2

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 105
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 106
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 108
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v0

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 109
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 110
    invoke-virtual {p0, p2}, Lcn/codemao/android/sketch/view/figure/IFigure;->updatePath(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/figure/IFigure;->draw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V

    return-void
.end method

.method protected getHeight()I
    .registers 2

    .line 58
    iget-object v0, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v0

    return v0
.end method

.method public getHelpRectVerticlePadding()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getInitHeight()I
    .registers 2

    const/16 v0, 0x4c

    return v0
.end method

.method protected getInitWidth()I
    .registers 2

    const/16 v0, 0x4c

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRes()I
.end method

.method public abstract getType()I
.end method

.method protected getWidth()I
    .registers 2

    .line 53
    iget-object v0, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v0

    return v0
.end method

.method protected minHelpRectHeight()I
    .registers 2

    const/16 v0, 0x32

    return v0
.end method

.method protected minHelpRectWidth()I
    .registers 2

    const/16 v0, 0x32

    return v0
.end method

.method public moveFigure(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFZI)V
    .registers 9

    .line 270
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleX()F

    move-result p4

    const/high16 p5, -0x40800000  # -1.0f

    cmpl-float p4, p4, p5

    if-nez p4, :cond_c

    neg-float p4, p2

    goto :goto_d

    :cond_c
    move p4, p2

    .line 273
    :goto_d
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getScaleY()F

    move-result v0

    cmpl-float p5, v0, p5

    if-nez p5, :cond_17

    neg-float p5, p3

    goto :goto_18

    :cond_17
    move p5, p3

    .line 276
    :goto_18
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    neg-float p4, p4

    neg-float p5, p5

    invoke-virtual {v0, p4, p5}, Landroid/graphics/RectF;->offset(FF)V

    const/4 p4, 0x0

    const/4 p5, 0x0

    .line 280
    :goto_23
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_57

    .line 281
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v1, p2

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v2, p3

    invoke-virtual {v0, v1, v2}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_23

    .line 284
    :cond_57
    :goto_57
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p4, p5, :cond_8b

    .line 285
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/PointInfo;

    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v0, p2

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v1, p3

    invoke-virtual {p5, v0, v1}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_57

    :cond_8b
    return-void
.end method

.method public onCanvasScale(Lcn/codemao/android/sketch/model/StickerFigureInfo;FZ)V
    .registers 10

    .line 314
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getHeight()I

    move-result v1

    invoke-static {p3, p2, v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    .line 319
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p3, v0

    .line 320
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/figure/IFigure;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 321
    :goto_1f
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 322
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    .line 323
    iget v4, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v4, p3

    mul-float v4, v4, p2

    add-float/2addr v4, p3

    iget v5, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v5, v1

    mul-float v5, v5, p2

    add-float/2addr v5, v1

    invoke-virtual {v3, v4, v5}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 327
    :cond_45
    :goto_45
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6b

    .line 328
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    .line 329
    iget v3, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v3, p3

    mul-float v3, v3, p2

    add-float/2addr v3, p3

    iget v4, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v4, v1

    mul-float v4, v4, p2

    add-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_6b
    return-void
.end method

.method public onRotateAndScale(Lcn/codemao/android/sketch/model/StickerFigureInfo;FF)V
    .registers 5

    .line 418
    iget-object v0, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v0

    neg-float p2, p2

    neg-float p3, p3

    invoke-virtual {v0, p1, p2, p3}, Lcn/codemao/android/sketch/RectHelper;->updateRotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    return-void
.end method

.method public onSingleScale(Lcn/codemao/android/sketch/model/StickerFigureInfo;IFF)V
    .registers 12

    .line 352
    iget v0, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diffX:F

    add-float v4, p3, v0

    .line 353
    iget p3, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diffY:F

    add-float v5, p4, p3

    .line 356
    iget-object p3, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->pointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p3, v4}, Lcn/codemao/android/sketch/model/PointInfo;->setX(F)V

    .line 357
    iget-object p3, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->pointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p3, v5}, Lcn/codemao/android/sketch/model/PointInfo;->setY(F)V

    .line 359
    iget-object p3, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->pointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v1

    neg-float v1, v1

    invoke-static {p3, p4, v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    const/16 p3, 0x4e2b

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq p2, p3, :cond_b3

    const/16 p3, 0x4e2e

    if-eq p2, p3, :cond_8d

    const/16 p3, 0x4e30

    if-eq p2, p3, :cond_67

    const/16 p3, 0x4e31

    if-eq p2, p3, :cond_41

    goto/16 :goto_d9

    .line 383
    :cond_41
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->pointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    cmpl-float p3, p3, v2

    if-lez p3, :cond_50

    goto :goto_51

    :cond_50
    const/4 p4, 0x0

    :goto_51
    if-eqz p4, :cond_d9

    .line 384
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    iget-object p4, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p4, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getScaledSize(I)I

    move-result p4

    int-to-float p4, p4

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_d9

    return-void

    .line 389
    :cond_67
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->pointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    cmpg-float p3, p3, v2

    if-gez p3, :cond_76

    goto :goto_77

    :cond_76
    const/4 p4, 0x0

    :goto_77
    if-eqz p4, :cond_d9

    .line 390
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    iget-object p4, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p4, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getScaledSize(I)I

    move-result p4

    int-to-float p4, p4

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_d9

    return-void

    .line 367
    :cond_8d
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->pointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float p3, p3, v2

    if-lez p3, :cond_9c

    goto :goto_9d

    :cond_9c
    const/4 p4, 0x0

    :goto_9d
    if-eqz p4, :cond_d9

    .line 369
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    iget-object p4, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p4, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getScaledSize(I)I

    move-result p4

    int-to-float p4, p4

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_d9

    return-void

    .line 374
    :cond_b3
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->pointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpg-float p3, p3, v2

    if-gez p3, :cond_c2

    goto :goto_c3

    :cond_c2
    const/4 p4, 0x0

    :goto_c3
    if-eqz p4, :cond_d9

    .line 376
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    iget-object p4, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p4, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getScaledSize(I)I

    move-result p4

    int-to-float p4, p4

    cmpg-float p3, p3, p4

    if-gtz p3, :cond_d9

    return-void

    .line 399
    :cond_d9
    :goto_d9
    iget-object p3, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object p3

    iget-object p4, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p4, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getScaledSize(I)I

    move-result v6

    move-object v1, p3

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcn/codemao/android/sketch/RectHelper;->updateFigureScale(Lcn/codemao/android/sketch/model/StickerFigureInfo;IFFI)V

    return-void
.end method

.method public onTouchDown(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V
    .registers 6

    .line 119
    iput p2, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->startX:F

    .line 120
    iput p3, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->startY:F

    if-nez p1, :cond_7

    return-void

    .line 122
    :cond_7
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result p2

    iput p2, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->startRotateAngle:F

    .line 124
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    .line 125
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    const/16 p2, 0x4e2b

    const/high16 p3, 0x40000000  # 2.0f

    const/4 v0, 0x4

    if-eq p4, p2, :cond_88

    const/16 p2, 0x4e2e

    if-eq p4, p2, :cond_6a

    const/16 p2, 0x4e30

    if-eq p4, p2, :cond_4d

    const/16 p2, 0x4e31

    if-eq p4, p2, :cond_2f

    goto :goto_a4

    .line 143
    :cond_2f
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, p3

    iput p1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diffY:F

    goto :goto_a4

    .line 139
    :cond_4d
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    div-float/2addr p2, p3

    iput p2, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diffY:F

    goto :goto_a4

    .line 136
    :cond_6a
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, p3

    iput p1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diffX:F

    goto :goto_a4

    .line 130
    :cond_88
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p1, v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    div-float/2addr p2, p3

    iput p2, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->diffX:F

    :goto_a4
    return-void
.end method

.method public onTouchMove(FFI)V
    .registers 4

    return-void
.end method

.method public onTouchUp(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFI)V
    .registers 14

    if-nez p1, :cond_3

    return-void

    .line 165
    :cond_3
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->endRotateAngle:F

    const/16 v0, 0x7d3

    if-eq p4, v0, :cond_55

    const/16 v0, 0x7d4

    if-eq p4, v0, :cond_3a

    const/16 v0, 0x4e2b

    if-eq p4, v0, :cond_22

    const/16 v0, 0x4e2e

    if-eq p4, v0, :cond_22

    const/16 v0, 0x4e30

    if-eq p4, v0, :cond_22

    const/16 v0, 0x4e31

    if-eq p4, v0, :cond_22

    goto :goto_69

    .line 183
    :cond_22
    iget-object v0, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getFigureUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object v0

    new-instance v8, Lcn/codemao/android/sketch/action/SingleScaleAction;

    iget v4, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->startX:F

    iget v5, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->startY:F

    move-object v1, v8

    move-object v2, p1

    move v3, p4

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcn/codemao/android/sketch/action/SingleScaleAction;-><init>(Lcn/codemao/android/sketch/model/StickerFigureInfo;IFFFF)V

    invoke-virtual {v0, v8}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    goto :goto_69

    .line 175
    :cond_3a
    iget-object p4, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p4}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getFigureUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p4

    new-instance v8, Lcn/codemao/android/sketch/action/RotateAndScaleAction;

    iget v2, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->startX:F

    iget v3, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->startY:F

    iget v6, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->startRotateAngle:F

    iget v7, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->endRotateAngle:F

    move-object v0, v8

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcn/codemao/android/sketch/action/RotateAndScaleAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFFFFF)V

    invoke-virtual {p4, v8}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    goto :goto_69

    .line 170
    :cond_55
    iget-object p4, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p4}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getFigureUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p4

    new-instance v0, Lcn/codemao/android/sketch/action/FigureMoveAction;

    iget v1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->startX:F

    sub-float/2addr p2, v1

    iget v1, p0, Lcn/codemao/android/sketch/view/figure/IFigure;->startY:F

    sub-float/2addr p3, v1

    invoke-direct {v0, p1, p2, p3}, Lcn/codemao/android/sketch/action/FigureMoveAction;-><init>(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V

    invoke-virtual {p4, v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    :goto_69
    return-void
.end method

.method public updatePath(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 2

    return-void
.end method
