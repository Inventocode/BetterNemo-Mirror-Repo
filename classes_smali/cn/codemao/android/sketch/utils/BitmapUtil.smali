.class public Lcn/codemao/android/sketch/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# direct methods
.method public static adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 7

    .line 362
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p1

    .line 363
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/16 v1, 0x5a

    if-ne p1, v1, :cond_22

    .line 366
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    goto :goto_2c

    .line 369
    :cond_22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 370
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_2c
    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 373
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x2

    .line 374
    aget v3, v2, v3

    const/4 v4, 0x5

    .line 375
    aget v2, v2, v4

    sub-float/2addr p1, v3

    sub-float/2addr v1, v2

    .line 376
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 377
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 378
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 379
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 380
    invoke-virtual {v2, p0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object p1
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .registers 3

    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 331
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    return p0

    :cond_b
    const/16 v1, 0xc

    if-lt v0, v1, :cond_14

    .line 334
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0

    .line 337
    :cond_14
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int v0, v0, p0

    return v0
.end method

.method public static getFinalBitmapRect(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .registers 12

    .line 85
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    new-array v9, v0, [I

    .line 86
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 88
    :goto_22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_4a

    const/4 v3, 0x0

    .line 89
    :goto_29
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_47

    .line 90
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int v4, v4, v3

    add-int/2addr v4, v2

    if-ge v4, v0, :cond_44

    .line 91
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int v4, v4, v3

    add-int/2addr v4, v2

    aget v4, v9, v4

    if-eqz v4, :cond_44

    goto :goto_4b

    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    const/4 v3, 0x0

    .line 99
    :goto_4c
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_74

    move v4, v2

    .line 100
    :goto_53
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_71

    .line 101
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int v5, v5, v3

    add-int/2addr v5, v4

    if-ge v5, v0, :cond_6e

    .line 102
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    mul-int v5, v5, v3

    add-int/2addr v5, v4

    aget v5, v9, v5

    if-eqz v5, :cond_6e

    goto :goto_75

    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    :cond_74
    const/4 v3, 0x0

    .line 110
    :goto_75
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_7b
    if-lt v4, v2, :cond_a0

    .line 111
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_83
    if-lt v5, v3, :cond_9d

    .line 112
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int v6, v6, v5

    add-int/2addr v6, v4

    if-ge v6, v0, :cond_9a

    .line 113
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int v6, v6, v5

    add-int/2addr v6, v4

    aget v6, v9, v6

    if-eqz v6, :cond_9a

    goto :goto_a1

    :cond_9a
    add-int/lit8 v5, v5, -0x1

    goto :goto_83

    :cond_9d
    add-int/lit8 v4, v4, -0x1

    goto :goto_7b

    :cond_a0
    const/4 v4, 0x0

    .line 121
    :goto_a1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_a7
    if-lt v5, v3, :cond_cd

    .line 123
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_af
    if-lt v6, v2, :cond_ca

    .line 124
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int v7, v7, v5

    add-int/2addr v7, v6

    if-ge v7, v0, :cond_c7

    .line 125
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    mul-int v7, v7, v5

    add-int/2addr v7, v6

    aget v7, v9, v7

    if-eqz v7, :cond_c7

    move v1, v5

    goto :goto_cd

    :cond_c7
    add-int/lit8 v6, v6, -0x1

    goto :goto_af

    :cond_ca
    add-int/lit8 v5, v5, -0x1

    goto :goto_a7

    :cond_cd
    :goto_cd
    int-to-float p0, v2

    int-to-float v0, v3

    int-to-float v2, v4

    int-to-float v1, v1

    .line 133
    invoke-virtual {p1, p0, v0, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public static getFinalBitmapRect(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 19

    move-object/from16 v0, p2

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 149
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 152
    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 153
    iget v6, v0, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 154
    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int v1, v1, v2

    .line 156
    new-array v2, v1, [I

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object v9, v2

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v8, 0x0

    :goto_49
    int-to-float v9, v8

    .line 159
    iget v10, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_73

    const/4 v9, 0x0

    .line 160
    :goto_51
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_70

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    mul-int v10, v10, v9

    add-int/2addr v10, v8

    if-ge v10, v1, :cond_6d

    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    mul-int v10, v10, v9

    add-int/2addr v10, v8

    aget v10, v2, v10

    if-eqz v10, :cond_6d

    move v3, v8

    goto :goto_73

    :cond_6d
    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    :cond_70
    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    :cond_73
    :goto_73
    int-to-float v8, v4

    .line 170
    iget v9, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_9d

    move v8, v3

    .line 171
    :goto_7b
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-ge v8, v9, :cond_9a

    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int v9, v9, v4

    add-int/2addr v9, v8

    if-ge v9, v1, :cond_97

    .line 173
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int v9, v9, v4

    add-int/2addr v9, v8

    aget v9, v2, v9

    if-eqz v9, :cond_97

    move v5, v4

    goto :goto_9d

    :cond_97
    add-int/lit8 v8, v8, 0x1

    goto :goto_7b

    :cond_9a
    add-int/lit8 v4, v4, 0x1

    goto :goto_73

    .line 181
    :cond_9d
    :goto_9d
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_a3
    int-to-float v8, v4

    iget v9, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_ce

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_b0
    if-lt v8, v5, :cond_cb

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int v9, v9, v8

    add-int/2addr v9, v4

    if-ge v9, v1, :cond_c8

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int v9, v9, v8

    add-int/2addr v9, v4

    aget v9, v2, v9

    if-eqz v9, :cond_c8

    move v6, v4

    goto :goto_ce

    :cond_c8
    add-int/lit8 v8, v8, -0x1

    goto :goto_b0

    :cond_cb
    add-int/lit8 v4, v4, -0x1

    goto :goto_a3

    .line 192
    :cond_ce
    :goto_ce
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_d4
    int-to-float v8, v4

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_ff

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_e1
    if-lt v8, v3, :cond_fc

    .line 195
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int v9, v9, v4

    add-int/2addr v9, v8

    if-ge v9, v1, :cond_f9

    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    mul-int v9, v9, v4

    add-int/2addr v9, v8

    aget v9, v2, v9

    if-eqz v9, :cond_f9

    move v7, v4

    goto :goto_ff

    :cond_f9
    add-int/lit8 v8, v8, -0x1

    goto :goto_e1

    :cond_fc
    add-int/lit8 v4, v4, -0x1

    goto :goto_d4

    :cond_ff
    :goto_ff
    int-to-float v0, v3

    int-to-float v1, v5

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public static recycleBitmap(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 2

    if-eqz p0, :cond_b

    .line 350
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v0

    instance-of v0, v0, Lcn/codemao/android/sketch/view/paint/ReEditPaint;

    if-eqz v0, :cond_b

    goto :goto_28

    :cond_b
    if-eqz p0, :cond_28

    .line 353
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_28

    .line 354
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, v0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public static removeTransparency(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-static {p0, v0}, Lcn/codemao/android/sketch/utils/BitmapUtil;->removeTransparency(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static removeTransparency(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-nez p1, :cond_b

    .line 47
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 49
    :cond_b
    invoke-static {p0, p1}, Lcn/codemao/android/sketch/utils/BitmapUtil;->getFinalBitmapRect(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V

    .line 51
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    return-object v0

    .line 54
    :cond_15
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p0, v0, v1, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static removeTransparency(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-nez p1, :cond_b

    .line 65
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 67
    :cond_b
    invoke-static {p0, p1, p2}, Lcn/codemao/android/sketch/utils/BitmapUtil;->getFinalBitmapRect(Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 69
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_15

    return-object v0

    .line 74
    :cond_15
    iget p2, p1, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p0, p2, v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
