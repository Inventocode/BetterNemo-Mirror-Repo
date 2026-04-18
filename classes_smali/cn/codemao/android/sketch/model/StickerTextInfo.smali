.class public Lcn/codemao/android/sketch/model/StickerTextInfo;
.super Lcn/codemao/android/sketch/model/BaseStickerInfo;
.source "StickerTextInfo.java"


# instance fields
.field private backGroundPaint:Landroid/graphics/Paint;

.field private colorPosition:I

.field private isHasBackground:Z

.field private mText:Ljava/lang/String;

.field private maxString:Ljava/lang/String;

.field private orientation:I

.field private rectWitdh:F

.field private sHeight:F

.field private sWitdh:F

.field private scale:F

.field private strings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public textSize:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFF)V
    .registers 7

    .line 62
    invoke-direct {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->strings:Ljava/util/List;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->orientation:I

    .line 24
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->backGroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x4

    .line 28
    iput v1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->colorPosition:I

    .line 63
    iput p4, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->textSize:F

    .line 64
    iput p2, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->sWitdh:F

    .line 65
    iput p3, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->sHeight:F

    const/high16 p2, 0x3f800000  # 1.0f

    .line 66
    iput p2, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->scale:F

    .line 67
    iput-object p1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->mText:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->parseText()V

    .line 69
    iget-object p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 70
    iget-object p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 72
    iget-object p1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->backGroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object p1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->backGroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object p1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->backGroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private adJustTextSizeWidth(F)V
    .registers 4

    .line 371
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->maxString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 374
    :cond_9
    iget-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->maxString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->rectWitdh:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_28

    .line 377
    iget-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v0, v1

    .line 379
    iget-object v1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 380
    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->adJustTextSizeWidth(F)V

    :cond_28
    return-void
.end method

.method private parseSplite(Ljava/lang/String;)V
    .registers 5

    .line 242
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x16

    if-le v0, v1, :cond_1a

    const/4 v0, 0x0

    .line 243
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 244
    iget-object v2, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->strings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->parseSplite(Ljava/lang/String;)V

    goto :goto_1f

    .line 247
    :cond_1a
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->strings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1f
    return-void
.end method

.method private parseText()V
    .registers 5

    .line 216
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 218
    :cond_9
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->strings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 221
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->mText:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 222
    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    .line 223
    invoke-direct {p0, v3}, Lcn/codemao/android/sketch/model/StickerTextInfo;->parseSplite(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_22
    return-void
.end method


# virtual methods
.method public changeColor()V
    .registers 4

    .line 470
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->isHasBackground()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 471
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getBackGroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 472
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_26

    const/high16 v2, -0x1000000

    :cond_26
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_41

    .line 474
    :cond_2a
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getBackGroundPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 475
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getBackGroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_41
    return-void
.end method

.method public copy()Lcn/codemao/android/sketch/model/StickerTextInfo;
    .registers 7

    .line 489
    new-instance v0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    iget-object v1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->mText:Ljava/lang/String;

    iget v2, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->sWitdh:F

    iget v3, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->sHeight:F

    iget v4, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->textSize:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/codemao/android/sketch/model/StickerTextInfo;-><init>(Ljava/lang/String;FFF)V

    .line 490
    iget-object v1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->backGroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setBackGroundColor(I)V

    .line 492
    iget-boolean v1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->isHasBackground:Z

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setHasBackground(Z)V

    .line 493
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setiPaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V

    .line 504
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 505
    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getBackGroundPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getBackGroundPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 508
    iget v1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->scale:F

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setScale(F)V

    .line 509
    iget v1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mRotateAngle:F

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setmRotateAngle(F)V

    .line 512
    iget v1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->orientation:I

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setOrientation(I)V

    .line 513
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    .line 514
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->calculateCopyDiff()[I

    move-result-object v1

    .line 516
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v1, v3

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v1, v1, v5

    int-to-float v1, v1

    invoke-virtual {v2, v0, v3, v4, v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->moveFigure(Lcn/codemao/android/sketch/model/BaseStickerInfo;ZFF)V

    .line 518
    iget-boolean v1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->horizontalAdd:Z

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setHorizontalAdd(Z)V

    .line 519
    iget-boolean v1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->vericaleAdd:Z

    invoke-virtual {v0, v1}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->setVericaleAdd(Z)V

    .line 523
    iget-object v1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->maxString:Ljava/lang/String;

    iput-object v1, v0, Lcn/codemao/android/sketch/model/StickerTextInfo;->maxString:Ljava/lang/String;

    return-object v0
.end method

.method public flip(FZZ)V
    .registers 9

    .line 546
    new-instance p2, Lcn/codemao/android/sketch/model/PointInfo;

    iget-object p3, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    iget-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-direct {p2, p3, v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>(FF)V

    .line 547
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object p3

    invoke-virtual {p3}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object p3

    invoke-interface {p3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float p3, p3, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p3, v1

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v2

    invoke-interface {v2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    div-float/2addr v2, v1

    invoke-static {p2, p3, v2, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 550
    iget-object p3, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    .line 551
    iget-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 553
    iget-object v2, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    iget v3, p2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    div-float/2addr p3, v1

    sub-float v4, v3, p3

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 554
    iget p2, p2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    div-float/2addr v0, v1

    sub-float v1, p2, v0

    iput v1, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    .line 555
    iput v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, v0

    .line 556
    iput p2, v2, Landroid/graphics/RectF;->bottom:F

    .line 557
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmRotateAngle()F

    move-result p2

    add-float/2addr p2, p1

    const/high16 p1, 0x43b40000  # 360.0f

    rem-float/2addr p2, p1

    .line 559
    invoke-virtual {p0, p2}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setmRotateAngle(F)V

    return-void
.end method

.method public getBackGroundPaint()Landroid/graphics/Paint;
    .registers 2

    .line 187
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->backGroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getColorPosition()I
    .registers 2

    .line 51
    iget v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->colorPosition:I

    return v0
.end method

.method public getCurColor()I
    .registers 2

    .line 481
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->isHasBackground()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 482
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getBackGroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0

    .line 484
    :cond_f
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getHelpRect()Landroid/graphics/RectF;
    .registers 2

    .line 162
    iget-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->helpRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getScale()F
    .registers 2

    .line 87
    iget v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->scale:F

    return v0
.end method

.method public getStrings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->strings:Ljava/util/List;

    return-object v0
.end method

.method public getmPaint()Landroid/graphics/Paint;
    .registers 2

    .line 79
    iget-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getmRotateAngle()F
    .registers 2

    .line 175
    iget v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mRotateAngle:F

    return v0
.end method

.method public getmText()Ljava/lang/String;
    .registers 2

    .line 139
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isHasBackground()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->isHasBackground:Z

    return v0
.end method

.method public reSizeText()V
    .registers 2

    .line 356
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->adJustTextSizeWidth(F)V

    return-void
.end method

.method public setBackGroundColor(I)V
    .registers 3

    .line 170
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->backGroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColor(Lcn/codemao/android/sketch/model/TextVO;)V
    .registers 5

    .line 438
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/TextVO;->isHasBackground()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setHasBackground(Z)V

    .line 439
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/TextVO;->getColorPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->setColorPosition(I)V

    .line 441
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/TextVO;->isHasBackground()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 444
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/TextVO;->getColorPosition()I

    move-result v0

    invoke-static {}, Lcn/codemao/android/sketch/Constants;->getColor()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-ne v0, v1, :cond_2f

    .line 445
    invoke-static {}, Lcn/codemao/android/sketch/Constants;->getColor()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 447
    :cond_2f
    invoke-static {}, Lcn/codemao/android/sketch/Constants;->getColor()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 449
    :goto_39
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {}, Lcn/codemao/android/sketch/Constants;->getColor()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 450
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getBackGroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {}, Lcn/codemao/android/sketch/Constants;->getColor()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/TextVO;->getColorPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    :cond_67
    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/TextVO;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/TextVO;->isHasBackground()Z

    move-result p1

    if-nez p1, :cond_83

    .line 454
    :cond_7b
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getBackGroundPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_83
    return-void
.end method

.method public setColorPosition(I)V
    .registers 4

    .line 55
    iput p1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->colorPosition:I

    .line 56
    iget-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcn/codemao/android/sketch/Constants;->getColor()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setHasBackground(Z)V
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->isHasBackground:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 154
    iput p1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->orientation:I

    return-void
.end method

.method public setScale(F)V
    .registers 4

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    return-void

    .line 99
    :cond_7
    iget v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->scale:F

    mul-float v0, v0, p1

    iput v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->scale:F

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setScale: scale = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->scale:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StickerTextInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->textSize:F

    iget v1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->scale:F

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setmRotateAngle(F)V
    .registers 2

    .line 179
    iput p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mRotateAngle:F

    return-void
.end method

.method public setmText(Ljava/lang/String;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->mText:Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->parseText()V

    .line 145
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->updateRect()V

    return-void
.end method

.method public updateColor(I)V
    .registers 4

    .line 460
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->isHasBackground()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 461
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getBackGroundPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 462
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_16

    const/high16 v1, -0x1000000

    :cond_16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_21

    .line 464
    :cond_1a
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->getmPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_21
    return-void
.end method

.method public updateRect()V
    .registers 9

    .line 284
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 285
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    const/4 v2, 0x0

    .line 287
    iput v2, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->rectWitdh:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 291
    :goto_12
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->strings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_42

    .line 292
    iget-object v4, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->strings:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 293
    iget-object v5, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v4, v2, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 294
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->rectWitdh:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3f

    .line 295
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->rectWitdh:F

    .line 296
    iput-object v4, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->maxString:Ljava/lang/String;

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 300
    :cond_42
    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/sketch/RectHelper;->getSafeTextWidth()F

    move-result v0

    invoke-direct {p0, v0}, Lcn/codemao/android/sketch/model/StickerTextInfo;->adJustTextSizeWidth(F)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRect:  rectWitdh = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->rectWitdh:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StickerTextInfo"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 308
    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 309
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateRect: textHeghit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " textSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " textHeghit2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->strings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int v0, v0, v3

    .line 316
    iget-object v3, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    const/high16 v5, 0x40000000  # 2.0f

    if-eqz v3, :cond_c5

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v4

    div-float/2addr v3, v5

    goto :goto_cb

    :cond_c5
    iget-object v3, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    .line 317
    :goto_cb
    iget-object v6, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_dc

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v4

    div-float/2addr v6, v5

    goto :goto_e2

    :cond_dc
    iget-object v4, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    .line 320
    :goto_e2
    iget-object v4, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    iget v7, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->rectWitdh:F

    div-float/2addr v7, v5

    sub-float/2addr v3, v7

    iput v3, v4, Landroid/graphics/RectF;->left:F

    const/16 v3, 0x20

    .line 321
    invoke-interface {v1, v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v5

    add-int/2addr v5, v0

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchHeight()I

    move-result v7

    if-le v5, v7, :cond_fd

    invoke-interface {v1, v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v3

    int-to-float v3, v3

    goto :goto_102

    :cond_fd
    shr-int/lit8 v3, v0, 0x1

    int-to-float v3, v3

    sub-float v3, v6, v3

    :goto_102
    iput v3, v4, Landroid/graphics/RectF;->top:F

    .line 322
    iget-object v3, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->rectWitdh:F

    add-float/2addr v4, v5

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 323
    iget v4, v3, Landroid/graphics/RectF;->top:F

    int-to-float v0, v0

    add-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRect: sketchControll.getSketchWidth() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getSketchWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rectWitdh = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;->rectWitdh:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRect: left = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
