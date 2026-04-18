.class public abstract Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;
.super Lcn/codemao/android/sketch/view/strokes/IStroke;
.source "BaseKaTongStroke.java"


# instance fields
.field highLightFigure:Lcn/codemao/android/sketch/model/StickerFigureInfo;

.field private icons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/strokes/StokeBean;",
            ">;"
        }
    .end annotation
.end field

.field private lastLenght:F

.field private nextDiffHor:F

.field private pathMeasure:Landroid/graphics/PathMeasure;

.field private pos:[F

.field private rectF:Landroid/graphics/RectF;

.field private tan:[F

.field private tempPath:Landroid/graphics/Path;

.field private times:I

.field private totalSize:I


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/view/paint/ScrawlPaint;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/view/strokes/IStroke;-><init>(Lcn/codemao/android/sketch/view/paint/ScrawlPaint;)V

    .line 37
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->pathMeasure:Landroid/graphics/PathMeasure;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->times:I

    const/4 p1, 0x1

    .line 42
    iput p1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->totalSize:I

    .line 43
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->rectF:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 44
    iput-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->pos:[F

    new-array p1, p1, [F

    .line 45
    iput-object p1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->tan:[F

    .line 48
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->tempPath:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 99
    iput p1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->lastLenght:F

    .line 100
    iput p1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->nextDiffHor:F

    .line 52
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->createIcons()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->icons:Ljava/util/List;

    if-eqz p1, :cond_3a

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->totalSize:I

    :cond_3a
    return-void
.end method

.method private drawBitmap(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/view/strokes/StokeBean;F)V
    .registers 8

    .line 258
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->pathMeasure:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->pos:[F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->tan:[F

    invoke-virtual {v0, p3, v1, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 262
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->pos:[F

    iget-object v1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->tan:[F

    invoke-virtual {p0, v0, v1, p3}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->createDegrees([F[FF)F

    move-result p3

    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->pos:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p1, p3, v2, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 264
    iget-object p3, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->rectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->pos:[F

    aget v0, v0, v3

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/strokes/StokeBean;->getHeight()F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p3, Landroid/graphics/RectF;->top:F

    .line 265
    iget-object p3, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->rectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->pos:[F

    aget v0, v0, v1

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/strokes/StokeBean;->getWidth()F

    move-result v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->left:F

    .line 266
    iget-object p3, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->rectF:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/strokes/StokeBean;->getHeight()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->bottom:F

    .line 267
    iget-object p3, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->rectF:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/strokes/StokeBean;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p3, Landroid/graphics/RectF;->right:F

    .line 270
    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/strokes/StokeBean;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object p3, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->rectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->penPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawNextBitmap(FLandroid/graphics/Canvas;)V
    .registers 6

    .line 224
    iget v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->lastLenght:F

    sub-float v0, p1, v0

    .line 225
    iget v1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->nextDiffHor:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_43

    .line 227
    iget v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->times:I

    iget v1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->totalSize:I

    rem-int/2addr v0, v1

    .line 229
    iget-object v1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->icons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    .line 231
    iget v1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->times:I

    if-nez v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_24

    .line 234
    :cond_1d
    iget v1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->lastLenght:F

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/strokes/StokeBean;->getDiffHor()F

    move-result v2

    add-float/2addr v1, v2

    .line 238
    :goto_24
    invoke-direct {p0, p2, v0, v1}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->drawBitmap(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/view/strokes/StokeBean;F)V

    .line 241
    iput v1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->lastLenght:F

    .line 242
    iget v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->times:I

    .line 243
    iget-object v1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->icons:Ljava/util/List;

    iget v2, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->totalSize:I

    rem-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/strokes/StokeBean;->getDiffHor()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->nextDiffHor:F

    .line 246
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->drawNextBitmap(FLandroid/graphics/Canvas;)V

    :cond_43
    return-void
.end method

.method private saveKatongPath()V
    .registers 4

    .line 193
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->highLightFigure:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz v0, :cond_24

    .line 194
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->getTuyaBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->highLightFigure:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/BitmapUtil;->removeTransparency(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    iget-object v2, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->highLightFigure:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/view/paint/ScrawlPaint;->toTouchRect(Landroid/graphics/RectF;)V

    .line 196
    iget-object v1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->highLightFigure:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v1, v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    :cond_24
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setNeedUpdatePen(Z)V

    .line 200
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setIsTuyaing(Z)V

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->highLightFigure:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 202
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method


# virtual methods
.method protected afterDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .registers 3

    return-void
.end method

.method protected createDegrees([F[FF)F
    .registers 6

    const/4 p1, 0x1

    .line 315
    aget p1, p2, p1

    float-to-double v0, p1

    const/4 p1, 0x0

    aget p1, p2, p1

    float-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x4066800000000000L  # 180.0

    mul-double p1, p1, v0

    const-wide v0, 0x400921fb54442d18L  # Math.PI

    div-double/2addr p1, v0

    double-to-float p1, p1

    return p1
.end method

.method protected abstract createIcons()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/view/strokes/StokeBean;",
            ">;"
        }
    .end annotation
.end method

.method public doSomethingBeforeScale()V
    .registers 1

    .line 207
    invoke-super {p0}, Lcn/codemao/android/sketch/view/strokes/IStroke;->doSomethingBeforeScale()V

    .line 208
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->saveKatongPath()V

    return-void
.end method

.method protected getForwordLenght()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected needDrawOverPath()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V
    .registers 7

    .line 333
    invoke-super {p0, p1, p2, p3, p4}, Lcn/codemao/android/sketch/view/strokes/IStroke;->onDraw(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/BaseStickerInfo;ZZ)V

    .line 335
    check-cast p2, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 336
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_5d

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_5d

    .line 337
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    .line 346
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p4

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->penPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, v0, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDraw: type = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object p3

    invoke-virtual {p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "top = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " left = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseKaTongStroke"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    return-void
.end method

.method public onTouchDown(FF)V
    .registers 3

    .line 87
    invoke-super {p0, p1, p2}, Lcn/codemao/android/sketch/view/strokes/IStroke;->onTouchDown(FF)V

    const/4 p1, 0x0

    .line 88
    iput p1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->times:I

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->highLightFigure:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 p1, 0x0

    .line 90
    iput p1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->nextDiffHor:F

    .line 91
    iput p1, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->lastLenght:F

    return-void
.end method

.method public onTouchMove(FFLandroid/graphics/Canvas;)V
    .registers 11

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/strokes/IStroke;->onTouchMove(FFLandroid/graphics/Canvas;)V

    .line 106
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->highLightFigure:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3c

    .line 107
    new-instance v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/strokes/IStroke;->getType()I

    move-result v3

    invoke-direct {v0, v3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;-><init>(I)V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->highLightFigure:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 108
    iget-object v3, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->scrawlPaint:Lcn/codemao/android/sketch/view/paint/ScrawlPaint;

    invoke-virtual {v0, v3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setiPaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    .line 109
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->highLightFigure:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    new-instance v3, Landroid/graphics/Path;

    iget-object v4, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->penPath:Landroid/graphics/Path;

    invoke-direct {v3, v4}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {v0, v3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setPath(Landroid/graphics/Path;)V

    .line 110
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->highLightFigure:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-interface {v0, v3, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->insertDrawingList(Lcn/codemao/android/sketch/model/StickerFigureInfo;Z)V

    .line 111
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {v0, v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setIsTuyaing(Z)V

    .line 112
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->pathMeasure:Landroid/graphics/PathMeasure;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->highLightFigure:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 116
    :cond_3c
    iget v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->mLastX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_48

    iget v0, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->mLastY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_9c

    .line 137
    :cond_48
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->highLightFigure:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget v3, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->mLastX:F

    iget v4, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->mLastY:F

    invoke-virtual {v0, v3, v4, p1, p2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 139
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->pathMeasure:Landroid/graphics/PathMeasure;

    iget-object v3, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->highLightFigure:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 142
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    .line 144
    iget v3, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->lastLenght:F

    .line 148
    invoke-direct {p0, v0, p3}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->drawNextBitmap(FLandroid/graphics/Canvas;)V

    .line 150
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->needDrawOverPath()Z

    move-result v4

    if-eqz v4, :cond_92

    .line 151
    iget-object v4, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 152
    iget-object v4, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->pathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->getForwordLenght()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->getForwordLenght()F

    move-result v5

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v0, v5

    iget-object v5, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v0, v5, v2}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 154
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->tempPath:Landroid/graphics/Path;

    invoke-virtual {p0, p3, v0}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->afterDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 175
    :cond_92
    iget-object p3, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p3, v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->setNeedUpdatePen(Z)V

    .line 176
    iget-object p3, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->sketchController:Lcn/codemao/android/sketch/view/paint/SketchControll;

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    .line 179
    :cond_9c
    iput p1, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->mLastX:F

    .line 180
    iput p2, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->mLastY:F

    return-void
.end method

.method public onTouchUp(FFLandroid/graphics/Canvas;)V
    .registers 4

    .line 187
    invoke-super {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/strokes/IStroke;->onTouchUp(FFLandroid/graphics/Canvas;)V

    .line 189
    invoke-direct {p0}, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->saveKatongPath()V

    return-void
.end method

.method public updateUnsize()V
    .registers 4

    .line 63
    invoke-super {p0}, Lcn/codemao/android/sketch/view/strokes/IStroke;->updateUnsize()V

    .line 64
    iget-object v0, p0, Lcn/codemao/android/sketch/view/strokes/BaseKaTongStroke;->icons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/view/strokes/StokeBean;

    .line 65
    iget v2, p0, Lcn/codemao/android/sketch/view/strokes/IStroke;->unitSize:F

    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/view/strokes/StokeBean;->setUnSize(F)V

    goto :goto_9

    :cond_1b
    return-void
.end method
