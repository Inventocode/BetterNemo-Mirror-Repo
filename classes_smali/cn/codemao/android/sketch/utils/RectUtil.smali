.class public Lcn/codemao/android/sketch/utils/RectUtil;
.super Ljava/lang/Object;
.source "RectUtil.java"


# direct methods
.method public static flipXPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V
    .registers 3

    const/high16 v0, 0x40000000  # 2.0f

    mul-float p1, p1, v0

    .line 287
    iget v0, p0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    return-void
.end method

.method public static flipXRectf(Landroid/graphics/RectF;F)V
    .registers 4

    const/high16 v0, 0x40000000  # 2.0f

    mul-float p1, p1, v0

    .line 280
    iget v0, p0, Landroid/graphics/RectF;->right:F

    sub-float v0, p1, v0

    .line 281
    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v1

    .line 282
    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 283
    iput p1, p0, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method public static flipYPoint(Lcn/codemao/android/sketch/model/PointInfo;F)V
    .registers 3

    const/high16 v0, 0x40000000  # 2.0f

    mul-float p1, p1, v0

    .line 299
    iget v0, p0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    return-void
.end method

.method public static flipYRectf(Landroid/graphics/RectF;F)V
    .registers 4

    const/high16 v0, 0x40000000  # 2.0f

    mul-float p1, p1, v0

    .line 291
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    sub-float v0, p1, v0

    .line 292
    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v1

    .line 293
    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 294
    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static getPathRect(Lcn/codemao/android/sketch/model/StickerFigureInfo;)V
    .registers 11

    .line 166
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    .line 167
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/StickerFigureInfo;->getPath()Landroid/graphics/Path;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    const v1, -0x39e3c400  # -9999.0f

    const v3, 0x461c3c00  # 9999.0f

    const/4 v4, 0x0

    const v3, -0x39e3c400  # -9999.0f

    const v4, 0x461c3c00  # 9999.0f

    const v5, 0x461c3c00  # 9999.0f

    const/4 v6, 0x0

    .line 172
    :goto_1e
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_55

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    .line 174
    invoke-virtual {v0, v6, v7, v8}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 175
    aget v8, v7, v2

    cmpg-float v8, v8, v4

    if-gez v8, :cond_38

    .line 176
    aget v4, v7, v2

    :cond_38
    const/4 v8, 0x1

    .line 178
    aget v9, v7, v8

    cmpg-float v9, v9, v5

    if-gez v9, :cond_41

    .line 179
    aget v5, v7, v8

    .line 181
    :cond_41
    aget v9, v7, v2

    cmpl-float v9, v9, v1

    if-lez v9, :cond_49

    .line 182
    aget v1, v7, v2

    .line 184
    :cond_49
    aget v9, v7, v8

    cmpl-float v9, v9, v3

    if-lez v9, :cond_51

    .line 185
    aget v3, v7, v8

    :cond_51
    const/high16 v7, 0x3f800000  # 1.0f

    add-float/2addr v6, v7

    goto :goto_1e

    .line 189
    :cond_55
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, v4, v5, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public static rotatePoint(Lcn/codemao/android/sketch/model/PointInfo;FFF)V
    .registers 9

    float-to-double v0, p3

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p3, v2

    .line 80
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 82
    iget v1, p0, Lcn/codemao/android/sketch/model/PointInfo;->x:F

    sub-float v2, v1, p1

    mul-float v2, v2, v0

    add-float/2addr v2, p1

    iget v3, p0, Lcn/codemao/android/sketch/model/PointInfo;->y:F

    sub-float v4, v3, p2

    mul-float v4, v4, p3

    sub-float/2addr v2, v4

    sub-float/2addr v3, p2

    mul-float v3, v3, v0

    add-float/2addr p2, v3

    sub-float/2addr v1, p1

    mul-float v1, v1, p3

    add-float/2addr p2, v1

    .line 84
    invoke-virtual {p0, v2, p2}, Lcn/codemao/android/sketch/model/PointInfo;->set(FF)V

    return-void
.end method

.method public static rotateRect(Landroid/graphics/RectF;FFF)V
    .registers 10

    .line 52
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 56
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 57
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    float-to-double v2, p3

    .line 58
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float p3, v4

    .line 59
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v3, v0, p1

    mul-float v4, v3, v2

    add-float/2addr p1, v4

    sub-float v4, v1, p2

    mul-float v5, v4, p3

    sub-float/2addr p1, v5

    mul-float v4, v4, v2

    add-float/2addr p2, v4

    mul-float v3, v3, p3

    add-float/2addr p2, v3

    sub-float/2addr p1, v0

    sub-float/2addr p2, v1

    .line 66
    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public static scaleRect(Landroid/graphics/RectF;F)V
    .registers 5

    .line 28
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 29
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v2, p1, v0

    mul-float p1, p1, v1

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v2, v0

    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    .line 37
    iget v0, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 38
    iget v0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 39
    iget v0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 40
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static scaleRect(Landroid/graphics/RectF;FFF)V
    .registers 5

    .line 329
    iget v0, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p2

    mul-float v0, v0, p1

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 330
    iget v0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p3

    mul-float v0, v0, p1

    add-float/2addr v0, p3

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 331
    iget v0, p0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p2

    mul-float v0, v0, p1

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 332
    iget p2, p0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, p3

    mul-float p2, p2, p1

    add-float/2addr p2, p3

    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static scaleRect(Landroid/graphics/RectF;FII)V
    .registers 10

    .line 303
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 304
    iget v1, p0, Landroid/graphics/RectF;->top:F

    .line 305
    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 306
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    mul-float v0, v0, p1

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float v4, p1, v4

    int-to-float p2, p2

    mul-float p2, p2, v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr p2, v5

    sub-float/2addr v0, p2

    mul-float v1, v1, p1

    int-to-float p3, p3

    mul-float v4, v4, p3

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    mul-float v2, v2, p1

    sub-float/2addr v2, p2

    mul-float p1, p1, v3

    sub-float/2addr p1, v4

    .line 315
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
