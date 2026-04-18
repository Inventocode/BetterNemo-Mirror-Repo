.class public Lcn/codemao/android/sketch/RectHelper;
.super Ljava/lang/Object;
.source "RectHelper.java"


# instance fields
.field public bottomMidRect:Landroid/graphics/RectF;

.field private canvasBottom:F

.field private canvasDx:F

.field private canvasDy:F

.field private canvasHeight:F

.field private canvasLeft:F

.field public canvasRect:Landroid/graphics/RectF;

.field private canvasRight:F

.field private canvasTop:F

.field private canvasWidth:F

.field private centerX:F

.field private centerY:F

.field private clearMode:Landroid/graphics/Xfermode;

.field private context:Landroid/content/Context;

.field private helpIconRadius:I

.field private final helpPaint:Landroid/graphics/Paint;

.field public leftMidRect:Landroid/graphics/RectF;

.field private mCopyBitmap:Landroid/graphics/Bitmap;

.field public mCopyDstRect:Landroid/graphics/RectF;

.field private mCopyRect:Landroid/graphics/Rect;

.field private mDeleteBitmap:Landroid/graphics/Bitmap;

.field public mDeleteDstRect:Landroid/graphics/RectF;

.field private mDeleteRect:Landroid/graphics/Rect;

.field private mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

.field private mRotateBitmap:Landroid/graphics/Bitmap;

.field public mRotateDstRect:Landroid/graphics/RectF;

.field private mRotateRect:Landroid/graphics/Rect;

.field private movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

.field public rightMidRect:Landroid/graphics/RectF;

.field private rotatePointPaint:Landroid/graphics/Paint;

.field private scale:F

.field private screenWitdh:I

.field private sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

.field public stageRect:Landroid/graphics/RectF;

.field public topMidRect:Landroid/graphics/RectF;

.field private translatePaint:Landroid/graphics/Paint;

.field private unitSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 59
    iput v0, p0, Lcn/codemao/android/sketch/RectHelper;->scale:F

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasDx:F

    iput v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasDy:F

    .line 75
    iput-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->context:Landroid/content/Context;

    .line 78
    new-instance p1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p1}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->helpPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    .line 82
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->clearMode:Landroid/graphics/Xfermode;

    .line 87
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->translatePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->translatePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 90
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->translatePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->clearMode:Landroid/graphics/Xfermode;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private adjustPoint(FFLcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1315
    :goto_2
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 1316
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v3, p1

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    iget v4, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v4, p2

    invoke-virtual {v2, v3, v4}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1319
    :cond_36
    :goto_36
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6a

    .line 1320
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    add-float/2addr v2, p1

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_6a
    return-void
.end method

.method private detectInFigure(FFLcn/codemao/android/sketch/model/StickerFigureInfo;)Z
    .registers 6

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 863
    :cond_4
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    .line 865
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v1

    neg-float v1, v1

    invoke-static {p1, p2, v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 866
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_39

    .line 867
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    iget p2, p1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p1, p1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Lcn/codemao/android/sketch/RectHelper;->isInTraingle(FFLandroid/graphics/RectF;)Z

    move-result p1

    return p1

    .line 868
    :cond_39
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result p1

    if-nez p1, :cond_4e

    .line 869
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    iget p3, p2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p2, p2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1

    .line 870
    :cond_4e
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getType()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_64

    .line 871
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    iget p2, p1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p1, p1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    invoke-direct {p0, p2, p1, p3}, Lcn/codemao/android/sketch/RectHelper;->isInOval(FFLandroid/graphics/RectF;)Z

    move-result p1

    return p1

    .line 873
    :cond_64
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    iget p3, p2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p2, p2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method private detectInRecf(FFLandroid/graphics/RectF;Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)Z
    .registers 8

    if-nez p4, :cond_4

    const/4 p1, 0x0

    return p1

    .line 821
    :cond_4
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    if-eqz p5, :cond_27

    .line 825
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 826
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p2

    const/high16 p5, 0x40000000  # 2.0f

    div-float/2addr p2, p5

    .line 827
    iget p5, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p5, p2

    iget v0, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    iget v1, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p2

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p3, p2

    invoke-virtual {p1, p5, v0, v1, p3}, Landroid/graphics/RectF;->set(FFFF)V

    move-object p3, p1

    .line 831
    :cond_27
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {p4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/RectF;->centerY()F

    move-result p5

    invoke-virtual {p4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v0

    neg-float v0, v0

    invoke-static {p1, p2, p5, v0}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 832
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    iget p2, p0, Lcn/codemao/android/sketch/RectHelper;->centerX:F

    iget p5, p0, Lcn/codemao/android/sketch/RectHelper;->centerY:F

    invoke-virtual {p4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result p4

    neg-float p4, p4

    invoke-static {p1, p2, p5, p4}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 834
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    iget p2, p1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p1, p1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p3, p2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method private detectInText(FFLcn/codemao/android/sketch/model/StickerTextInfo;)Z
    .registers 6

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 851
    :cond_4
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v0, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    .line 853
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmRotateAngle()F

    move-result v1

    neg-float v1, v1

    invoke-static {p1, p2, v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 854
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    iget p2, p0, Lcn/codemao/android/sketch/RectHelper;->centerX:F

    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->centerY:F

    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v1

    neg-float v1, v1

    invoke-static {p1, p2, v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 856
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->mPointInfo:Lcn/codemao/android/sketch/model/PointInfo;

    iget p3, p2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p2, p2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1, p3, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method private getHelpStrokeWidth()I
    .registers 2

    const/high16 v0, 0x3fc00000  # 1.5f

    .line 170
    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/RectHelper;->getUnScaledSize(F)I

    move-result v0

    return v0
.end method

.method private isInOval(FFLandroid/graphics/RectF;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    .line 1364
    :cond_4
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr p1, v1

    .line 1365
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v1, p2

    .line 1366
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr p2, v2

    .line 1367
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr p3, v2

    div-float/2addr p1, p2

    mul-float p1, p1, p1

    div-float/2addr v1, p3

    mul-float v1, v1, v1

    add-float/2addr p1, v1

    float-to-double p1, p1

    const-wide/high16 v1, 0x3ff0000000000000L  # 1.0

    cmpg-double p3, p1, v1

    if-gtz p3, :cond_29

    const/4 v0, 0x1

    :cond_29
    return v0
.end method

.method private isInTraingle(FFLandroid/graphics/RectF;)Z
    .registers 9

    .line 1376
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    iget v2, p3, Landroid/graphics/RectF;->bottom:F

    sub-float v2, p2, v2

    invoke-direct {v0, v1, v2}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1377
    new-instance v1, Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, p3, Landroid/graphics/RectF;->right:F

    sub-float v2, p1, v2

    iget v3, p3, Landroid/graphics/RectF;->bottom:F

    sub-float v3, p2, v3

    invoke-direct {v1, v2, v3}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1378
    new-instance v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, p3, Landroid/graphics/RectF;->left:F

    iget v4, p3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr p1, v3

    iget p3, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, p3

    invoke-direct {v2, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1381
    iget p1, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p2, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    mul-float p3, p1, p2

    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    mul-float v3, v0, v1

    sub-float/2addr p3, v3

    .line 1382
    iget v3, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    mul-float v1, v1, v3

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    mul-float p2, p2, v2

    sub-float/2addr v1, p2

    mul-float v2, v2, v0

    mul-float v3, v3, p1

    sub-float/2addr v2, v3

    const/4 p1, 0x0

    cmpg-float p2, p3, p1

    if-gtz p2, :cond_53

    cmpg-float p2, v1, p1

    if-gtz p2, :cond_53

    cmpg-float p2, v2, p1

    if-lez p2, :cond_5f

    :cond_53
    cmpl-float p2, p3, p1

    if-lez p2, :cond_61

    cmpl-float p2, v1, p1

    if-lez p2, :cond_61

    cmpl-float p1, v2, p1

    if-lez p1, :cond_61

    :cond_5f
    const/4 p1, 0x1

    return p1

    :cond_61
    const/4 p1, 0x0

    return p1
.end method

.method private scaleHorizontal(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFFFF)V
    .registers 11

    .line 1291
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, p2

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 1296
    :goto_b
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 1297
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    .line 1298
    iget v3, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v3, p3

    mul-float v3, v3, v0

    add-float/2addr v3, p4

    .line 1300
    invoke-virtual {v2, v3}, Lcn/codemao/android/sketch/model/PointInfo;->setY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1303
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_4b

    .line 1304
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    .line 1305
    iget v2, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v2, p3

    mul-float v2, v2, v0

    add-float/2addr v2, p4

    .line 1307
    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/PointInfo;->setY(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2b

    .line 1310
    :cond_4b
    invoke-direct {p0, p5, p6, p1}, Lcn/codemao/android/sketch/RectHelper;->adjustPoint(FFLcn/codemao/android/sketch/model/StickerFigureInfo;)V

    return-void
.end method

.method private scaleVerticalPoint(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFFFF)V
    .registers 11

    .line 1261
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, p2

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 1263
    :goto_b
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 1264
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/PointInfo;

    .line 1265
    iget v3, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v3, p3

    mul-float v3, v3, v0

    add-float/2addr v3, p4

    .line 1267
    invoke-virtual {v2, v3}, Lcn/codemao/android/sketch/model/PointInfo;->setX(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1270
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_4b

    .line 1271
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    .line 1272
    iget v2, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v2, p3

    mul-float v2, v2, v0

    add-float/2addr v2, p4

    .line 1274
    invoke-virtual {v1, v2}, Lcn/codemao/android/sketch/model/PointInfo;->setX(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2b

    .line 1277
    :cond_4b
    invoke-direct {p0, p5, p6, p1}, Lcn/codemao/android/sketch/RectHelper;->adjustPoint(FFLcn/codemao/android/sketch/model/StickerFigureInfo;)V

    return-void
.end method


# virtual methods
.method public caculatorLineRect(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFFFZ)V
    .registers 14

    if-nez p1, :cond_3

    return-void

    .line 1398
    :cond_3
    new-instance p6, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {p6, p2, p3}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1399
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0, p4, p5}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    sub-float v1, p4, p2

    sub-float v2, p5, p3

    float-to-double v3, v1

    mul-float v1, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v1, v5

    float-to-double v5, v1

    .line 1402
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    const/4 v1, 0x0

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_2c

    .line 1405
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_34

    :cond_2c
    const/high16 v1, 0x43b40000  # 360.0f

    .line 1407
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v1, v2

    :goto_34
    add-float/2addr p4, p2

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr p4, p2

    add-float/2addr p5, p3

    div-float/2addr p5, p2

    neg-float p3, v1

    .line 1409
    invoke-static {p6, p4, p5, p3}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 1410
    invoke-static {v0, p4, p5, p3}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 1419
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p3

    iget p4, p6, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget p5, p6, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getLineSize()I

    move-result p6

    int-to-float p6, p6

    div-float/2addr p6, p2

    sub-float/2addr p5, p6

    iget p6, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getLineSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    add-float/2addr v0, v2

    invoke-virtual {p3, p4, p5, p6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1423
    invoke-virtual {p1, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmRotateAngle(F)V

    return-void
.end method

.method public checkClickTextRect(FFLjava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerTextInfo;",
            ">;)Z"
        }
    .end annotation

    .line 807
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_18

    .line 808
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/codemao/android/sketch/model/StickerTextInfo;

    invoke-direct {p0, p1, p2, v2}, Lcn/codemao/android/sketch/RectHelper;->detectInText(FFLcn/codemao/android/sketch/model/StickerTextInfo;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_19

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public checkScale(Landroid/view/MotionEvent;Z)V
    .registers 6

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1f

    .line 178
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_16

    if-nez p2, :cond_16

    const/4 v1, 0x1

    :cond_16
    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->setScaling(Z)V

    .line 179
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->notifySaveDrawingPath()V

    goto :goto_26

    :cond_1f
    if-nez v0, :cond_26

    .line 181
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p1, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->setScaling(Z)V

    :cond_26
    :goto_26
    return-void
.end method

.method public drawFigureHelp(Landroid/graphics/Canvas;I)V
    .registers 4

    .line 552
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->helpPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/codemao/android/sketch/RectHelper;->drawFigureHelp(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public drawFigureHelp(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V
    .registers 4

    .line 556
    invoke-virtual {p0, p1, p3}, Lcn/codemao/android/sketch/RectHelper;->drawTextHelp(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 557
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->helpPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 558
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->leftMidRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcn/codemao/android/sketch/RectHelper;->helpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 559
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->rightMidRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcn/codemao/android/sketch/RectHelper;->helpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 560
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->topMidRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcn/codemao/android/sketch/RectHelper;->helpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 561
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->bottomMidRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcn/codemao/android/sketch/RectHelper;->helpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 562
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->helpPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public drawReEditHelpRect(Landroid/graphics/RectF;Landroid/graphics/Canvas;)V
    .registers 6

    .line 505
    invoke-virtual {p0, p1}, Lcn/codemao/android/sketch/RectHelper;->updateFigureHelpRect(Landroid/graphics/RectF;)V

    .line 506
    invoke-virtual {p0, p1, p2}, Lcn/codemao/android/sketch/RectHelper;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Canvas;)V

    .line 507
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateDstRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/codemao/android/sketch/RectHelper;->helpPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Canvas;)V
    .registers 4

    .line 1461
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->helpPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextBackGround(Landroid/graphics/Canvas;Lcn/codemao/android/sketch/model/StickerTextInfo;)V
    .registers 11

    const/high16 v0, 0x41200000  # 10.0f

    .line 574
    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/RectHelper;->getUnScaledSize(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41600000  # 14.0f

    .line 575
    invoke-virtual {p0, v1}, Lcn/codemao/android/sketch/RectHelper;->getUnScaledSize(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41000000  # 8.0f

    .line 576
    invoke-virtual {p0, v2}, Lcn/codemao/android/sketch/RectHelper;->getUnScaledSize(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getScale()F

    move-result v3

    mul-float v2, v2, v3

    .line 577
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getScale()F

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_29

    mul-float v0, v0, v3

    mul-float v1, v1, v3

    .line 585
    :cond_29
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 587
    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 589
    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v4, v4

    sub-float v4, v0, v4

    float-to-int v4, v4

    int-to-float v3, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 596
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    .line 598
    new-instance v5, Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v1

    iget v7, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v4

    sub-float/2addr v7, v4

    iget v4, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v1

    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-direct {v5, v6, v7, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 599
    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getBackGroundPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, v5, v2, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextHelp(Landroid/graphics/Canvas;)V
    .registers 3

    .line 541
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->helpPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcn/codemao/android/sketch/RectHelper;->drawTextHelp(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextHelp(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 6

    .line 545
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mDeleteBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/codemao/android/sketch/RectHelper;->mDeleteRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/codemao/android/sketch/RectHelper;->mDeleteDstRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 546
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateDstRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 547
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mCopyBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/codemao/android/sketch/RectHelper;->mCopyRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/codemao/android/sketch/RectHelper;->mCopyDstRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawTranslateRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 397
    iget v2, v1, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1d

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 398
    iget-object v2, v0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v7, v2

    iget v8, v1, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lcn/codemao/android/sketch/RectHelper;->translatePaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 400
    :cond_1d
    iget v13, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v13, v3

    if-lez v2, :cond_33

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 401
    iget-object v2, v0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v14, v2

    iget-object v15, v0, Lcn/codemao/android/sketch/RectHelper;->translatePaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 404
    :cond_33
    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v3, v0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_58

    .line 405
    iget v4, v1, Landroid/graphics/RectF;->right:F

    const/4 v5, 0x0

    iget-object v2, v0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v6, v2

    iget-object v2, v0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v7, v2

    iget-object v8, v0, Lcn/codemao/android/sketch/RectHelper;->translatePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 408
    :cond_58
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, v0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7d

    const/4 v4, 0x0

    .line 409
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, v0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v6, v1

    iget-object v1, v0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v7, v1

    iget-object v8, v0, Lcn/codemao/android/sketch/RectHelper;->translatePaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_7d
    return-void
.end method

.method public flip(FIILcn/codemao/android/sketch/view/SketchViewV5;)V
    .registers 11

    .line 1470
    invoke-virtual {p4}, Lcn/codemao/android/sketch/view/SketchViewV5;->isLandscapeStage()Z

    move-result p1

    if-eqz p1, :cond_25

    const p1, 0x3fccfab3

    const/16 v0, 0xcc

    .line 1473
    invoke-static {}, Lcn/codemao/android/sketch/CodemaoSketch;->instance()Lcn/codemao/android/sketch/CodemaoSketch;

    move-result-object v1

    iget-boolean v1, v1, Lcn/codemao/android/sketch/CodemaoSketch;->isPad:Z

    if-eqz v1, :cond_15

    const/16 v0, 0xff

    .line 1476
    :cond_15
    invoke-virtual {p4}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchWidth()I

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/RectHelper;->context:Landroid/content/Context;

    int-to-float v0, v0

    invoke-static {v2, v0}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    div-float v1, v0, p1

    goto :goto_2f

    :cond_25
    const p1, 0x3f1fdc2c

    .line 1480
    invoke-virtual {p4}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchHeight()I

    move-result v0

    int-to-float v1, v0

    mul-float v0, v1, p1

    .line 1484
    :goto_2f
    invoke-virtual {p4}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    .line 1485
    invoke-virtual {p4}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v3

    int-to-float p2, p2

    const/high16 v4, 0x3f800000  # 1.0f

    mul-float v5, p2, v4

    int-to-float p3, p3

    div-float/2addr v5, p3

    cmpl-float p1, v5, p1

    if-ltz p1, :cond_51

    .line 1488
    iput v1, p0, Lcn/codemao/android/sketch/RectHelper;->canvasHeight:F

    div-float p1, v1, p3

    mul-float p1, p1, p2

    .line 1490
    iput p1, p0, Lcn/codemao/android/sketch/RectHelper;->canvasWidth:F

    goto :goto_59

    .line 1492
    :cond_51
    iput v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasWidth:F

    div-float p1, v0, p2

    mul-float p1, p1, p3

    .line 1494
    iput p1, p0, Lcn/codemao/android/sketch/RectHelper;->canvasHeight:F

    .line 1497
    :goto_59
    iget p1, p0, Lcn/codemao/android/sketch/RectHelper;->canvasWidth:F

    div-float p2, p1, v3

    sub-float p2, v2, p2

    iput p2, p0, Lcn/codemao/android/sketch/RectHelper;->canvasLeft:F

    .line 1498
    iget p2, p0, Lcn/codemao/android/sketch/RectHelper;->canvasHeight:F

    div-float p3, p2, v3

    sub-float p3, p4, p3

    iput p3, p0, Lcn/codemao/android/sketch/RectHelper;->canvasTop:F

    div-float/2addr p1, v3

    add-float/2addr p1, v2

    .line 1499
    iput p1, p0, Lcn/codemao/android/sketch/RectHelper;->canvasRight:F

    div-float/2addr p2, v3

    add-float/2addr p2, p4

    .line 1500
    iput p2, p0, Lcn/codemao/android/sketch/RectHelper;->canvasBottom:F

    .line 1502
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    sub-float p1, v2, p1

    .line 1503
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float p2, p4, p2

    neg-float p1, p1

    neg-float p2, p2

    const/4 p3, 0x1

    .line 1504
    invoke-virtual {p0, p1, p2, p3, p3}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    .line 1505
    iget p1, p0, Lcn/codemao/android/sketch/RectHelper;->canvasRight:F

    iget p2, p0, Lcn/codemao/android/sketch/RectHelper;->canvasLeft:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p1, p2

    .line 1506
    invoke-virtual {p0, p1, p3, p3}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 1507
    iput v4, p0, Lcn/codemao/android/sketch/RectHelper;->scale:F

    .line 1508
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->stageRect:Landroid/graphics/RectF;

    div-float/2addr v0, v3

    sub-float p2, v2, v0

    div-float/2addr v1, v3

    sub-float p3, p4, v1

    add-float/2addr v2, v0

    add-float/2addr p4, v1

    invoke-virtual {p1, p2, p3, v2, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1509
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->canvasRect:Landroid/graphics/RectF;

    iget p2, p0, Lcn/codemao/android/sketch/RectHelper;->canvasLeft:F

    iget p3, p0, Lcn/codemao/android/sketch/RectHelper;->canvasTop:F

    iget p4, p0, Lcn/codemao/android/sketch/RectHelper;->canvasRight:F

    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasBottom:F

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public getCanvasHeight()F
    .registers 2

    .line 158
    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasHeight:F

    return v0
.end method

.method public getCanvasLeft()F
    .registers 2

    .line 138
    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasLeft:F

    return v0
.end method

.method public getCanvasRect()Landroid/graphics/RectF;
    .registers 2

    .line 393
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCanvasTop()F
    .registers 2

    .line 146
    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasTop:F

    return v0
.end method

.method public getCanvasWidth()F
    .registers 2

    .line 154
    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasWidth:F

    return v0
.end method

.method public getCenterX()F
    .registers 2

    .line 130
    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->centerX:F

    return v0
.end method

.method public getCenterY()F
    .registers 2

    .line 134
    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->centerY:F

    return v0
.end method

.method public getFigureTouchType(FFILjava/util/List;Lcn/codemao/android/sketch/model/SelectFigureInfo;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFI",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;",
            "Lcn/codemao/android/sketch/model/SelectFigureInfo;",
            ")I"
        }
    .end annotation

    .line 649
    invoke-virtual {p5}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result p3

    const/16 v0, 0x7d8

    if-eqz p3, :cond_81

    .line 650
    iget-object v4, p0, Lcn/codemao/android/sketch/RectHelper;->leftMidRect:Landroid/graphics/RectF;

    iget-object v5, p5, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/sketch/RectHelper;->detectInRecf(FFLandroid/graphics/RectF;Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)Z

    move-result p3

    if-eqz p3, :cond_1a

    const/16 p3, 0x4e2b

    goto/16 :goto_83

    .line 652
    :cond_1a
    iget-object v4, p0, Lcn/codemao/android/sketch/RectHelper;->rightMidRect:Landroid/graphics/RectF;

    iget-object v5, p5, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/sketch/RectHelper;->detectInRecf(FFLandroid/graphics/RectF;Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)Z

    move-result p3

    if-eqz p3, :cond_2c

    const/16 p3, 0x4e2e

    goto/16 :goto_83

    .line 654
    :cond_2c
    iget-object v4, p0, Lcn/codemao/android/sketch/RectHelper;->topMidRect:Landroid/graphics/RectF;

    iget-object v5, p5, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/sketch/RectHelper;->detectInRecf(FFLandroid/graphics/RectF;Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)Z

    move-result p3

    if-eqz p3, :cond_3d

    const/16 p3, 0x4e30

    goto :goto_83

    .line 656
    :cond_3d
    iget-object v4, p0, Lcn/codemao/android/sketch/RectHelper;->bottomMidRect:Landroid/graphics/RectF;

    iget-object v5, p5, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/sketch/RectHelper;->detectInRecf(FFLandroid/graphics/RectF;Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)Z

    move-result p3

    if-eqz p3, :cond_4e

    const/16 p3, 0x4e31

    goto :goto_83

    .line 658
    :cond_4e
    iget-object v4, p0, Lcn/codemao/android/sketch/RectHelper;->mDeleteDstRect:Landroid/graphics/RectF;

    iget-object v5, p5, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/sketch/RectHelper;->detectInRecf(FFLandroid/graphics/RectF;Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)Z

    move-result p3

    if-eqz p3, :cond_5f

    const/16 p3, 0x7d5

    goto :goto_83

    .line 660
    :cond_5f
    iget-object v4, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateDstRect:Landroid/graphics/RectF;

    iget-object v5, p5, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/sketch/RectHelper;->detectInRecf(FFLandroid/graphics/RectF;Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)Z

    move-result p3

    if-eqz p3, :cond_70

    const/16 p3, 0x7d4

    goto :goto_83

    .line 662
    :cond_70
    iget-object v4, p0, Lcn/codemao/android/sketch/RectHelper;->mCopyDstRect:Landroid/graphics/RectF;

    iget-object v5, p5, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/sketch/RectHelper;->detectInRecf(FFLandroid/graphics/RectF;Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)Z

    move-result p3

    if-eqz p3, :cond_81

    const/16 p3, 0x7d9

    goto :goto_83

    :cond_81
    const/16 p3, 0x7d8

    :goto_83
    if-eq p3, v0, :cond_86

    return p3

    :cond_86
    const/4 v0, 0x0

    .line 671
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_8d
    if-ltz v1, :cond_b0

    .line 672
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 673
    invoke-direct {p0, p1, p2, v3}, Lcn/codemao/android/sketch/RectHelper;->detectInFigure(FFLcn/codemao/android/sketch/model/StickerFigureInfo;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 674
    iget-object p1, p5, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-ne p1, v3, :cond_a4

    const/16 p1, 0x7da

    const/16 p3, 0x7da

    goto :goto_ab

    .line 677
    :cond_a4
    invoke-virtual {p5, v3}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->updateSelInfo(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    const/16 p1, 0x7d7

    const/16 p3, 0x7d7

    :goto_ab
    const/4 v0, 0x1

    goto :goto_b0

    :cond_ad
    add-int/lit8 v1, v1, -0x1

    goto :goto_8d

    :cond_b0
    :goto_b0
    if-nez v0, :cond_b5

    .line 692
    invoke-virtual {p5}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->reset()V

    :cond_b5
    return p3
.end method

.method public getReEditTouchType(FFLjava/util/List;Lcn/codemao/android/sketch/model/SelectFigureInfo;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerFigureInfo;",
            ">;",
            "Lcn/codemao/android/sketch/model/SelectFigureInfo;",
            ")I"
        }
    .end annotation

    .line 712
    invoke-virtual {p4}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->hasSelected()Z

    move-result v0

    const/16 v1, 0x7d8

    if-eqz v0, :cond_19

    .line 722
    iget-object v5, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateDstRect:Landroid/graphics/RectF;

    iget-object v6, p4, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcn/codemao/android/sketch/RectHelper;->detectInRecf(FFLandroid/graphics/RectF;Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x7d4

    goto :goto_1b

    :cond_19
    const/16 v0, 0x7d8

    :goto_1b
    if-eq v0, v1, :cond_1e

    return v0

    :cond_1e
    const/4 v1, 0x0

    .line 731
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_25
    if-ltz v2, :cond_48

    .line 732
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 733
    invoke-direct {p0, p1, p2, v4}, Lcn/codemao/android/sketch/RectHelper;->detectInFigure(FFLcn/codemao/android/sketch/model/StickerFigureInfo;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 734
    iget-object p1, p4, Lcn/codemao/android/sketch/model/SelectFigureInfo;->curSelectFigureInfo:Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-ne p1, v4, :cond_3c

    const/16 p1, 0x7da

    const/16 v0, 0x7da

    goto :goto_43

    .line 737
    :cond_3c
    invoke-virtual {p4, v4}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->updateSelInfo(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V

    const/16 p1, 0x7d7

    const/16 v0, 0x7d7

    :goto_43
    const/4 v1, 0x1

    goto :goto_48

    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_25

    :cond_48
    :goto_48
    if-nez v1, :cond_4d

    .line 752
    invoke-virtual {p4}, Lcn/codemao/android/sketch/model/SelectFigureInfo;->reset()V

    :cond_4d
    return v0
.end method

.method public getSafeHelpRectWidth()F
    .registers 3

    .line 474
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/16 v1, 0x18

    invoke-virtual {p0, v1}, Lcn/codemao/android/sketch/RectHelper;->getScaledSize(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getSafeTextWidth()F
    .registers 3

    .line 465
    invoke-virtual {p0}, Lcn/codemao/android/sketch/RectHelper;->getSafeHelpRectWidth()F

    move-result v0

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Lcn/codemao/android/sketch/RectHelper;->getScaledSize(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getScale()F
    .registers 2

    .line 121
    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->scale:F

    return v0
.end method

.method public getScaledSize(I)I
    .registers 3

    int-to-float p1, p1

    .line 165
    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->unitSize:F

    mul-float p1, p1, v0

    invoke-virtual {p0}, Lcn/codemao/android/sketch/RectHelper;->getScale()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getTextTouchType(FFLjava/util/List;ZLcn/codemao/android/sketch/model/SelectTextInfo;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF",
            "Ljava/util/List<",
            "Lcn/codemao/android/sketch/model/StickerTextInfo;",
            ">;Z",
            "Lcn/codemao/android/sketch/model/SelectTextInfo;",
            ")I"
        }
    .end annotation

    .line 762
    invoke-virtual {p5}, Lcn/codemao/android/sketch/model/SelectTextInfo;->hasSelected()Z

    move-result p4

    const/16 v0, 0x7537

    if-eqz p4, :cond_3b

    .line 763
    iget-object v4, p0, Lcn/codemao/android/sketch/RectHelper;->mDeleteDstRect:Landroid/graphics/RectF;

    iget-object v5, p5, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/sketch/RectHelper;->detectInRecf(FFLandroid/graphics/RectF;Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)Z

    move-result p4

    if-eqz p4, :cond_19

    const/16 p4, 0x7534

    goto :goto_3d

    .line 765
    :cond_19
    iget-object v4, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateDstRect:Landroid/graphics/RectF;

    iget-object v5, p5, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/sketch/RectHelper;->detectInRecf(FFLandroid/graphics/RectF;Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)Z

    move-result p4

    if-eqz p4, :cond_2a

    const/16 p4, 0x7533

    goto :goto_3d

    .line 767
    :cond_2a
    iget-object v4, p0, Lcn/codemao/android/sketch/RectHelper;->mCopyDstRect:Landroid/graphics/RectF;

    iget-object v5, p5, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcn/codemao/android/sketch/RectHelper;->detectInRecf(FFLandroid/graphics/RectF;Lcn/codemao/android/sketch/model/BaseStickerInfo;Z)Z

    move-result p4

    if-eqz p4, :cond_3b

    const/16 p4, 0x7538

    goto :goto_3d

    :cond_3b
    const/16 p4, 0x7537

    :goto_3d
    if-eq p4, v0, :cond_40

    return p4

    :cond_40
    const/4 v0, 0x0

    .line 778
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_47
    if-ltz v1, :cond_6c

    .line 779
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 780
    invoke-direct {p0, p1, p2, v3}, Lcn/codemao/android/sketch/RectHelper;->detectInText(FFLcn/codemao/android/sketch/model/StickerTextInfo;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 781
    iget-object p1, p5, Lcn/codemao/android/sketch/model/SelectTextInfo;->curSelectTextInfo:Lcn/codemao/android/sketch/model/StickerTextInfo;

    if-ne p1, v3, :cond_60

    const p1, 0x493ea

    const p4, 0x493ea

    goto :goto_67

    .line 784
    :cond_60
    invoke-virtual {p5, v3}, Lcn/codemao/android/sketch/model/SelectTextInfo;->updateSelInfo(Lcn/codemao/android/sketch/model/StickerTextInfo;)V

    const/16 p1, 0x7531

    const/16 p4, 0x7531

    :goto_67
    const/4 v0, 0x1

    goto :goto_6c

    :cond_69
    add-int/lit8 v1, v1, -0x1

    goto :goto_47

    :cond_6c
    :goto_6c
    if-nez v0, :cond_78

    .line 796
    invoke-virtual {p5}, Lcn/codemao/android/sketch/model/SelectTextInfo;->reset()V

    .line 797
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    if-eqz p1, :cond_78

    .line 798
    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->resetPaint()V

    :cond_78
    return p4
.end method

.method public getUnScaledSize(F)I
    .registers 3

    .line 482
    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->unitSize:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public handleScale(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
    .registers 8

    .line 186
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    .line 188
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/MovePathUtils;->getGestureDetector()Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 189
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/utils/MovePathUtils;->getScaleDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 191
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->getCanvasRect()Landroid/graphics/RectF;

    move-result-object p1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_25

    const/4 v1, 0x3

    if-eq p2, v1, :cond_25

    goto :goto_6f

    .line 196
    :cond_25
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->setDrawing(Z)V

    .line 205
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget v1, p0, Lcn/codemao/android/sketch/RectHelper;->canvasWidth:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_3d

    .line 207
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr v1, p2

    invoke-virtual {p0, v1, v0, v0}, Lcn/codemao/android/sketch/RectHelper;->updateAllScale(FZZ)V

    .line 212
    :cond_3d
    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/codemao/android/sketch/RectHelper;->canvasLeft:F

    const/4 v2, 0x0

    cmpl-float v3, p2, v1

    if-lez v3, :cond_48

    :goto_46
    sub-float/2addr p2, v1

    goto :goto_52

    .line 214
    :cond_48
    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/codemao/android/sketch/RectHelper;->canvasRight:F

    cmpg-float v3, p2, v1

    if-gez v3, :cond_51

    goto :goto_46

    :cond_51
    const/4 p2, 0x0

    .line 218
    :goto_52
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcn/codemao/android/sketch/RectHelper;->canvasTop:F

    cmpl-float v4, v1, v3

    if-lez v4, :cond_5d

    sub-float v2, v1, v3

    goto :goto_67

    .line 220
    :cond_5d
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcn/codemao/android/sketch/RectHelper;->canvasBottom:F

    cmpg-float v3, p1, v1

    if-gez v3, :cond_67

    sub-float v2, p1, v1

    .line 223
    :cond_67
    :goto_67
    invoke-virtual {p0, p2, v2, v0, v0}, Lcn/codemao/android/sketch/RectHelper;->updateAllOffset(FFZZ)V

    .line 224
    iget-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/view/SketchViewV5;->refresh()V

    :goto_6f
    return-void
.end method

.method public init(Lcn/codemao/android/sketch/view/SketchViewV5;IILandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 7

    .line 98
    iput-object p4, p0, Lcn/codemao/android/sketch/RectHelper;->canvasRect:Landroid/graphics/RectF;

    .line 99
    iput-object p5, p0, Lcn/codemao/android/sketch/RectHelper;->stageRect:Landroid/graphics/RectF;

    .line 100
    iput p2, p0, Lcn/codemao/android/sketch/RectHelper;->screenWitdh:I

    int-to-float p2, p2

    const/high16 p5, 0x40000000  # 2.0f

    div-float/2addr p2, p5

    .line 102
    iput p2, p0, Lcn/codemao/android/sketch/RectHelper;->centerX:F

    int-to-float p2, p3

    div-float p3, p2, p5

    .line 103
    iput p3, p0, Lcn/codemao/android/sketch/RectHelper;->centerY:F

    const p3, 0x43bb8000  # 375.0f

    div-float/2addr p2, p3

    .line 104
    iput p2, p0, Lcn/codemao/android/sketch/RectHelper;->unitSize:F

    const/high16 p2, 0x41880000  # 17.0f

    .line 105
    invoke-virtual {p0, p2}, Lcn/codemao/android/sketch/RectHelper;->getUnScaledSize(F)I

    move-result p2

    iput p2, p0, Lcn/codemao/android/sketch/RectHelper;->helpIconRadius:I

    .line 107
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->helpPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x40800000  # 4.0f

    invoke-virtual {p0, p3}, Lcn/codemao/android/sketch/RectHelper;->getUnScaledSize(F)I

    move-result p3

    int-to-float p3, p3

    const/4 p5, 0x0

    const/high16 v0, 0x40000000  # 2.0f

    invoke-virtual {p2, p3, p5, p5, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 108
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->helpPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcn/codemao/android/sketch/RectHelper;->getHelpStrokeWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    invoke-virtual {p0, p4}, Lcn/codemao/android/sketch/RectHelper;->updateCanvasRect(Landroid/graphics/RectF;)V

    .line 112
    iput-object p1, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    .line 114
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

    if-nez p2, :cond_4c

    .line 115
    new-instance p2, Lcn/codemao/android/sketch/utils/MovePathUtils;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcn/codemao/android/sketch/utils/MovePathUtils;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->movePathUtils:Lcn/codemao/android/sketch/utils/MovePathUtils;

    :cond_4c
    return-void
.end method

.method public initFigureRect()V
    .registers 3

    .line 417
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->leftMidRect:Landroid/graphics/RectF;

    .line 420
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->rightMidRect:Landroid/graphics/RectF;

    .line 422
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->topMidRect:Landroid/graphics/RectF;

    .line 423
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->bottomMidRect:Landroid/graphics/RectF;

    .line 427
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->rotatePointPaint:Landroid/graphics/Paint;

    const v1, -0x3f3934

    .line 428
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->rotatePointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 430
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->rotatePointPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public initTextRect()V
    .registers 5

    .line 435
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$drawable;->canvas_copy:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mCopyBitmap:Landroid/graphics/Bitmap;

    .line 437
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$drawable;->canvas_rotate_tran:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateBitmap:Landroid/graphics/Bitmap;

    .line 439
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/codemao/android/sketch/R$drawable;->canvas_close:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mDeleteBitmap:Landroid/graphics/Bitmap;

    .line 443
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateRect:Landroid/graphics/Rect;

    .line 444
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mDeleteRect:Landroid/graphics/Rect;

    .line 445
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mCopyRect:Landroid/graphics/Rect;

    .line 447
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mDeleteDstRect:Landroid/graphics/RectF;

    .line 448
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateDstRect:Landroid/graphics/RectF;

    .line 449
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mCopyDstRect:Landroid/graphics/RectF;

    .line 451
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mDeleteRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/codemao/android/sketch/RectHelper;->mDeleteBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/RectHelper;->mDeleteBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 452
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 453
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mCopyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/codemao/android/sketch/RectHelper;->mCopyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/codemao/android/sketch/RectHelper;->mCopyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public offsetDrawing(FFLcn/codemao/android/sketch/model/BaseStickerInfo;)V
    .registers 9

    .line 317
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v0

    const/high16 v1, 0x42b40000  # 90.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    neg-float v0, p1

    move v1, v0

    move v0, p2

    goto :goto_2a

    .line 321
    :cond_e
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v0

    const/high16 v1, 0x43340000  # 180.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    neg-float v0, p1

    neg-float v1, p2

    goto :goto_2a

    .line 324
    :cond_1b
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v0

    const/high16 v1, 0x43870000  # 270.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_28

    neg-float v0, p2

    move v1, p1

    goto :goto_2a

    :cond_28
    move v0, p1

    move v1, p2

    .line 329
    :goto_2a
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->getMode()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3f

    .line 330
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2, v4}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V

    goto :goto_46

    .line 333
    :cond_3f
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object p1

    invoke-virtual {p1, p3, v0, v1, v4}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V

    :goto_46
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1102
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 1103
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1105
    :cond_7
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mDeleteBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    .line 1106
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1108
    :cond_e
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mCopyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 1109
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_15
    return-void
.end method

.method public scalePoints(FFLcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 10

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_b

    cmpl-float v0, p2, v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1021
    :goto_d
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 1022
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    .line 1024
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    .line 1025
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 1027
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/PointInfo;

    .line 1029
    iget v5, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v5, v3

    mul-float v5, v5, p1

    add-float/2addr v5, v3

    iget v3, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v3, v2

    mul-float v3, v3, p2

    add-float/2addr v3, v2

    invoke-virtual {v4, v5, v3}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1032
    :cond_3f
    :goto_3f
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7b

    .line 1033
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 1034
    iget v2, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1035
    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v4

    add-float/2addr v3, v1

    .line 1036
    invoke-virtual {p3}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPointControlls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/PointInfo;

    .line 1038
    iget v4, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v4, v2

    mul-float v4, v4, p1

    add-float/2addr v4, v2

    iget v2, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v2, v3

    mul-float v2, v2, p2

    add-float/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_7b
    return-void
.end method

.method public upDateRotate(Lcn/codemao/android/sketch/model/StickerFigureInfo;FF)V
    .registers 11

    .line 1076
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 1077
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 1078
    new-instance v2, Lcn/codemao/android/sketch/model/PointInfo;

    iget-object v3, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateDstRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateDstRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1079
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 1080
    iget v3, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 1081
    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr p2, v3

    add-float/2addr p3, v2

    sub-float/2addr v3, v0

    sub-float/2addr v2, v1

    sub-float/2addr p2, v0

    sub-float/2addr p3, v1

    mul-float v0, v3, v3

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 1088
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p2, p2

    mul-float v4, p3, p3

    add-float/2addr v1, v4

    float-to-double v4, v1

    .line 1089
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float v4, v3, p2

    mul-float v5, v2, p3

    add-float/2addr v4, v5

    mul-float v0, v0, v1

    div-float/2addr v4, v0

    float-to-double v0, v4

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    cmpl-double v6, v0, v4

    if-gtz v6, :cond_82

    const-wide/high16 v4, -0x4010000000000000L  # -1.0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_5e

    goto :goto_82

    .line 1093
    :cond_5e
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v3, v3, p3

    mul-float p2, p2, v2

    sub-float/2addr v3, p2

    const/4 p2, 0x0

    cmpl-float p2, v3, p2

    if-lez p2, :cond_73

    const/4 p2, 0x1

    goto :goto_74

    :cond_73
    const/4 p2, -0x1

    :goto_74
    int-to-float p2, p2

    mul-float p2, p2, v0

    .line 1097
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result p3

    add-float/2addr p3, p2

    const/high16 p2, 0x43b40000  # 360.0f

    rem-float/2addr p3, p2

    invoke-virtual {p1, p3}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmRotateAngle(F)V

    :cond_82
    :goto_82
    return-void
.end method

.method public updateAllOffset(FFZZ)V
    .registers 10

    .line 264
    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasDx:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasDx:F

    .line 265
    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasDy:F

    add-float/2addr v0, p2

    iput v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasDy:F

    .line 266
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->setNeedUpdatePen(Z)V

    .line 268
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getmDrawingList()Ljava/util/List;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->getmFigureEditList()Ljava/util/List;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getmTextList()Ljava/util/List;

    move-result-object v2

    .line 271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 272
    invoke-virtual {p0, p1, p2, v3}, Lcn/codemao/android/sketch/RectHelper;->offsetDrawing(FFLcn/codemao/android/sketch/model/BaseStickerInfo;)V

    goto :goto_26

    .line 274
    :cond_36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3a
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 275
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v4

    if-eqz v4, :cond_3a

    .line 276
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v4

    invoke-virtual {v4, v1, p1, p2, v3}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V

    goto :goto_3a

    .line 283
    :cond_55
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getReEditPaint()Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 284
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getReEditPaint()Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, v3}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->onCanvasMoved(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)V

    :cond_67
    if-eqz p3, :cond_83

    .line 287
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6d
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 289
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    neg-float v1, p1

    neg-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_6d

    .line 293
    :cond_83
    iget-object p3, p0, Lcn/codemao/android/sketch/RectHelper;->canvasRect:Landroid/graphics/RectF;

    neg-float v0, p1

    neg-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 294
    iget-object p3, p0, Lcn/codemao/android/sketch/RectHelper;->stageRect:Landroid/graphics/RectF;

    invoke-virtual {p3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    if-eqz p4, :cond_96

    .line 296
    iget-object p3, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p3, v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->notifyCanvasTranslate(FF)V

    .line 297
    :cond_96
    iget-object p3, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p3}, Lcn/codemao/android/sketch/view/SketchViewV5;->getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p3

    iget-object p4, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p3, p4, p0, p1, p2}, Lcn/codemao/android/sketch/action/UndoRedoManager;->updateAllOffset(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/RectHelper;FF)V

    .line 298
    iget-object p3, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p3}, Lcn/codemao/android/sketch/view/SketchViewV5;->getFigureUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p3

    iget-object p4, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p3, p4, p0, p1, p2}, Lcn/codemao/android/sketch/action/UndoRedoManager;->updateAllOffset(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/RectHelper;FF)V

    return-void
.end method

.method public updateAllScale(FZZ)V
    .registers 10

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    return-void

    .line 342
    :cond_7
    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->scale:F

    mul-float v1, v0, p1

    const/high16 v2, 0x40800000  # 4.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_13

    div-float p1, v2, v0

    :cond_13
    mul-float v0, v0, p1

    .line 349
    iput v0, p0, Lcn/codemao/android/sketch/RectHelper;->scale:F

    .line 351
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getPenPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    .line 352
    iget-object v1, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->getPenPaint()Landroid/graphics/Paint;

    move-result-object v1

    mul-float v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 354
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/view/SketchViewV5;->setNeedUpdatePen(Z)V

    .line 355
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/view/SketchViewV5;->getmDrawingList()Ljava/util/List;

    move-result-object v0

    .line 356
    iget-object v2, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getmFigureEditList()Ljava/util/List;

    move-result-object v2

    .line 357
    iget-object v3, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v3}, Lcn/codemao/android/sketch/view/SketchViewV5;->getmTextList()Ljava/util/List;

    move-result-object v3

    .line 360
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 361
    invoke-virtual {v4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v5

    invoke-virtual {v5, v4, p1, v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V

    goto :goto_48

    .line 364
    :cond_5c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 365
    invoke-virtual {v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v4

    invoke-virtual {v4, v1, p1, v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V

    goto :goto_60

    :cond_75
    if-eqz p2, :cond_9e

    .line 369
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    .line 370
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    iget-object v3, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v1, p1, v3, v4}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    .line 371
    invoke-virtual {v0, p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setScale(F)V

    goto :goto_7b

    .line 375
    :cond_9e
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getReEditPaint()Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    move-result-object p2

    if-eqz p2, :cond_b0

    .line 376
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getReEditPaint()Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1, v2}, Lcn/codemao/android/sketch/view/paint/ReEditPaint;->onCanvasScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FZ)V

    .line 379
    :cond_b0
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->canvasRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p2, p1, v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    .line 380
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->stageRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {p2, p1, v0, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;FII)V

    if-eqz p3, :cond_db

    .line 383
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    iget p3, p0, Lcn/codemao/android/sketch/RectHelper;->scale:F

    invoke-virtual {p2, p3}, Lcn/codemao/android/sketch/view/SketchViewV5;->notifyCanvasScale(F)V

    .line 385
    :cond_db
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p2

    iget-object p3, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p2, p3, p0, p1}, Lcn/codemao/android/sketch/action/UndoRedoManager;->updateAllScale(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/RectHelper;F)V

    .line 386
    iget-object p2, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getFigureUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p2

    iget-object p3, p0, Lcn/codemao/android/sketch/RectHelper;->sketchView:Lcn/codemao/android/sketch/view/SketchViewV5;

    invoke-virtual {p2, p3, p0, p1}, Lcn/codemao/android/sketch/action/UndoRedoManager;->updateAllScale(Lcn/codemao/android/sketch/view/paint/SketchControll;Lcn/codemao/android/sketch/RectHelper;F)V

    return-void
.end method

.method public updateCanvasRect(Landroid/graphics/RectF;)V
    .registers 3

    .line 1513
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasLeft:F

    .line 1514
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasRight:F

    .line 1515
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasTop:F

    .line 1516
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasBottom:F

    .line 1517
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/RectHelper;->canvasWidth:F

    .line 1518
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iput p1, p0, Lcn/codemao/android/sketch/RectHelper;->canvasHeight:F

    return-void
.end method

.method public updateCenterPotin(Lcn/codemao/android/sketch/model/CenterPointInfo;Landroid/graphics/RectF;FFII)V
    .registers 10

    if-nez p2, :cond_3

    return-void

    .line 1330
    :cond_3
    iget v0, p0, Lcn/codemao/android/sketch/RectHelper;->screenWitdh:I

    div-int/lit8 v0, v0, 0x23

    .line 1331
    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, p3, v1

    if-gez v2, :cond_f

    :goto_d
    move p3, v1

    goto :goto_16

    .line 1333
    :cond_f
    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p3, v1

    if-lez v2, :cond_16

    goto :goto_d

    .line 1336
    :cond_16
    :goto_16
    iget v1, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p4, v1

    if-gez v2, :cond_1e

    move p4, v1

    goto :goto_25

    .line 1338
    :cond_1e
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, p4, p2

    if-lez v1, :cond_25

    move p4, p2

    .line 1341
    :cond_25
    :goto_25
    iput p3, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->x:F

    .line 1342
    iput p4, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->y:F

    .line 1343
    iget-object p2, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->rectF:Landroid/graphics/RectF;

    int-to-float v0, v0

    sub-float v1, p3, v0

    sub-float v2, p4, v0

    add-float/2addr p3, v0

    add-float/2addr p4, v0

    invoke-virtual {p2, v1, v2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1344
    iget-object p2, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->leftPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1345
    iget-object p2, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->rightPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1346
    iget-object p2, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->topPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1347
    iget-object p2, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->bottomPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1349
    iget-object p2, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->leftPath:Landroid/graphics/Path;

    iget p3, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->y:F

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1350
    iget-object p2, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->rightPath:Landroid/graphics/Path;

    int-to-float p3, p5

    iget p5, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->y:F

    invoke-virtual {p2, p3, p5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1351
    iget-object p2, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->topPath:Landroid/graphics/Path;

    iget p3, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->x:F

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1352
    iget-object p2, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->bottomPath:Landroid/graphics/Path;

    iget p3, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->x:F

    int-to-float p4, p6

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1353
    iget-object p2, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->leftPath:Landroid/graphics/Path;

    iget p3, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->x:F

    sub-float/2addr p3, v0

    iget p4, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->y:F

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1354
    iget-object p2, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->rightPath:Landroid/graphics/Path;

    iget p3, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->x:F

    add-float/2addr p3, v0

    iget p4, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->y:F

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1355
    iget-object p2, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->topPath:Landroid/graphics/Path;

    iget p3, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->x:F

    iget p4, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->y:F

    sub-float/2addr p4, v0

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1356
    iget-object p2, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->bottomPath:Landroid/graphics/Path;

    iget p3, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->x:F

    iget p1, p1, Lcn/codemao/android/sketch/model/CenterPointInfo;->y:F

    add-float/2addr p1, v0

    invoke-virtual {p2, p3, p1}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public updateFigureHelpRect(Landroid/graphics/RectF;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 522
    :cond_3
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mCopyDstRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/codemao/android/sketch/RectHelper;->helpIconRadius:I

    int-to-float v3, v2

    sub-float v3, v1, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    int-to-float v5, v2

    sub-float v5, v4, v5

    int-to-float v6, v2

    add-float/2addr v1, v6

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 523
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mDeleteDstRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/codemao/android/sketch/RectHelper;->helpIconRadius:I

    int-to-float v3, v2

    sub-float v3, v1, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    int-to-float v5, v2

    sub-float v5, v4, v5

    int-to-float v6, v2

    add-float/2addr v1, v6

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 524
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateDstRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/codemao/android/sketch/RectHelper;->helpIconRadius:I

    int-to-float v3, v2

    sub-float v3, v1, v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v2

    sub-float v5, v4, v5

    int-to-float v6, v2

    add-float/2addr v1, v6

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x40400000  # 3.0f

    .line 526
    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/RectHelper;->getUnScaledSize(F)I

    move-result v0

    .line 529
    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 531
    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 534
    iget-object v3, p0, Lcn/codemao/android/sketch/RectHelper;->leftMidRect:Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/RectF;->left:F

    int-to-float v0, v0

    sub-float v5, v4, v0

    sub-float v6, v2, v0

    add-float/2addr v4, v0

    add-float/2addr v2, v0

    invoke-virtual {v3, v5, v6, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 535
    iget-object v3, p0, Lcn/codemao/android/sketch/RectHelper;->rightMidRect:Landroid/graphics/RectF;

    iget v4, p1, Landroid/graphics/RectF;->right:F

    sub-float v5, v4, v0

    add-float/2addr v4, v0

    invoke-virtual {v3, v5, v6, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 536
    iget-object v2, p0, Lcn/codemao/android/sketch/RectHelper;->topMidRect:Landroid/graphics/RectF;

    sub-float v3, v1, v0

    iget v4, p1, Landroid/graphics/RectF;->top:F

    sub-float v5, v4, v0

    add-float/2addr v1, v0

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v5, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 537
    iget-object v2, p0, Lcn/codemao/android/sketch/RectHelper;->bottomMidRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v4, p1, v0

    add-float/2addr p1, v0

    invoke-virtual {v2, v3, v4, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public updateFigureScale(Lcn/codemao/android/sketch/model/StickerFigureInfo;IFFI)V
    .registers 19

    move v0, p2

    move/from16 v1, p5

    .line 1130
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 1131
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v8

    .line 1134
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 1135
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 1136
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    .line 1137
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    .line 1138
    new-instance v7, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    invoke-direct {v7, v9, v10}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1139
    new-instance v9, Lcn/codemao/android/sketch/model/PointInfo;

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-direct {v9, v10, v11}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1140
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v12

    neg-float v12, v12

    invoke-static {v9, v10, v11, v12}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    const/16 v10, 0x4e2e

    if-ne v0, v10, :cond_d8

    .line 1149
    iget v0, v9, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float v2, v0, v3

    int-to-float v1, v1

    cmpg-float v2, v2, v1

    if-gez v2, :cond_70

    add-float v0, v3, v1

    .line 1153
    :cond_70
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 1155
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2, v3, v6, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1157
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 1159
    new-instance v2, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-direct {v2, v4, v8}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1160
    new-instance v4, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v4, v3, v6}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1161
    new-instance v8, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v8, v3, v6}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1162
    iget v3, v7, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v6, v7, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v7

    invoke-static {v4, v3, v6, v7}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 1163
    iget v3, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v6

    invoke-static {v8, v3, v2, v6}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 1164
    iget v2, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v3, v8, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v2, v3

    .line 1165
    iget v3, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget v4, v8, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float v9, v3, v4

    .line 1166
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3, v2, v9}, Landroid/graphics/RectF;->offset(FF)V

    move-object v3, p0

    move-object v4, p1

    move v6, v1

    move v7, v0

    move v8, v2

    .line 1167
    invoke-direct/range {v3 .. v9}, Lcn/codemao/android/sketch/RectHelper;->scaleVerticalPoint(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFFFF)V

    goto/16 :goto_237

    :cond_d8
    const/16 v10, 0x4e2b

    if-ne v0, v10, :cond_14f

    .line 1171
    iget v0, v9, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float v3, v2, v0

    int-to-float v1, v1

    cmpg-float v3, v3, v1

    if-gez v3, :cond_e7

    sub-float v0, v2, v1

    .line 1178
    :cond_e7
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 1179
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3, v0, v6, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1180
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 1181
    new-instance v3, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-direct {v3, v4, v8}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1182
    new-instance v4, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v4, v0, v6}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1183
    new-instance v8, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v8, v0, v6}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1184
    iget v0, v7, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v6, v7, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v7

    invoke-static {v4, v0, v6, v7}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 1185
    iget v0, v3, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v6

    invoke-static {v8, v0, v3, v6}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 1186
    iget v0, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v3, v8, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v0, v3

    .line 1187
    iget v3, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget v4, v8, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float v9, v3, v4

    .line 1188
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3, v0, v9}, Landroid/graphics/RectF;->offset(FF)V

    move-object v3, p0

    move-object v4, p1

    move v6, v1

    move v7, v2

    move v8, v0

    .line 1190
    invoke-direct/range {v3 .. v9}, Lcn/codemao/android/sketch/RectHelper;->scaleVerticalPoint(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFFFF)V

    goto/16 :goto_237

    :cond_14f
    const/16 v5, 0x4e30

    if-ne v0, v5, :cond_1c3

    .line 1194
    iget v0, v9, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float v5, v4, v0

    int-to-float v1, v1

    cmpg-float v5, v5, v1

    if-gez v5, :cond_15e

    sub-float v0, v4, v1

    .line 1201
    :cond_15e
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    .line 1203
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1205
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    .line 1207
    new-instance v1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v1, v2, v4}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1208
    new-instance v2, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v2, v3, v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1209
    new-instance v4, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v4, v3, v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1210
    iget v0, v7, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v3, v7, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v5

    invoke-static {v2, v0, v3, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 1211
    iget v0, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v3

    invoke-static {v4, v0, v1, v3}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 1212
    iget v0, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v1, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float v11, v0, v1

    .line 1213
    iget v0, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget v1, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float v12, v0, v1

    .line 1214
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    move-object v6, p0

    move-object v7, p1

    .line 1216
    invoke-direct/range {v6 .. v12}, Lcn/codemao/android/sketch/RectHelper;->scaleHorizontal(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFFFF)V

    goto :goto_237

    :cond_1c3
    const/16 v4, 0x4e31

    if-ne v0, v4, :cond_237

    .line 1225
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    .line 1226
    iget v4, v9, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float v5, v4, v6

    int-to-float v1, v1

    cmpg-float v5, v5, v1

    if-gez v5, :cond_1da

    sub-float v4, v6, v1

    .line 1230
    :cond_1da
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v3, v6, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1232
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    .line 1233
    new-instance v1, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {v1, v2, v4}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1234
    new-instance v2, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v2, v3, v6}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1235
    new-instance v4, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v4, v3, v6}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 1236
    iget v3, v7, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v5, v7, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v6

    invoke-static {v2, v3, v5, v6}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 1237
    iget v3, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v5

    invoke-static {v4, v3, v1, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 1238
    iget v1, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v3, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float v11, v1, v3

    .line 1239
    iget v1, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget v2, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float v12, v1, v2

    .line 1242
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    move-object v6, p0

    move-object v7, p1

    move v9, v0

    .line 1245
    invoke-direct/range {v6 .. v12}, Lcn/codemao/android/sketch/RectHelper;->scaleHorizontal(Lcn/codemao/android/sketch/model/StickerFigureInfo;FFFFF)V

    :cond_237
    :goto_237
    return-void
.end method

.method public updateHelpRect(Lcn/codemao/android/sketch/model/StickerTextInfo;)V
    .registers 7

    const/high16 v0, 0x41900000  # 18.0f

    .line 1430
    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/RectHelper;->getUnScaledSize(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41b00000  # 22.0f

    .line 1431
    invoke-virtual {p0, v1}, Lcn/codemao/android/sketch/RectHelper;->getUnScaledSize(F)I

    move-result v1

    int-to-float v1, v1

    .line 1433
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    .line 1435
    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1437
    iget v4, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v3, v3

    sub-float v3, v0, v3

    float-to-int v3, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 1444
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    .line 1445
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getHelpRect()Landroid/graphics/RectF;

    move-result-object p1

    .line 1447
    iget v4, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v1

    iput v4, p1, Landroid/graphics/RectF;->left:F

    .line 1448
    iget v4, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, v3

    sub-float/2addr v4, v3

    iput v4, p1, Landroid/graphics/RectF;->top:F

    .line 1449
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v1

    iput v3, p1, Landroid/graphics/RectF;->right:F

    .line 1450
    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public updateRotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FF)V
    .registers 5

    const/4 v0, 0x1

    .line 905
    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/codemao/android/sketch/RectHelper;->updateRotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)Z

    return-void
.end method

.method public updateRotateAndScale(Lcn/codemao/android/sketch/model/BaseStickerInfo;FFZ)Z
    .registers 15

    const/4 p4, 0x0

    if-nez p1, :cond_4

    return p4

    .line 914
    :cond_4
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    .line 916
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 918
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    .line 919
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 921
    invoke-virtual {v0, v2, v3}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    .line 923
    iget v2, p0, Lcn/codemao/android/sketch/RectHelper;->centerX:F

    iget v3, p0, Lcn/codemao/android/sketch/RectHelper;->centerY:F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 929
    iget v2, v1, Landroid/graphics/RectF;->right:F

    .line 930
    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 933
    new-instance v4, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v4, v2, v3}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 935
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result v5

    invoke-static {v4, v2, v3, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 936
    iget v2, p0, Lcn/codemao/android/sketch/RectHelper;->centerX:F

    iget v3, p0, Lcn/codemao/android/sketch/RectHelper;->centerY:F

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getCavasRotate()F

    move-result v5

    invoke-static {v4, v2, v3, v5}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 938
    iget v2, v4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 939
    iget v3, v4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    add-float/2addr p2, v2

    add-float/2addr p3, v3

    .line 945
    iget v4, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr v2, v4

    .line 946
    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr v3, v0

    sub-float/2addr p2, v4

    sub-float/2addr p3, v0

    mul-float v0, v2, v2

    mul-float v4, v3, v3

    add-float/2addr v0, v4

    float-to-double v4, v0

    .line 951
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    float-to-double v4, v4

    .line 952
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v5, v2, p2

    mul-float v6, v3, p3

    add-float/2addr v5, v6

    mul-float v6, v0, v4

    div-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    cmpl-double v9, v5, v7

    if-gtz v9, :cond_10d

    const-wide/high16 v7, -0x4010000000000000L  # -1.0

    cmpg-double v9, v5, v7

    if-gez v9, :cond_81

    goto/16 :goto_10d

    .line 958
    :cond_81
    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float p4, v5

    mul-float v2, v2, p3

    mul-float p2, p2, v3

    sub-float/2addr v2, p2

    const/4 p2, 0x0

    const/4 p3, 0x1

    cmpl-float p2, v2, p2

    if-lez p2, :cond_97

    const/4 p2, 0x1

    goto :goto_98

    :cond_97
    const/4 p2, -0x1

    :goto_98
    int-to-float p2, p2

    mul-float p2, p2, p4

    div-float/2addr v4, v0

    const/high16 p4, 0x3f800000  # 1.0f

    cmpg-float v0, v4, p4

    if-gez v0, :cond_ba

    .line 969
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcn/codemao/android/sketch/RectHelper;->getScaledSize(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_ba

    const/high16 v4, 0x3f800000  # 1.0f

    .line 975
    :cond_ba
    instance-of v0, p1, Lcn/codemao/android/sketch/model/StickerTextInfo;

    if-eqz v0, :cond_ed

    .line 977
    move-object v0, p1

    check-cast v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    cmpg-float v1, v4, p4

    if-gez v1, :cond_e1

    .line 978
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getScaledSize(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_e1

    goto :goto_e2

    :cond_e1
    move p4, v4

    .line 981
    :goto_e2
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v1, p4}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;F)V

    .line 982
    invoke-virtual {v0, p4}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setScale(F)V

    move v4, p4

    .line 986
    :cond_ed
    instance-of p4, p1, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    if-eqz p4, :cond_101

    .line 987
    move-object p4, p1

    check-cast p4, Lcn/codemao/android/sketch/model/StickerFigureInfo;

    .line 996
    invoke-virtual {p4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0, v4}, Lcn/codemao/android/sketch/utils/RectUtil;->scaleRect(Landroid/graphics/RectF;F)V

    .line 997
    invoke-virtual {p4, v4}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setScale(F)V

    .line 998
    invoke-virtual {p0, v4, v4, p4}, Lcn/codemao/android/sketch/RectHelper;->scalePoints(FFLcn/codemao/android/sketch/model/StickerFigureInfo;)V

    .line 1002
    :cond_101
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getmRotateAngle()F

    move-result p4

    add-float/2addr p4, p2

    const/high16 p2, 0x43b40000  # 360.0f

    rem-float/2addr p4, p2

    invoke-virtual {p1, p4}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setmRotateAngle(F)V

    return p3

    :cond_10d
    :goto_10d
    return p4
.end method

.method public updateTextHelpRect(Landroid/graphics/RectF;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 492
    :cond_3
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mCopyDstRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/codemao/android/sketch/RectHelper;->helpIconRadius:I

    int-to-float v3, v2

    sub-float v3, v1, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    int-to-float v5, v2

    sub-float v5, v4, v5

    int-to-float v6, v2

    add-float/2addr v1, v6

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 493
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mDeleteDstRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/codemao/android/sketch/RectHelper;->helpIconRadius:I

    int-to-float v3, v2

    sub-float v3, v1, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    int-to-float v5, v2

    sub-float v5, v4, v5

    int-to-float v6, v2

    add-float/2addr v1, v6

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 494
    iget-object v0, p0, Lcn/codemao/android/sketch/RectHelper;->mRotateDstRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/codemao/android/sketch/RectHelper;->helpIconRadius:I

    int-to-float v3, v2

    sub-float v3, v1, v3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v2

    sub-float v4, p1, v4

    int-to-float v5, v2

    add-float/2addr v1, v5

    int-to-float v2, v2

    add-float/2addr p1, v2

    invoke-virtual {v0, v3, v4, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
