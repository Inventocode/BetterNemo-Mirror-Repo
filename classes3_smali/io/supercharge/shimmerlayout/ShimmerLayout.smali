.class public Lio/supercharge/shimmerlayout/ShimmerLayout;
.super Landroid/widget/FrameLayout;
.source "ShimmerLayout.java"


# instance fields
.field private autoStart:Z

.field private canvasForShimmerMask:Landroid/graphics/Canvas;

.field private gradientCenterColorWidth:F

.field private gradientTexturePaint:Landroid/graphics/Paint;

.field private isAnimationReversed:Z

.field private isAnimationStarted:Z

.field private localMaskBitmap:Landroid/graphics/Bitmap;

.field private maskAnimator:Landroid/animation/ValueAnimator;

.field private maskBitmap:Landroid/graphics/Bitmap;

.field private maskOffsetX:I

.field private maskRect:Landroid/graphics/Rect;

.field private maskWidth:F

.field private shimmerAngle:I

.field private shimmerAnimationDuration:I

.field private shimmerColor:I

.field private startAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lio/supercharge/shimmerlayout/ShimmerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 68
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lio/supercharge/shimmerlayout/R$styleable;->ShimmerLayout:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 76
    :try_start_11
    sget p2, Lio/supercharge/shimmerlayout/R$styleable;->ShimmerLayout_shimmer_angle:I

    const/16 v0, 0x14

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerAngle:I

    .line 77
    sget p2, Lio/supercharge/shimmerlayout/R$styleable;->ShimmerLayout_shimmer_animation_duration:I

    const/16 v0, 0x5dc

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerAnimationDuration:I

    .line 78
    sget p2, Lio/supercharge/shimmerlayout/R$styleable;->ShimmerLayout_shimmer_color:I

    sget v0, Lio/supercharge/shimmerlayout/R$color;->shimmer_color:I

    invoke-direct {p0, v0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerColor:I

    .line 79
    sget p2, Lio/supercharge/shimmerlayout/R$styleable;->ShimmerLayout_shimmer_auto_start:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->autoStart:Z

    .line 80
    sget p2, Lio/supercharge/shimmerlayout/R$styleable;->ShimmerLayout_shimmer_mask_width:I

    const/high16 v0, 0x3f000000  # 0.5f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskWidth:F

    .line 81
    sget p2, Lio/supercharge/shimmerlayout/R$styleable;->ShimmerLayout_shimmer_gradient_center_color_width:I

    const v0, 0x3dcccccd  # 0.1f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->gradientCenterColorWidth:F

    .line 82
    sget p2, Lio/supercharge/shimmerlayout/R$styleable;->ShimmerLayout_shimmer_reverse_animation:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->isAnimationReversed:Z
    :try_end_58
    .catchall {:try_start_11 .. :try_end_58} :catchall_78

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    iget p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskWidth:F

    invoke-virtual {p0, p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setMaskWidth(F)V

    .line 88
    iget p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->gradientCenterColorWidth:F

    invoke-virtual {p0, p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setGradientCenterColorWidth(F)V

    .line 89
    iget p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerAngle:I

    invoke-virtual {p0, p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerAngle(I)V

    .line 90
    iget-boolean p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->autoStart:Z

    if-eqz p1, :cond_77

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_77

    .line 91
    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->startShimmerAnimation()V

    :cond_77
    return-void

    :catchall_78
    move-exception p2

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method static synthetic access$000(Lio/supercharge/shimmerlayout/ShimmerLayout;)I
    .registers 1

    .line 23
    iget p0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskOffsetX:I

    return p0
.end method

.method static synthetic access$002(Lio/supercharge/shimmerlayout/ShimmerLayout;I)I
    .registers 2

    .line 23
    iput p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskOffsetX:I

    return p1
.end method

.method private calculateBitmapMaskRect()Landroid/graphics/Rect;
    .registers 5

    .line 388
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->calculateMaskWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private calculateMaskWidth()I
    .registers 7

    .line 392
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskWidth:F

    mul-float v0, v0, v1

    float-to-double v0, v0

    iget v2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerAngle:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 393
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerAngle:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private createBitmap(II)Landroid/graphics/Bitmap;
    .registers 4

    .line 366
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 368
    :catch_7
    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private createShimmerPaint()V
    .registers 14

    .line 297
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->gradientTexturePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_5

    return-void

    .line 301
    :cond_5
    iget v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerColor:I

    invoke-direct {p0, v0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->reduceColorAlphaValueToZero(I)I

    move-result v0

    .line 302
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    iget v3, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskWidth:F

    mul-float v1, v1, v3

    .line 303
    iget v3, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerAngle:I

    if-ltz v3, :cond_21

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move v6, v3

    goto :goto_23

    :cond_21
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 305
    :goto_23
    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v5, 0x0

    iget v4, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerAngle:I

    int-to-double v7, v4

    .line 307
    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float v7, v4, v1

    iget v4, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerAngle:I

    int-to-double v8, v4

    .line 308
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v4, v8

    mul-float v4, v4, v1

    add-float v8, v6, v4

    const/4 v1, 0x4

    new-array v9, v1, [I

    const/4 v1, 0x0

    aput v0, v9, v1

    iget v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerColor:I

    const/4 v12, 0x1

    aput v1, v9, v12

    aput v1, v9, v2

    const/4 v1, 0x3

    aput v0, v9, v1

    .line 310
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->getGradientColorDistribution()[F

    move-result-object v10

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 313
    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->localMaskBitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 315
    new-instance v1, Landroid/graphics/ComposeShader;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v0, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 317
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->gradientTexturePaint:Landroid/graphics/Paint;

    .line 318
    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 319
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->gradientTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setDither(Z)V

    .line 320
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->gradientTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 321
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->gradientTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private dispatchDrawShimmer(Landroid/graphics/Canvas;)V
    .registers 5

    .line 230
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 232
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->getMaskBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->localMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_c

    return-void

    .line 237
    :cond_c
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    if-nez v0, :cond_19

    .line 238
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->localMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    .line 241
    :cond_19
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 243
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 244
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    iget v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskOffsetX:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 246
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 248
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 250
    invoke-direct {p0, p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->drawShimmer(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 252
    iput-object p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->localMaskBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private drawShimmer(Landroid/graphics/Canvas;)V
    .registers 10

    .line 256
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->createShimmerPaint()V

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 260
    iget v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskOffsetX:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 261
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->gradientTexturePaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getColor(I)I
    .registers 4

    .line 375
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_f

    .line 376
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    return p1

    .line 379
    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private getGradientColorDistribution()[F
    .registers 7

    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    .line 404
    iget v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->gradientCenterColorWidth:F

    const/high16 v2, 0x40000000  # 2.0f

    div-float v3, v1, v2

    const/high16 v4, 0x3f000000  # 0.5f

    sub-float v3, v4, v3

    const/4 v5, 0x1

    aput v3, v0, v5

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method private getMaskBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 289
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_14

    .line 290
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->createBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskBitmap:Landroid/graphics/Bitmap;

    .line 293
    :cond_14
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getShimmerAnimation()Landroid/animation/Animator;
    .registers 8

    .line 325
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    return-object v0

    .line 329
    :cond_5
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    if-nez v0, :cond_f

    .line 330
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->calculateBitmapMaskRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    .line 333
    :cond_f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 336
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_21

    neg-int v1, v0

    goto :goto_28

    .line 339
    :cond_21
    iget-object v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    neg-int v1, v1

    .line 342
    :goto_28
    iget-object v2, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v1

    .line 345
    iget-boolean v3, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->isAnimationReversed:Z

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_41

    new-array v3, v5, [I

    aput v0, v3, v6

    aput v6, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_4b

    :cond_41
    new-array v3, v5, [I

    aput v6, v3, v6

    aput v0, v3, v4

    .line 346
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    :goto_4b
    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    .line 347
    iget v3, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerAnimationDuration:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 348
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 350
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lio/supercharge/shimmerlayout/ShimmerLayout$2;

    invoke-direct {v3, p0, v1, v2}, Lio/supercharge/shimmerlayout/ShimmerLayout$2;-><init>(Lio/supercharge/shimmerlayout/ShimmerLayout;II)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 361
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private reduceColorAlphaValueToZero(I)I
    .registers 5

    .line 384
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private releaseBitMaps()V
    .registers 3

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->canvasForShimmerMask:Landroid/graphics/Canvas;

    .line 282
    iget-object v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_c

    .line 283
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 284
    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskBitmap:Landroid/graphics/Bitmap;

    :cond_c
    return-void
.end method

.method private resetIfStarted()V
    .registers 2

    .line 223
    iget-boolean v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->isAnimationStarted:Z

    if-eqz v0, :cond_a

    .line 224
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->resetShimmering()V

    .line 225
    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->startShimmerAnimation()V

    :cond_a
    return-void
.end method

.method private resetShimmering()V
    .registers 2

    .line 267
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 268
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 269
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_c
    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskAnimator:Landroid/animation/ValueAnimator;

    .line 273
    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->gradientTexturePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->isAnimationStarted:Z

    .line 276
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->releaseBitMaps()V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 103
    iget-boolean v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->isAnimationStarted:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-gtz v0, :cond_11

    goto :goto_15

    .line 106
    :cond_11
    invoke-direct {p0, p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->dispatchDrawShimmer(Landroid/graphics/Canvas;)V

    goto :goto_18

    .line 104
    :cond_15
    :goto_15
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_18
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 97
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->resetShimmering()V

    .line 98
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setAnimationReversed(Z)V
    .registers 2

    .line 167
    iput-boolean p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->isAnimationReversed:Z

    .line 168
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->resetIfStarted()V

    return-void
.end method

.method public setGradientCenterColorWidth(F)V
    .registers 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_11

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v0, v0, p1

    if-lez v0, :cond_11

    .line 218
    iput p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->gradientCenterColorWidth:F

    .line 219
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->resetIfStarted()V

    return-void

    .line 214
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 215
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "gradientCenterColorWidth value must be higher than %d and less than %d"

    .line 214
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaskWidth(F)V
    .registers 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_11

    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v0, v0, p1

    if-ltz v0, :cond_11

    .line 200
    iput p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->maskWidth:F

    .line 201
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->resetIfStarted()V

    return-void

    .line 196
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 197
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "maskWidth value must be higher than %d and less or equal to %d"

    .line 196
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShimmerAngle(I)V
    .registers 6

    const/16 v0, 0x2d

    const/16 v1, -0x2d

    if-lt p1, v1, :cond_e

    if-lt v0, p1, :cond_e

    .line 183
    iput p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerAngle:I

    .line 184
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->resetIfStarted()V

    return-void

    .line 179
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 180
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    .line 181
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "shimmerAngle value must be between %d and %d"

    .line 179
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShimmerAnimationDuration(I)V
    .registers 2

    .line 162
    iput p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerAnimationDuration:I

    .line 163
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->resetIfStarted()V

    return-void
.end method

.method public setShimmerColor(I)V
    .registers 2

    .line 157
    iput p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->shimmerColor:I

    .line 158
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->resetIfStarted()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 112
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_d

    .line 114
    iget-boolean p1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->autoStart:Z

    if-eqz p1, :cond_10

    .line 115
    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->startShimmerAnimation()V

    goto :goto_10

    .line 118
    :cond_d
    invoke-virtual {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->stopShimmerAnimation()V

    :cond_10
    :goto_10
    return-void
.end method

.method public startShimmerAnimation()V
    .registers 3

    .line 123
    iget-boolean v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->isAnimationStarted:Z

    if-eqz v0, :cond_5

    return-void

    .line 127
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_1c

    .line 128
    new-instance v0, Lio/supercharge/shimmerlayout/ShimmerLayout$1;

    invoke-direct {v0, p0}, Lio/supercharge/shimmerlayout/ShimmerLayout$1;-><init>(Lio/supercharge/shimmerlayout/ShimmerLayout;)V

    iput-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->startAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->startAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    .line 143
    :cond_1c
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->getShimmerAnimation()Landroid/animation/Animator;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->isAnimationStarted:Z

    return-void
.end method

.method public stopShimmerAnimation()V
    .registers 3

    .line 149
    iget-object v0, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->startAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_d

    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/supercharge/shimmerlayout/ShimmerLayout;->startAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 153
    :cond_d
    invoke-direct {p0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->resetShimmering()V

    return-void
.end method
