.class final Lcom/google/android/exoplayer2/ui/SubtitlePainter;
.super Ljava/lang/Object;
.source "SubtitlePainter.java"


# static fields
.field private static final INNER_PADDING_RATIO:F = 0.125f

.field private static final TAG:Ljava/lang/String; = "SubtitlePainter"


# instance fields
.field private backgroundColor:I

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private bitmapRect:Landroid/graphics/Rect;

.field private bottomPaddingFraction:F

.field private cueBitmap:Landroid/graphics/Bitmap;

.field private cueBitmapHeight:F

.field private cueLine:F

.field private cueLineAnchor:I

.field private cueLineType:I

.field private cuePosition:F

.field private cuePositionAnchor:I

.field private cueSize:F

.field private cueText:Ljava/lang/CharSequence;

.field private cueTextAlignment:Landroid/text/Layout$Alignment;

.field private cueTextSizePx:F

.field private defaultTextSizePx:F

.field private edgeColor:I

.field private edgeLayout:Landroid/text/StaticLayout;

.field private edgeType:I

.field private foregroundColor:I

.field private final outlineWidth:F

.field private parentBottom:I

.field private parentLeft:I

.field private parentRight:I

.field private parentTop:I

.field private final shadowOffset:F

.field private final shadowRadius:F

.field private final spacingAdd:F

.field private final spacingMult:F

.field private textLayout:Landroid/text/StaticLayout;

.field private textLeft:I

.field private textPaddingX:I

.field private final textPaint:Landroid/text/TextPaint;

.field private textTop:I

.field private windowColor:I

.field private final windowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 99
    fill-array-data v0, :array_6a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000  # 1.0f

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 107
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000  # 2.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x43200000  # 160.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    .line 108
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->outlineWidth:F

    .line 109
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    .line 110
    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    .line 112
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 113
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 114
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 116
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    .line 117
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 118
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bitmapPaint:Landroid/graphics/Paint;

    .line 121
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void

    nop

    :array_6a
    .array-data 4
        0x1010217
        0x1010218
    .end array-data
.end method

.method private static areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 471
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private drawBitmapLayout(Landroid/graphics/Canvas;)V
    .registers 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "cueBitmap",
            "bitmapRect"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawLayout(Landroid/graphics/Canvas;Z)V
    .registers 3

    if-eqz p2, :cond_6

    .line 398
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->drawTextLayout(Landroid/graphics/Canvas;)V

    goto :goto_13

    .line 400
    :cond_6
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->drawBitmapLayout(Landroid/graphics/Canvas;)V

    :goto_13
    return-void
.end method

.method private drawTextLayout(Landroid/graphics/Canvas;)V
    .registers 12

    .line 407
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 408
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_c7

    if-nez v1, :cond_a

    goto/16 :goto_c7

    .line 414
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 415
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 417
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-lez v3, :cond_3e

    .line 418
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    neg-int v3, v3

    int-to-float v5, v3

    const/4 v6, 0x0

    .line 422
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    add-int/2addr v3, v4

    int-to-float v7, v3

    .line 423
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v8, v3

    iget-object v9, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowPaint:Landroid/graphics/Paint;

    move-object v4, p1

    .line 419
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 427
    :cond_3e
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_64

    .line 428
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 429
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->outlineWidth:F

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 430
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 431
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 432
    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_ad

    :cond_64
    const/4 v6, 0x2

    if-ne v3, v6, :cond_73

    .line 434
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowOffset:F

    iget v6, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    invoke-virtual {v1, v3, v5, v5, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_ad

    :cond_73
    const/4 v6, 0x3

    if-eq v3, v6, :cond_79

    const/4 v7, 0x4

    if-ne v3, v7, :cond_ad

    :cond_79
    if-ne v3, v6, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v5, 0x0

    :goto_7d
    const/4 v3, -0x1

    if-eqz v5, :cond_82

    const/4 v6, -0x1

    goto :goto_84

    .line 438
    :cond_82
    iget v6, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    :goto_84
    if-eqz v5, :cond_88

    .line 439
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    .line 440
    :cond_88
    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v5, v7

    .line 441
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v8, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 442
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 443
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v8, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    neg-float v9, v5

    invoke-virtual {v7, v8, v9, v9, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 444
    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 445
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v6, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->shadowRadius:F

    invoke-virtual {v1, v6, v5, v5, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 448
    :cond_ad
    :goto_ad
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 449
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 450
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 453
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c7
    :goto_c7
    return-void
.end method

.method private setupBitmapLayout()V
    .registers 8
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "cueBitmap"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 374
    iget v1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    sub-int/2addr v1, v2

    .line 375
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    iget v4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    sub-int/2addr v3, v4

    int-to-float v2, v2

    int-to-float v1, v1

    .line 376
    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    mul-float v5, v5, v1

    add-float/2addr v2, v5

    int-to-float v4, v4

    int-to-float v3, v3

    .line 377
    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    .line 378
    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    mul-float v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 380
    iget v5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmapHeight:F

    const v6, -0x800001

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_32

    mul-float v3, v3, v5

    .line 381
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_44

    :cond_32
    int-to-float v3, v1

    .line 382
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 385
    :goto_44
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4d

    int-to-float v3, v1

    :goto_4b
    sub-float/2addr v2, v3

    goto :goto_53

    :cond_4d
    if-ne v3, v5, :cond_53

    .line 387
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    goto :goto_4b

    .line 384
    :cond_53
    :goto_53
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 390
    iget v3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    if-ne v3, v6, :cond_5e

    int-to-float v3, v0

    :goto_5c
    sub-float/2addr v4, v3

    goto :goto_64

    :cond_5e
    if-ne v3, v5, :cond_64

    .line 392
    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    goto :goto_5c

    .line 389
    :cond_64
    :goto_64
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 393
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bitmapRect:Landroid/graphics/Rect;

    return-void
.end method

.method private setupTextLayout()V
    .registers 27
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "cueText"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 230
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    instance-of v2, v1, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_b

    .line 231
    check-cast v1, Landroid/text/SpannableStringBuilder;

    goto :goto_12

    .line 232
    :cond_b
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 233
    :goto_12
    iget v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    sub-int/2addr v2, v3

    .line 234
    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    sub-int v11, v3, v4

    .line 236
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->defaultTextSizePx:F

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 237
    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->defaultTextSizePx:F

    const/high16 v4, 0x3e000000  # 0.125f

    mul-float v3, v3, v4

    const/high16 v4, 0x3f000000  # 0.5f

    add-float/2addr v3, v4

    float-to-int v12, v3

    mul-int/lit8 v13, v12, 0x2

    sub-int v3, v2, v13

    .line 240
    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    const v14, -0x800001

    cmpl-float v5, v4, v14

    if-eqz v5, :cond_3f

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    :cond_3f
    move v15, v3

    const-string v10, "SubtitlePainter"

    if-gtz v15, :cond_4a

    const-string v1, "Skipped drawing subtitle cue (insufficient space)"

    .line 244
    invoke-static {v10, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 248
    :cond_4a
    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextSizePx:F

    const/16 v16, 0x0

    const/high16 v4, 0xff0000

    const/4 v9, 0x0

    cmpl-float v3, v3, v16

    if-lez v3, :cond_64

    .line 250
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextSizePx:F

    float-to-int v5, v5

    invoke-direct {v3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 253
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 250
    invoke-virtual {v1, v3, v9, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 258
    :cond_64
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 259
    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_87

    .line 261
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-class v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v8, v9, v3, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ForegroundColorSpan;

    .line 262
    array-length v5, v3

    const/4 v6, 0x0

    :goto_7c
    if-ge v6, v5, :cond_87

    aget-object v7, v3, v6

    .line 263
    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto :goto_7c

    .line 271
    :cond_87
    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/4 v7, 0x2

    if-lez v3, :cond_b4

    .line 272
    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    if-eqz v3, :cond_a6

    if-ne v3, v7, :cond_97

    goto :goto_a6

    .line 277
    :cond_97
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-direct {v3, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 280
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 277
    invoke-virtual {v8, v3, v9, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b4

    .line 274
    :cond_a6
    :goto_a6
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    invoke-direct {v3, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 275
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 274
    invoke-virtual {v1, v3, v9, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 285
    :cond_b4
    :goto_b4
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    if-nez v3, :cond_ba

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_ba
    move-object/from16 v21, v3

    .line 286
    new-instance v6, Landroid/text/StaticLayout;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/16 v18, 0x1

    move/from16 v19, v3

    move-object v3, v6

    move/from16 v20, v4

    move-object v4, v1

    move-object v14, v6

    move v6, v15

    move-object/from16 v7, v21

    move-object/from16 v23, v8

    move/from16 v8, v20

    move/from16 v25, v12

    const/4 v12, 0x0

    move/from16 v9, v19

    move-object v12, v10

    move/from16 v10, v18

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v14, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 289
    invoke-virtual {v14}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    .line 291
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_ed
    if-ge v9, v4, :cond_102

    .line 293
    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v9}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_ed

    .line 295
    :cond_102
    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    const v6, -0x800001

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_10e

    if-ge v5, v15, :cond_10e

    goto :goto_10f

    :cond_10e
    move v15, v5

    :goto_10f
    add-int/2addr v15, v13

    .line 302
    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    cmpl-float v5, v4, v6

    if-eqz v5, :cond_13c

    int-to-float v2, v2

    mul-float v2, v2, v4

    .line 303
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    add-int/2addr v2, v4

    .line 304
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_12b

    const/4 v7, 0x2

    if-eq v5, v7, :cond_129

    goto :goto_130

    :cond_129
    sub-int/2addr v2, v15

    goto :goto_130

    :cond_12b
    const/4 v7, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v15

    .line 309
    div-int/2addr v2, v7

    .line 317
    :goto_130
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v15, v2

    .line 318
    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_145

    :cond_13c
    const/4 v6, 0x1

    const/4 v7, 0x2

    sub-int/2addr v2, v15

    .line 320
    div-int/2addr v2, v7

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    add-int/2addr v2, v4

    add-int v4, v2, v15

    :goto_145
    sub-int v20, v4, v2

    if-gtz v20, :cond_14f

    const-string v1, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    .line 326
    invoke-static {v12, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 331
    :cond_14f
    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    const v5, -0x800001

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_1ae

    .line 332
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    if-nez v5, :cond_172

    int-to-float v5, v11

    mul-float v5, v5, v4

    .line 333
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    add-int/2addr v4, v5

    .line 335
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    if-ne v5, v7, :cond_16b

    goto :goto_19e

    :cond_16b
    if-ne v5, v6, :cond_19f

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v3

    .line 338
    div-int/2addr v4, v7

    goto :goto_19f

    .line 342
    :cond_172
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    iget-object v6, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 343
    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    cmpl-float v6, v5, v16

    if-ltz v6, :cond_191

    int-to-float v4, v4

    mul-float v5, v5, v4

    .line 344
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    add-int/2addr v4, v5

    goto :goto_19f

    :cond_191
    const/high16 v6, 0x3f800000  # 1.0f

    add-float/2addr v5, v6

    int-to-float v4, v4

    mul-float v5, v5, v4

    .line 346
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    add-int/2addr v4, v5

    :goto_19e
    sub-int/2addr v4, v3

    :cond_19f
    :goto_19f
    add-int v5, v4, v3

    .line 350
    iget v6, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    if-le v5, v6, :cond_1a8

    sub-int v4, v6, v3

    goto :goto_1b8

    .line 352
    :cond_1a8
    iget v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    if-ge v4, v3, :cond_1b8

    move v11, v3

    goto :goto_1b9

    .line 356
    :cond_1ae
    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    sub-int/2addr v4, v3

    int-to-float v3, v11

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int/2addr v4, v3

    :cond_1b8
    :goto_1b8
    move v11, v4

    .line 360
    :goto_1b9
    new-instance v12, Landroid/text/StaticLayout;

    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v8, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    iget v9, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/4 v10, 0x1

    move-object v3, v12

    move-object v4, v1

    move/from16 v6, v20

    move-object/from16 v7, v21

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v12, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLayout:Landroid/text/StaticLayout;

    .line 363
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget v4, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingMult:F

    iget v5, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->spacingAdd:F

    const/16 v24, 0x1

    move-object/from16 v17, v1

    move-object/from16 v18, v23

    move-object/from16 v19, v3

    move/from16 v22, v4

    move/from16 v23, v5

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeLayout:Landroid/text/StaticLayout;

    .line 366
    iput v2, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textLeft:I

    .line 367
    iput v11, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textTop:I

    move/from16 v1, v25

    .line 368
    iput v1, v0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaddingX:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/google/android/exoplayer2/text/Cue;Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;FFFLandroid/graphics/Canvas;IIII)V
    .registers 15

    .line 156
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/high16 v1, -0x1000000

    if-eqz v0, :cond_1d

    .line 159
    iget-object v1, p1, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    .line 163
    :cond_14
    iget-boolean v1, p1, Lcom/google/android/exoplayer2/text/Cue;->windowColorSet:Z

    if-eqz v1, :cond_1b

    iget v1, p1, Lcom/google/android/exoplayer2/text/Cue;->windowColor:I

    goto :goto_1d

    :cond_1b
    iget v1, p2, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->windowColor:I

    .line 165
    :cond_1d
    :goto_1d
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->areCharSequencesEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 166
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    iget v3, p1, Lcom/google/android/exoplayer2/text/Cue;->line:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    iget v3, p1, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    if-ne v2, v3, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    iget v3, p1, Lcom/google/android/exoplayer2/text/Cue;->position:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    iget v3, p1, Lcom/google/android/exoplayer2/text/Cue;->size:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmapHeight:F

    iget v3, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    iget v3, p2, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->foregroundColor:I

    if-ne v2, v3, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    iget v3, p2, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->backgroundColor:I

    if-ne v2, v3, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowColor:I

    if-ne v2, v1, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    iget v3, p2, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeType:I

    if-ne v2, v3, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    iget v3, p2, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeColor:I

    if-ne v2, v3, :cond_d1

    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    .line 180
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->defaultTextSizePx:F

    cmpl-float v2, v2, p3

    if-nez v2, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextSizePx:F

    cmpl-float v2, v2, p4

    if-nez v2, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    cmpl-float v2, v2, p5

    if-nez v2, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    if-ne v2, p7, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    if-ne v2, p8, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    if-ne v2, p9, :cond_d1

    iget v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    if-ne v2, p10, :cond_d1

    .line 189
    invoke-direct {p0, p6, v0}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    return-void

    .line 193
    :cond_d1
    iget-object v2, p1, Lcom/google/android/exoplayer2/text/Cue;->text:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    .line 194
    iget-object v2, p1, Lcom/google/android/exoplayer2/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextAlignment:Landroid/text/Layout$Alignment;

    .line 195
    iget-object v2, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    .line 196
    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->line:F

    iput v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLine:F

    .line 197
    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->lineType:I

    iput v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineType:I

    .line 198
    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->lineAnchor:I

    iput v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueLineAnchor:I

    .line 199
    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->position:F

    iput v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePosition:F

    .line 200
    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->positionAnchor:I

    iput v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cuePositionAnchor:I

    .line 201
    iget v2, p1, Lcom/google/android/exoplayer2/text/Cue;->size:F

    iput v2, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueSize:F

    .line 202
    iget p1, p1, Lcom/google/android/exoplayer2/text/Cue;->bitmapHeight:F

    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmapHeight:F

    .line 203
    iget p1, p2, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->foregroundColor:I

    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->foregroundColor:I

    .line 204
    iget p1, p2, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->backgroundColor:I

    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->backgroundColor:I

    .line 205
    iput v1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->windowColor:I

    .line 206
    iget p1, p2, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeType:I

    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeType:I

    .line 207
    iget p1, p2, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->edgeColor:I

    iput p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->edgeColor:I

    .line 208
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->textPaint:Landroid/text/TextPaint;

    iget-object p2, p2, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 209
    iput p3, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->defaultTextSizePx:F

    .line 210
    iput p4, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueTextSizePx:F

    .line 211
    iput p5, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->bottomPaddingFraction:F

    .line 212
    iput p7, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentLeft:I

    .line 213
    iput p8, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentTop:I

    .line 214
    iput p9, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentRight:I

    .line 215
    iput p10, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->parentBottom:I

    if-eqz v0, :cond_12b

    .line 218
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueText:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->setupTextLayout()V

    goto :goto_133

    .line 221
    :cond_12b
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->cueBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->setupBitmapLayout()V

    .line 224
    :goto_133
    invoke-direct {p0, p6, v0}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;->drawLayout(Landroid/graphics/Canvas;Z)V

    return-void
.end method
