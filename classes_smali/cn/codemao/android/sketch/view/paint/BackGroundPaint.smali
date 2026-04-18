.class public Lcn/codemao/android/sketch/view/paint/BackGroundPaint;
.super Ljava/lang/Object;
.source "BackGroundPaint.java"


# instance fields
.field private backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

.field private backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

.field private backRightBottom:Lcn/codemao/android/sketch/model/PointInfo;

.field private backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

.field private bgColorTemp:Lcn/codemao/android/sketch/model/PointInfo;

.field private bgRect:Landroid/graphics/RectF;

.field private cavasPaint:Landroid/graphics/Paint;

.field private curType:I

.field private cutScale:F

.field private isLandscapeStage:Z

.field private mBGbitmap:Landroid/graphics/Bitmap;

.field private mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

.field private mDefaultBG:Landroid/graphics/Bitmap;

.field private mSrcBitmap:Landroid/graphics/Bitmap;

.field private rectF:Landroid/graphics/RectF;

.field private srcRect:Landroid/graphics/RectF;

.field private srcScaleX:F

.field private srcScaleY:F

.field private viewBGModel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    .line 50
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    .line 51
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    .line 52
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backRightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    const/high16 v0, 0x3f800000  # 1.0f

    .line 66
    iput v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcScaleX:F

    .line 67
    iput v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcScaleY:F

    .line 69
    iput v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cutScale:F

    .line 71
    new-instance v0, Lcn/codemao/android/sketch/model/PointInfo;

    invoke-direct {v0}, Lcn/codemao/android/sketch/model/PointInfo;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->bgColorTemp:Lcn/codemao/android/sketch/model/PointInfo;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/codemao/android/sketch/R$drawable;->canvas_default_bg:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mDefaultBG:Landroid/graphics/Bitmap;

    .line 76
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mDefaultBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mDefaultBG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->bgRect:Landroid/graphics/RectF;

    .line 79
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcRect:Landroid/graphics/RectF;

    .line 80
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->rectF:Landroid/graphics/RectF;

    .line 82
    new-instance p1, Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-direct {p1}, Lcn/codemao/android/sketch/model/BackgroundVO;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    .line 84
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cavasPaint:Landroid/graphics/Paint;

    .line 85
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cavasPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cavasPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private adjustSrcRect(Landroid/graphics/RectF;Z)V
    .registers 8

    .line 349
    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BackgroundVO;->getRotate()F

    move-result p2

    const/high16 v0, 0x42b40000  # 90.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_28

    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-virtual {p2}, Lcn/codemao/android/sketch/model/BackgroundVO;->getRotate()F

    move-result p2

    const/high16 v0, 0x43870000  # 270.0f

    cmpl-float p2, p2, v0

    if-nez p2, :cond_19

    goto :goto_28

    .line 353
    :cond_19
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    iget v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcScaleX:F

    mul-float p2, p2, v0

    .line 354
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcScaleY:F

    goto :goto_36

    .line 350
    :cond_28
    :goto_28
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p2

    iget v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcScaleY:F

    mul-float p2, p2, v0

    .line 351
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcScaleX:F

    :goto_36
    mul-float v0, v0, v1

    .line 368
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float v4, p2, v3

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 369
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 371
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    div-float p2, v0, v3

    sub-float/2addr p1, p2

    iput p1, v1, Landroid/graphics/RectF;->top:F

    .line 372
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private calculateCanvasRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 9

    .line 124
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BackgroundVO;->getRotate()F

    move-result v0

    const/high16 v1, 0x43340000  # 180.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    .line 125
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_27

    .line 128
    :cond_1b
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 129
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 132
    :goto_27
    iget v2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->curType:I

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000  # 1.0f

    if-eq v2, v3, :cond_87

    const/4 v3, 0x3

    if-eq v2, v3, :cond_33

    goto/16 :goto_ce

    .line 134
    :cond_33
    iget-boolean v2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->isLandscapeStage:Z

    if-eqz v2, :cond_3b

    const v2, 0x3fccfab3

    goto :goto_3e

    :cond_3b
    const v2, 0x3f1fdc2c

    :goto_3e
    int-to-float v0, v0

    mul-float v4, v4, v0

    int-to-float v1, v1

    div-float/2addr v4, v1

    const/high16 v3, 0x40000000  # 2.0f

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_68

    .line 138
    iget v2, p2, Landroid/graphics/RectF;->top:F

    iput v2, p1, Landroid/graphics/RectF;->top:F

    .line 139
    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 141
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    mul-float v2, v2, v0

    .line 145
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 146
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    add-float/2addr p2, v2

    iput p2, p1, Landroid/graphics/RectF;->right:F

    goto :goto_ce

    .line 151
    :cond_68
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iput v2, p1, Landroid/graphics/RectF;->left:F

    .line 152
    iget v2, p2, Landroid/graphics/RectF;->right:F

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 155
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v0

    mul-float v2, v2, v1

    .line 159
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 160
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    add-float/2addr p2, v2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_ce

    .line 169
    :cond_87
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->isLandscapeStage:Z

    const/16 p2, 0x384

    const/16 v2, 0x232

    if-eqz p1, :cond_90

    goto :goto_94

    :cond_90
    const/16 p2, 0x232

    const/16 v2, 0x384

    :goto_94
    if-gt v0, p2, :cond_a8

    if-le v1, v2, :cond_99

    goto :goto_a8

    :cond_99
    int-to-float p1, v0

    mul-float p1, p1, v4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 186
    iput p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcScaleX:F

    int-to-float p1, v1

    mul-float p1, p1, v4

    int-to-float p2, v2

    div-float/2addr p1, p2

    .line 187
    iput p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcScaleY:F

    goto :goto_ce

    :cond_a8
    :goto_a8
    int-to-float p1, v0

    mul-float v0, p1, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float p2, p2

    mul-float v3, p2, v4

    int-to-float v2, v2

    div-float v5, v3, v2

    cmpl-float v0, v0, v5

    if-lez v0, :cond_c2

    div-float/2addr v3, p1

    .line 175
    iput v3, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cutScale:F

    mul-float v1, v1, v3

    .line 177
    iput v4, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcScaleX:F

    div-float/2addr v1, v2

    .line 178
    iput v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcScaleY:F

    goto :goto_ce

    :cond_c2
    mul-float v2, v2, v4

    div-float/2addr v2, v1

    .line 180
    iput v2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cutScale:F

    mul-float p1, p1, v2

    .line 182
    iput v4, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcScaleY:F

    div-float/2addr p1, p2

    .line 183
    iput p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcScaleX:F

    :goto_ce
    return-void
.end method

.method private fitFlip(FLcn/codemao/android/sketch/view/SketchViewV5;)V
    .registers 6

    const/high16 v0, 0x43340000  # 180.0f

    rem-float v0, p1, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_16

    .line 423
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 424
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_22

    .line 426
    :cond_16
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 427
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 431
    :goto_22
    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1, p2}, Lcn/codemao/android/sketch/RectHelper;->flip(FIILcn/codemao/android/sketch/view/SketchViewV5;)V

    return-void
.end method

.method private getBGSrcColor(Lcn/codemao/android/sketch/model/PointInfo;Landroid/graphics/Bitmap;Lcn/codemao/android/sketch/view/SketchViewV5;)I
    .registers 7

    .line 635
    invoke-virtual {p3}, Lcn/codemao/android/sketch/view/SketchViewV5;->getCanvasRect()Landroid/graphics/RectF;

    move-result-object p3

    .line 640
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-virtual {v0}, Lcn/codemao/android/sketch/model/BackgroundVO;->getRotate()F

    move-result v0

    const/high16 v1, 0x43340000  # 180.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    .line 641
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 642
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_23

    .line 644
    :cond_1b
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 645
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :goto_23
    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 649
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/PointInfo;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 650
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/PointInfo;->getY()F

    move-result p1

    sub-float/2addr p3, p1

    .line 653
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    div-float/2addr v1, v0

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 654
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    div-float/2addr p3, v0

    sub-float/2addr v1, p3

    float-to-int p3, v1

    .line 657
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lt p1, v0, :cond_58

    .line 658
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sub-int/2addr p1, v1

    goto :goto_5b

    :cond_58
    if-gez p1, :cond_5b

    const/4 p1, 0x1

    .line 663
    :cond_5b
    :goto_5b
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt p3, v0, :cond_67

    .line 664
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    sub-int/2addr p3, v1

    goto :goto_6a

    :cond_67
    if-gez p3, :cond_6a

    const/4 p3, 0x0

    .line 669
    :cond_6a
    :goto_6a
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1
.end method

.method private getPreviewBGColor(FFLandroid/graphics/Bitmap;Lcn/codemao/android/sketch/view/SketchViewV5;)I
    .registers 9

    .line 601
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 602
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 604
    invoke-virtual {p4}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchHeight()I

    move-result p4

    int-to-float p4, p4

    const/high16 v2, 0x3f800000  # 1.0f

    mul-float p4, p4, v2

    int-to-float v3, v1

    div-float/2addr p4, v3

    .line 609
    div-int/lit8 v0, v0, 0x2

    .line 610
    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v0

    div-float/2addr p1, p4

    sub-float/2addr v0, p1

    int-to-float p1, v1

    div-float/2addr p2, p4

    sub-float/2addr p1, p2

    .line 617
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/4 p4, 0x0

    cmpl-float p2, v0, p2

    if-ltz p2, :cond_2f

    .line 618
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    int-to-float v2, p2

    goto :goto_35

    :cond_2f
    cmpg-float p2, v0, p4

    if-gez p2, :cond_34

    goto :goto_35

    :cond_34
    move v2, v0

    .line 623
    :goto_35
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_46

    .line 624
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    goto :goto_4b

    :cond_46
    cmpg-float p2, p1, p4

    if-gez p2, :cond_4b

    const/4 p1, 0x0

    :cond_4b
    :goto_4b
    float-to-int p2, v2

    float-to-int p1, p1

    .line 630
    invoke-virtual {p3, p2, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1
.end method

.method private getSrcColor(FFLandroid/graphics/Bitmap;)I
    .registers 7

    .line 676
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p1, v1

    div-float/2addr v0, p1

    .line 677
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcRect:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p2, v1

    div-float/2addr p1, p2

    .line 679
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 680
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float p2, p2

    div-float/2addr p2, v1

    mul-float v0, v0, p2

    int-to-float v2, v2

    div-float/2addr v2, v1

    mul-float p1, p1, v2

    sub-float/2addr p2, v0

    sub-float/2addr v2, p1

    .line 691
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_44

    .line 692
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p2, p1

    goto :goto_4a

    :cond_44
    cmpg-float p1, p2, v0

    if-gez p1, :cond_4a

    const/high16 p2, 0x3f800000  # 1.0f

    .line 697
    :cond_4a
    :goto_4a
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-ltz p1, :cond_5b

    .line 698
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float v2, p1

    goto :goto_60

    :cond_5b
    cmpg-float p1, v2, v0

    if-gez p1, :cond_60

    const/4 v2, 0x0

    :cond_60
    :goto_60
    float-to-int p1, p2

    float-to-int p2, v2

    .line 704
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public bindCanvasRect(Landroid/graphics/RectF;Landroid/graphics/RectF;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .registers 9

    .line 93
    iput-object p4, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBGbitmap:Landroid/graphics/Bitmap;

    .line 94
    iput-object p5, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 95
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    iget p5, p1, Landroid/graphics/RectF;->left:F

    iput p5, p4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 96
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    .line 97
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iput v1, p4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 98
    iput v0, p4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    .line 99
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iput p5, p4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 100
    iget p5, p1, Landroid/graphics/RectF;->bottom:F

    iput p5, p4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    .line 101
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backRightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iput v1, p4, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    .line 102
    iput p5, p4, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    .line 103
    iput p3, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->curType:I

    .line 104
    iput-boolean p6, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->isLandscapeStage:Z

    if-eqz p6, :cond_36

    .line 105
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mDefaultBG:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_36

    const/16 p4, 0x5a

    .line 106
    invoke-static {p3, p4}, Lcn/codemao/android/sketch/utils/BitmapUtil;->adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mDefaultBG:Landroid/graphics/Bitmap;

    .line 108
    :cond_36
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBGbitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_4c

    .line 109
    iget-object p4, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->bgRect:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object p5, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBGbitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    int-to-float p5, p5

    const/4 p6, 0x0

    invoke-virtual {p4, p6, p6, p3, p5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 111
    :cond_4c
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_53

    .line 112
    invoke-direct {p0, p1, p2}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->calculateCanvasRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_53
    return-void
.end method

.method public changeBGColor(ILcn/codemao/android/sketch/view/paint/SketchControll;Z)V
    .registers 6

    if-eqz p3, :cond_14

    .line 222
    invoke-interface {p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getGlobalUndoRedoManager()Lcn/codemao/android/sketch/action/UndoRedoManager;

    move-result-object p3

    new-instance v0, Lcn/codemao/android/sketch/action/ModifyBGColorAction;

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcn/codemao/android/sketch/action/ModifyBGColorAction;-><init>(Lcn/codemao/android/sketch/view/paint/BackGroundPaint;II)V

    invoke-virtual {p3, v0}, Lcn/codemao/android/sketch/action/UndoRedoManager;->addUndo(Lcn/codemao/android/sketch/action/SketchAction;)V

    .line 224
    :cond_14
    iget-object p3, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    invoke-interface {p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public changeBGModel(ZLcn/codemao/android/sketch/view/paint/SketchControll;)V
    .registers 3

    .line 203
    iput-boolean p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->viewBGModel:Z

    .line 205
    invoke-interface {p2}, Lcn/codemao/android/sketch/view/paint/SketchControll;->refresh()V

    return-void
.end method

.method public drawBG(Landroid/graphics/Canvas;ZLandroid/graphics/RectF;ZZ)V
    .registers 20

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    if-nez v2, :cond_7

    return-void

    .line 250
    :cond_7
    iget v3, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->curType:I

    const/4 v4, 0x0

    if-eqz v3, :cond_34

    const/4 v5, 0x1

    if-eq v3, v5, :cond_28

    const/4 v5, 0x2

    if-eq v3, v5, :cond_22

    const/4 v5, 0x3

    if-eq v3, v5, :cond_18

    move-object v3, v4

    move-object v5, v3

    goto :goto_3e

    .line 280
    :cond_18
    iget-object v3, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 281
    iget-object v3, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    move-object v5, v3

    move-object v3, v4

    goto :goto_3e

    .line 253
    :cond_22
    iget-object v3, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    .line 269
    :cond_28
    iget-boolean v3, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->viewBGModel:Z

    if-eqz v3, :cond_2f

    .line 270
    iget-object v3, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBGbitmap:Landroid/graphics/Bitmap;

    goto :goto_31

    .line 272
    :cond_2f
    iget-object v3, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mDefaultBG:Landroid/graphics/Bitmap;

    .line 276
    :goto_31
    iget-object v5, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    goto :goto_3e

    .line 259
    :cond_34
    iget-boolean v3, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->viewBGModel:Z

    if-eqz v3, :cond_3b

    .line 260
    iget-object v3, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBGbitmap:Landroid/graphics/Bitmap;

    goto :goto_3d

    .line 262
    :cond_3b
    iget-object v3, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mDefaultBG:Landroid/graphics/Bitmap;

    :goto_3d
    move-object v5, v4

    .line 288
    :goto_3e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 289
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 290
    iget-object v7, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 296
    iget-object v7, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    iget v8, v7, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v9, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    iget v10, v9, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    const/high16 v11, 0x3f800000  # 1.0f

    const/high16 v12, -0x40800000  # -1.0f

    cmpl-float v13, v8, v10

    if-nez v13, :cond_7a

    .line 297
    iget-object v10, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget v10, v10, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    cmpg-float v8, v8, v10

    if-gez v8, :cond_6d

    const/4 v8, 0x0

    .line 299
    iget v7, v7, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v9, v9, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_98

    goto :goto_77

    :cond_6d
    const/high16 v8, 0x43340000  # 180.0f

    .line 304
    iget v7, v7, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v9, v9, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_98

    :goto_77
    const/high16 v11, -0x40800000  # -1.0f

    goto :goto_98

    :cond_7a
    cmpg-float v8, v8, v10

    if-gez v8, :cond_8b

    const/high16 v8, 0x42b40000  # 90.0f

    .line 310
    iget v7, v7, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v9, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget v9, v9, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_98

    goto :goto_9a

    :cond_8b
    const/high16 v8, 0x43870000  # 270.0f

    .line 315
    iget v7, v7, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v9, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget v9, v9, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_98

    goto :goto_9a

    :cond_98
    :goto_98
    const/high16 v12, 0x3f800000  # 1.0f

    .line 321
    :goto_9a
    iget-object v7, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v9, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v6, v11, v12, v7, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 322
    iget-object v7, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget-object v9, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v6, v8, v7, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 324
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    if-eqz v3, :cond_d2

    if-nez p4, :cond_d2

    if-eqz p2, :cond_cb

    .line 327
    iget-object v6, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mDefaultBG:Landroid/graphics/Bitmap;

    if-ne v3, v6, :cond_cb

    .line 328
    iget-object v3, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_d2

    .line 330
    :cond_cb
    iget-object v6, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->rectF:Landroid/graphics/RectF;

    iget-object v7, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_d2
    :goto_d2
    if-eqz v5, :cond_e0

    move/from16 v3, p5

    .line 336
    invoke-direct {p0, v2, v3}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->adjustSrcRect(Landroid/graphics/RectF;Z)V

    .line 337
    iget-object v2, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcRect:Landroid/graphics/RectF;

    iget-object v3, v0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 341
    :cond_e0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public flip(FZZLcn/codemao/android/sketch/view/SketchViewV5;)V
    .registers 10

    .line 378
    invoke-virtual {p4}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 379
    invoke-virtual {p4}, Lcn/codemao/android/sketch/view/SketchViewV5;->getSketchHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 381
    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-virtual {v2, p1}, Lcn/codemao/android/sketch/model/BackgroundVO;->setRotate(F)V

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_35

    .line 384
    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-virtual {v2}, Lcn/codemao/android/sketch/model/BackgroundVO;->getRotate()F

    move-result v2

    invoke-direct {p0, v2, p4}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->fitFlip(FLcn/codemao/android/sketch/view/SketchViewV5;)V

    .line 386
    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-static {v2, v3, v4, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 387
    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v2, v3, v4, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 388
    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v2, v3, v4, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    .line 389
    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backRightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {v2, v3, v4, p1}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    :cond_35
    if-eqz p2, :cond_5a

    .line 393
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BackgroundVO;->setScaleX()V

    .line 394
    invoke-virtual {p4}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object p1

    iget-object p1, p1, Lcn/codemao/android/sketch/RectHelper;->canvasRect:Landroid/graphics/RectF;

    int-to-float p2, v0

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXRectf(Landroid/graphics/RectF;F)V

    .line 395
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 396
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 397
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 398
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backRightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    :cond_5a
    if-eqz p3, :cond_7f

    .line 403
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBackgroundVO:Lcn/codemao/android/sketch/model/BackgroundVO;

    invoke-virtual {p1}, Lcn/codemao/android/sketch/model/BackgroundVO;->setScaleY()V

    .line 404
    invoke-virtual {p4}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object p1

    iget-object p1, p1, Lcn/codemao/android/sketch/RectHelper;->canvasRect:Landroid/graphics/RectF;

    int-to-float p2, v1

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYRectf(Landroid/graphics/RectF;F)V

    .line 405
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 406
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 407
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 408
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backRightBottom:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    :cond_7f
    return-void
.end method

.method public getBGColor()I
    .registers 3

    .line 237
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->curType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 238
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public getColorByXy(FFLcn/codemao/android/sketch/view/SketchViewV5;)I
    .registers 10

    .line 520
    invoke-virtual {p3}, Lcn/codemao/android/sketch/view/SketchViewV5;->getCanvasRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 521
    invoke-virtual {p3}, Lcn/codemao/android/sketch/view/SketchViewV5;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v1

    .line 524
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    sub-float/2addr v2, p1

    invoke-virtual {v1}, Lcn/codemao/android/sketch/RectHelper;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    .line 525
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, p2

    invoke-virtual {v1}, Lcn/codemao/android/sketch/RectHelper;->getScale()F

    move-result v1

    div-float/2addr v3, v1

    .line 527
    iget v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->curType:I

    const/4 v4, 0x0

    if-eqz v1, :cond_de

    const/4 v5, 0x1

    if-eq v1, v5, :cond_c3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_bc

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2b

    return v4

    .line 553
    :cond_2b
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->bgColorTemp:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v1, p1, p2}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    .line 558
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    iget p2, p1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v1, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    const/high16 v3, 0x3f800000  # 1.0f

    const/high16 v4, -0x40800000  # -1.0f

    cmpl-float v5, p2, v2

    if-nez v5, :cond_61

    .line 559
    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    cmpg-float p2, p2, v2

    if-gez p2, :cond_52

    const/4 p2, 0x0

    .line 561
    iget p1, p1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_81

    goto :goto_5c

    :cond_52
    const/high16 p2, 0x43340000  # 180.0f

    .line 566
    iget p1, p1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_81

    :goto_5c
    const/high16 p1, 0x3f800000  # 1.0f

    const/high16 v3, -0x40800000  # -1.0f

    goto :goto_83

    :cond_61
    cmpg-float p2, p2, v2

    if-gez p2, :cond_72

    const/high16 p2, 0x42b40000  # 90.0f

    .line 572
    iget p1, p1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_81

    goto :goto_7e

    :cond_72
    const/high16 p2, 0x43870000  # 270.0f

    .line 577
    iget p1, p1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v1, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_81

    :goto_7e
    const/high16 p1, -0x40800000  # -1.0f

    goto :goto_83

    :cond_81
    const/high16 p1, 0x3f800000  # 1.0f

    .line 582
    :goto_83
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->bgColorTemp:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    neg-float p2, p2

    invoke-static {v1, v2, v5, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V

    cmpl-float p2, v3, v4

    if-nez p2, :cond_9e

    .line 585
    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->bgColorTemp:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-static {p2, v1}, Lcn/codemao/android/sketch/utils/RectUtil;->flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    :cond_9e
    cmpl-float p1, p1, v4

    if-nez p1, :cond_ab

    .line 587
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->bgColorTemp:Lcn/codemao/android/sketch/model/PointInfo;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    invoke-static {p1, p2}, Lcn/codemao/android/sketch/utils/RectUtil;->flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V

    .line 589
    :cond_ab
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->bgColorTemp:Lcn/codemao/android/sketch/model/PointInfo;

    iget-object p2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, p3}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->getBGSrcColor(Lcn/codemao/android/sketch/model/PointInfo;Landroid/graphics/Bitmap;Lcn/codemao/android/sketch/view/SketchViewV5;)I

    move-result p1

    if-nez p1, :cond_bb

    .line 591
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    :cond_bb
    return p1

    .line 530
    :cond_bc
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->cavasPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    return p1

    .line 543
    :cond_c3
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 544
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2, v0}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->getSrcColor(FFLandroid/graphics/Bitmap;)I

    move-result v4

    :cond_d1
    if-nez v4, :cond_dd

    .line 546
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->viewBGModel:Z

    if-eqz p1, :cond_dd

    .line 547
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBGbitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v3, p1, p3}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->getPreviewBGColor(FFLandroid/graphics/Bitmap;Lcn/codemao/android/sketch/view/SketchViewV5;)I

    move-result v4

    :cond_dd
    return v4

    .line 534
    :cond_de
    iget-boolean p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->viewBGModel:Z

    if-eqz p1, :cond_e9

    .line 535
    iget-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mBGbitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v3, p1, p3}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->getPreviewBGColor(FFLandroid/graphics/Bitmap;Lcn/codemao/android/sketch/view/SketchViewV5;)I

    move-result p1

    return p1

    :cond_e9
    return v4
.end method

.method public getCutScale(Landroid/graphics/RectF;)F
    .registers 6

    .line 460
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 461
    iget-object v1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 463
    iget v2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcScaleX:F

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1b

    int-to-float v0, v0

    .line 464
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    :goto_19
    div-float/2addr v0, p1

    goto :goto_2f

    .line 465
    :cond_1b
    iget v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->srcScaleY:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_27

    int-to-float v0, v1

    .line 466
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    goto :goto_19

    :cond_27
    const v0, 0x440c8000  # 562.0f

    .line 468
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    goto :goto_19

    :goto_2f
    return v0
.end method

.method public hasChangeBG()Z
    .registers 9

    .line 713
    iget-object v0, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftTop:Lcn/codemao/android/sketch/model/PointInfo;

    iget v1, v0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backRightTop:Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v2, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    const/4 v4, 0x0

    const/high16 v5, -0x40800000  # -1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    cmpl-float v7, v1, v3

    if-nez v7, :cond_36

    .line 714
    iget-object v3, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget v3, v3, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_29

    .line 716
    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v1, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_25

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    goto :goto_5a

    :cond_25
    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    goto :goto_58

    :cond_29
    const/high16 v1, 0x43340000  # 180.0f

    .line 721
    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_56

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_5a

    :cond_36
    cmpg-float v1, v1, v3

    if-gez v1, :cond_47

    const/high16 v1, 0x42b40000  # 90.0f

    .line 727
    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_56

    goto :goto_53

    :cond_47
    const/high16 v1, 0x43870000  # 270.0f

    .line 732
    iget v0, v0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    iget-object v2, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->backLeftBottom:Lcn/codemao/android/sketch/model/PointInfo;

    iget v2, v2, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_56

    :goto_53
    const/high16 v0, -0x40800000  # -1.0f

    goto :goto_58

    :cond_56
    const/high16 v0, 0x3f800000  # 1.0f

    :goto_58
    const/high16 v5, 0x3f800000  # 1.0f

    :goto_5a
    cmpl-float v1, v1, v4

    if-nez v1, :cond_69

    cmpl-float v1, v5, v6

    if-nez v1, :cond_69

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_67

    goto :goto_69

    :cond_67
    const/4 v0, 0x0

    goto :goto_6a

    :cond_69
    :goto_69
    const/4 v0, 0x1

    :goto_6a
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;ZLandroid/graphics/RectF;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->drawBG(Landroid/graphics/Canvas;ZLandroid/graphics/RectF;ZZ)V

    return-void
.end method

.method public refreshSrcBitmap(Landroid/graphics/Bitmap;Lcn/codemao/android/sketch/view/SketchViewV5;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 508
    :cond_3
    iput-object p1, p0, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->mSrcBitmap:Landroid/graphics/Bitmap;

    .line 509
    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/SketchViewV5;->resetCanvas()V

    .line 510
    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getCanvasRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/SketchViewV5;->getStageRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/codemao/android/sketch/view/paint/BackGroundPaint;->calculateCanvasRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 512
    invoke-virtual {p2}, Lcn/codemao/android/sketch/view/SketchViewV5;->refresh()V

    return-void
.end method
