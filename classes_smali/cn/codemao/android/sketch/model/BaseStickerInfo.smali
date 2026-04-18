.class public Lcn/codemao/android/sketch/model/BaseStickerInfo;
.super Ljava/lang/Object;
.source "BaseStickerInfo.java"


# instance fields
.field protected cavasRotate:F

.field helpRect:Landroid/graphics/RectF;

.field protected horizontalAdd:Z

.field private iPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

.field protected isDrawing:Z

.field mPaint:Landroid/graphics/Paint;

.field mRotateAngle:F

.field rectF:Landroid/graphics/RectF;

.field protected vericaleAdd:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->helpRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mRotateAngle:F

    .line 16
    iput v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->cavasRotate:F

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->horizontalAdd:Z

    .line 35
    iput-boolean v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->vericaleAdd:Z

    .line 37
    iput-boolean v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->isDrawing:Z

    return-void
.end method


# virtual methods
.method protected calculateCopyDiff()[I
    .registers 11

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 89
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v1

    invoke-interface {v1}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getRectHelper()Lcn/codemao/android/sketch/RectHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcn/codemao/android/sketch/RectHelper;->getCanvasRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 91
    invoke-virtual {p0}, Lcn/codemao/android/sketch/model/BaseStickerInfo;->getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/sketch/view/paint/IPaint;->getSketchControll()Lcn/codemao/android/sketch/view/paint/SketchControll;

    move-result-object v2

    const/16 v3, 0x12

    invoke-interface {v2, v3}, Lcn/codemao/android/sketch/view/paint/SketchControll;->getUnScaledSize(I)I

    move-result v2

    .line 95
    iget-object v3, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 96
    iget v5, v3, Landroid/graphics/RectF;->left:F

    .line 97
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 98
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 100
    instance-of v7, p0, Lcn/codemao/android/sketch/model/StickerTextInfo;

    if-eqz v7, :cond_39

    .line 101
    iget-object v3, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->helpRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 102
    iget v5, v3, Landroid/graphics/RectF;->left:F

    .line 103
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 104
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 109
    :cond_39
    iget-boolean v7, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->horizontalAdd:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_4e

    int-to-float v5, v2

    add-float/2addr v4, v5

    add-float/2addr v4, v5

    .line 110
    iget v5, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4a

    const/4 v4, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v4, 0x0

    :goto_4b
    iput-boolean v4, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->horizontalAdd:Z

    goto :goto_5c

    :cond_4e
    int-to-float v4, v2

    sub-float/2addr v5, v4

    sub-float/2addr v5, v4

    .line 112
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v5, v4

    if-gtz v4, :cond_59

    const/4 v4, 0x1

    goto :goto_5a

    :cond_59
    const/4 v4, 0x0

    :goto_5a
    iput-boolean v4, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->horizontalAdd:Z

    .line 116
    :goto_5c
    iget-boolean v4, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->vericaleAdd:Z

    if-eqz v4, :cond_6f

    int-to-float v4, v2

    add-float/2addr v3, v4

    add-float/2addr v3, v4

    .line 117
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_6b

    const/4 v1, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v1, 0x0

    :goto_6c
    iput-boolean v1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->vericaleAdd:Z

    goto :goto_7d

    :cond_6f
    int-to-float v3, v2

    sub-float/2addr v6, v3

    sub-float/2addr v6, v3

    .line 119
    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v6, v1

    if-gtz v1, :cond_7a

    const/4 v1, 0x1

    goto :goto_7b

    :cond_7a
    const/4 v1, 0x0

    :goto_7b
    iput-boolean v1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->vericaleAdd:Z

    .line 123
    :goto_7d
    iget-boolean v1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->horizontalAdd:Z

    if-eqz v1, :cond_83

    move v1, v2

    goto :goto_84

    :cond_83
    neg-int v1, v2

    :goto_84
    aput v1, v0, v9

    .line 124
    iget-boolean v1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->vericaleAdd:Z

    if-eqz v1, :cond_8b

    goto :goto_8c

    :cond_8b
    neg-int v2, v2

    :goto_8c
    aput v2, v0, v8

    return-object v0
.end method

.method public getCavasRotate()F
    .registers 3

    .line 27
    iget v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->cavasRotate:F

    const/high16 v1, 0x43b40000  # 360.0f

    rem-float/2addr v0, v1

    return v0
.end method

.method public getHelpRect()Landroid/graphics/RectF;
    .registers 2

    .line 52
    iget-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->helpRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRectF()Landroid/graphics/RectF;
    .registers 2

    .line 40
    iget-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getiPaint()Lcn/codemao/android/sketch/view/paint/IPaint;
    .registers 2

    .line 69
    iget-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->iPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    return-object v0
.end method

.method public getmPaint()Landroid/graphics/Paint;
    .registers 2

    .line 44
    iget-object v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getmRotateAngle()F
    .registers 2

    .line 57
    iget v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mRotateAngle:F

    return v0
.end method

.method public isDrawing()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->isDrawing:Z

    return v0
.end method

.method public setCavasRotate(F)V
    .registers 2

    .line 31
    iput p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->cavasRotate:F

    return-void
.end method

.method public setDrawing(Z)V
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->isDrawing:Z

    return-void
.end method

.method protected setHorizontalAdd(Z)V
    .registers 2

    .line 131
    iput-boolean p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->horizontalAdd:Z

    return-void
.end method

.method public setRectF(Landroid/graphics/RectF;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method protected setVericaleAdd(Z)V
    .registers 2

    .line 136
    iput-boolean p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->vericaleAdd:Z

    return-void
.end method

.method public setiPaint(Lcn/codemao/android/sketch/view/paint/IPaint;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->iPaint:Lcn/codemao/android/sketch/view/paint/IPaint;

    return-void
.end method

.method public setmPaint(Landroid/graphics/Paint;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setmRotateAngle(F)V
    .registers 2

    .line 61
    iput p1, p0, Lcn/codemao/android/sketch/model/BaseStickerInfo;->mRotateAngle:F

    return-void
.end method
