.class public Lcn/codemao/android/sketch/model/StickerFigureInfo;
.super Lcn/codemao/android/sketch/model/BaseStickerInfo;
.source "StickerFigureInfo.java"


# instance fields
.field private bindObject:Lcn/codemao/android/sketch/model/StickerFigureInfo;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmapRect:Landroid/graphics/Rect;

.field private isFlipX:Z

.field private isFlipY:Z

.field public leftBottom:Lcn/codemao/android/sketch/model/PointInfo;

.field public leftTop:Lcn/codemao/android/sketch/model/PointInfo;

.field private lineSize:I

.field private paintType:I

.field private path:Landroid/graphics/Path;

.field private pointControlls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/PointInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pointInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/PointInfo;",
            ">;"
        }
    .end annotation
.end field

.field public rightBottom:Lcn/codemao/android/sketch/model/PointInfo;

.field public rightTop:Lcn/codemao/android/sketch/model/PointInfo;

.field private scale:F

.field private scaleX:F

.field private scaleY:F

.field private textScale:F

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 148
    invoke-direct {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->type:I

    const/16 v0, 0xa

    .line 47
    iput v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->lineSize:I

    const/high16 v0, 0x3f800000  # 1.0f

    .line 59
    iput v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleX:F

    .line 60
    iput v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleY:F

    .line 65
    iput v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->textScale:F

    .line 66
    iput v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scale:F

    .line 149
    iput p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->type:I

    .line 150
    iget-object p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    .line 152
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->bitmapRect:Landroid/graphics/Rect;

    .line 153
    iget-object p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    iget-object p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget-object p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 157
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->path:Landroid/graphics/Path;

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->pointInfos:Ljava/util/List;

    .line 159
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->pointControlls:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public copy()Lcn/codemao/android/sketch/model/StickerFigureInfo;
    .registers 7

    .line 241
    new-instance v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    iget v1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->type:I

    invoke-direct {v0, v1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;-><init>(I)V

    .line 242
    iget v1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mRotateAngle:F

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmRotateAngle(F)V

    .line 243
    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmPaint(Landroid/graphics/Paint;)V

    .line 244
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setiPaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    const/4 v1, 0x0

    .line 245
    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setDrawing(Z)V

    .line 248
    iget v2, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mRotateAngle:F

    invoke-virtual {v0, v2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmRotateAngle(F)V

    .line 250
    iget v2, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleX:F

    iput v2, v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleX:F

    .line 251
    iget v2, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleY:F

    iput v2, v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleY:F

    .line 253
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    .line 254
    iget-object v4, v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->pointInfos:Ljava/util/List;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/PointInfo;->copy()Lcn/codemao/android/sketch/model/PointInfo;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 256
    :cond_4c
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    .line 257
    iget-object v4, v0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->pointControlls:Ljava/util/List;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/model/PointInfo;->copy()Lcn/codemao/android/sketch/model/PointInfo;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 259
    :cond_6a
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v2, v0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    .line 261
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->calculateCopyDiff()[I

    move-result-object v2

    .line 263
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v3

    aget v4, v2, v1

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v2, v2, v5

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v3, v0, v1, v4, v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->moveFigure(Lcn/codemao/android/sketch/model/BaseStickerInfo;ZFF)V

    .line 265
    iget-boolean v1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->horizontalAdd:Z

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setHorizontalAdd(Z)V

    .line 266
    iget-boolean v1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->vericaleAdd:Z

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setVericaleAdd(Z)V

    return-object v0
.end method

.method public flip(FZZ)V
    .registers 11

    .line 272
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    instance-of v0, v0, Lcn/codemao/android/sketch/view/paint/FigurePaint;

    const/high16 v1, 0x43340000  # 180.0f

    const/4 v2, 0x0

    if-nez v0, :cond_187

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    instance-of v0, v0, Lcn/codemao/android/sketch/view/paint/BrushPaint;

    if-eqz v0, :cond_15

    goto/16 :goto_187

    .line 326
    :cond_15
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftTop:Lcn/codemao/android/sketch/model/PointInfo;

    if-nez v0, :cond_65

    .line 327
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v3, v4}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftTop:Lcn/codemao/android/sketch/model/PointInfo;

    .line 328
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v3, v4}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightTop:Lcn/codemao/android/sketch/model/PointInfo;

    .line 329
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v3, v4}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    .line 330
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v3, v4}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    .line 332
    :cond_65
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 333
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v3

    invoke-virtual {v3}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v3

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    cmpl-float v4, p1, v2

    if-eqz v4, :cond_a2

    .line 336
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    int-to-float v5, v0

    int-to-float v6, v3

    invoke-static {v4, v5, v6, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotateRect(Landroid/graphics/RectF;FFF)V

    .line 337
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v4, v5, v6, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 338
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v4, v5, v6, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 339
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v4, v5, v6, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 340
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v4, v5, v6, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    :cond_a2
    if-eqz p2, :cond_fc

    .line 344
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setScaleX()V

    .line 345
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftTop:Lcn/codemao/android/sketch/model/PointInfo;

    int-to-float v5, v0

    invoke-static {v4, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 346
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v4, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 347
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v4, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 348
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v4, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 349
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v4, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXRectf(Landroid/graphics/RectF;F)V

    .line 351
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_cb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_db

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/PointInfo;

    .line 352
    invoke-static {v6, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    goto :goto_cb

    .line 355
    :cond_db
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/codemao/android/sketch/model/PointInfo;

    .line 356
    invoke-static {v6, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    goto :goto_e3

    .line 359
    :cond_f3
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v4

    sub-float v4, v1, v4

    invoke-virtual {p0, v4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmRotateAngle(F)V

    .line 363
    :cond_fc
    invoke-virtual {p0, p2}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setFlipX(Z)V

    const/high16 p2, 0x43b40000  # 360.0f

    if-eqz p3, :cond_15c

    .line 365
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setScaleY()V

    .line 366
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftTop:Lcn/codemao/android/sketch/model/PointInfo;

    int-to-float v0, v0

    invoke-static {v4, v0}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 367
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v4, v0}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 368
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v4, v0}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 369
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v4, v0}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 370
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    int-to-float v3, v3

    invoke-static {v0, v3}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYRectf(Landroid/graphics/RectF;F)V

    .line 371
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    .line 372
    invoke-static {v4, v3}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    goto :goto_12b

    .line 375
    :cond_13b
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_143
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_153

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    .line 376
    invoke-static {v4, v3}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    goto :goto_143

    .line 378
    :cond_153
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v0

    sub-float v0, p2, v0

    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmRotateAngle(F)V

    .line 380
    :cond_15c
    invoke-virtual {p0, p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setFlipY(Z)V

    .line 381
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result p3

    add-float/2addr p3, p1

    rem-float/2addr p3, p2

    invoke-virtual {p0, p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setCavasRotate(F)V

    .line 382
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result p1

    rem-float/2addr p1, v1

    cmpl-float p1, p1, v2

    if-eqz p1, :cond_296

    .line 384
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->isFlipX()Z

    move-result p1

    if-nez p1, :cond_17d

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->isFlipY()Z

    move-result p1

    if-eqz p1, :cond_296

    .line 386
    :cond_17d
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result p1

    add-float/2addr p1, v1

    invoke-virtual {p0, p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setCavasRotate(F)V

    goto/16 :goto_296

    .line 273
    :cond_187
    :goto_187
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftTop:Lcn/codemao/android/sketch/model/PointInfo;

    if-nez v0, :cond_1d7

    .line 274
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v3, v4}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftTop:Lcn/codemao/android/sketch/model/PointInfo;

    .line 275
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v3, v4}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightTop:Lcn/codemao/android/sketch/model/PointInfo;

    .line 276
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v3, v4}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    .line 277
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v3, v4}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    .line 279
    :cond_1d7
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v0

    invoke-interface {v0}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 280
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v3

    invoke-virtual {v3}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v3

    invoke-interface {v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    cmpl-float v4, p1, v2

    if-eqz v4, :cond_20d

    .line 283
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftTop:Lcn/codemao/android/sketch/model/PointInfo;

    int-to-float v5, v0

    int-to-float v3, v3

    invoke-static {v4, v5, v3, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 284
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v4, v5, v3, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 285
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v4, v5, v3, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 286
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v4, v5, v3, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    :cond_20d
    if-eqz p2, :cond_224

    .line 289
    iget-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftTop:Lcn/codemao/android/sketch/model/PointInfo;

    int-to-float p2, v0

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 290
    iget-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 291
    iget-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 292
    iget-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    :cond_224
    if-eqz p3, :cond_23b

    .line 295
    iget-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftTop:Lcn/codemao/android/sketch/model/PointInfo;

    int-to-float p2, v0

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 296
    iget-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 297
    iget-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 298
    iget-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    :cond_23b
    const/high16 p1, 0x3f800000  # 1.0f

    .line 300
    iput p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleX:F

    .line 301
    iput p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleY:F

    .line 302
    iget-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftTop:Lcn/codemao/android/sketch/model/PointInfo;

    iget p2, p1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object p3, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->rightTop:Lcn/codemao/android/sketch/model/PointInfo;

    iget v0, p3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    const/high16 v3, -0x40800000  # -1.0f

    cmpl-float v4, p2, v0

    if-nez v4, :cond_271

    .line 303
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_264

    .line 304
    iput v2, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->cavasRotate:F

    .line 305
    iget p1, p1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p2, p3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_296

    .line 306
    iput v3, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleX:F

    goto :goto_296

    .line 309
    :cond_264
    iput v1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->cavasRotate:F

    .line 310
    iget p1, p1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p2, p3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_296

    .line 311
    iput v3, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleX:F

    goto :goto_296

    :cond_271
    cmpg-float p2, p2, v0

    if-gez p2, :cond_286

    const/high16 p2, 0x42b40000  # 90.0f

    .line 315
    iput p2, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->cavasRotate:F

    .line 316
    iget p1, p1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object p2, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget p2, p2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_296

    .line 317
    iput v3, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleY:F

    goto :goto_296

    :cond_286
    const/high16 p2, 0x43870000  # 270.0f

    .line 320
    iput p2, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->cavasRotate:F

    .line 321
    iget p1, p1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object p2, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->leftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget p2, p2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_296

    .line 322
    iput v3, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleY:F

    :cond_296
    :goto_296
    return-void
.end method

.method public getBindObject()Lcn/codemao/android/sketch/model/StickerFigureInfo;
    .registers 2

    .line 169
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->bindObject:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 233
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBitmapRect()Landroid/graphics/Rect;
    .registers 2

    .line 173
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->bitmapRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLineSize()I
    .registers 2

    .line 213
    iget v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->lineSize:I

    return v0
.end method

.method public getPaintType()I
    .registers 2

    .line 76
    iget v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->paintType:I

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 2

    .line 225
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public getPointControlls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/PointInfo;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->pointControlls:Ljava/util/List;

    return-object v0
.end method

.method public getPointInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/PointInfo;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->pointInfos:Ljava/util/List;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    .line 100
    iget v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scale:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    .line 125
    iget v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    .line 133
    iget v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleY:F

    return v0
.end method

.method public getTextScale()F
    .registers 2

    .line 137
    iget v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->textScale:F

    return v0
.end method

.method public getType()I
    .registers 2

    .line 205
    iget v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->type:I

    return v0
.end method

.method public initBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 181
    iput-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public isFlipX()Z
    .registers 2

    .line 84
    iget-boolean v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->isFlipX:Z

    return v0
.end method

.method public isFlipY()Z
    .registers 2

    .line 92
    iget-boolean v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->isFlipY:Z

    return v0
.end method

.method public setBindObject(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->bindObject:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setFlipX(Z)V
    .registers 2

    .line 88
    iput-boolean p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->isFlipX:Z

    return-void
.end method

.method public setFlipY(Z)V
    .registers 2

    .line 96
    iput-boolean p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->isFlipY:Z

    return-void
.end method

.method public setLineSize(I)V
    .registers 2

    .line 217
    iput p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->lineSize:I

    return-void
.end method

.method public setPaintType(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->paintType:I

    return-void
.end method

.method public setPath(Landroid/graphics/Path;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->path:Landroid/graphics/Path;

    return-void
.end method

.method public setScale(F)V
    .registers 3

    .line 104
    iget v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scale:F

    mul-float v0, v0, p1

    iput v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scale:F

    return-void
.end method

.method public setScaleX()V
    .registers 3

    .line 129
    iget v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleX:F

    const/high16 v1, -0x40800000  # -1.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleX:F

    return-void
.end method

.method public setScaleY()V
    .registers 3

    .line 145
    iget v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleY:F

    const/high16 v1, -0x40800000  # -1.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->scaleY:F

    return-void
.end method

.method public setTextScale(F)V
    .registers 2

    .line 141
    iput p1, p0, Lcn/codemao/android/sketch/model/StickerFigureInfo;->textScale:F

    return-void
.end method
