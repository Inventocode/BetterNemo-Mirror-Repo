.class public Lcom/codemao/creativecenter/utils/CreativeImageUtils;
.super Ljava/lang/Object;
.source "CreativeImageUtils.java"


# direct methods
.method public static blurByRenderScript(Landroid/graphics/Bitmap;ILandroid/widget/ImageView;Landroid/content/Context;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    .line 112
    :cond_3
    invoke-static {p3}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p3

    const/high16 v0, 0x3f000000  # 0.5f

    .line 113
    invoke-static {p0, v0}, Lcom/codemao/creativecenter/utils/CreativeImageUtils;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_13

    .line 115
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->destroy()V

    return-void

    .line 118
    :cond_13
    invoke-static {p3, p0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    .line 120
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    int-to-float p1, p1

    .line 121
    invoke-virtual {v1, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 123
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 125
    invoke-virtual {v0, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 126
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    invoke-virtual {p3}, Landroid/renderscript/RenderScript;->destroy()V

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 5

    const/4 v0, 0x1

    if-eqz p2, :cond_20

    if-nez p1, :cond_6

    goto :goto_20

    .line 161
    :cond_6
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 162
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v1, p2, :cond_e

    if-le p0, p1, :cond_20

    :cond_e
    int-to-float v0, v1

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 166
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 167
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 170
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_20
    :goto_20
    return v0
.end method

.method public static recycleImageBitmap(Landroid/widget/ImageView;)V
    .registers 3

    if-eqz p0, :cond_22

    .line 82
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_22

    .line 83
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_22

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_22

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_22
    :goto_22
    return-void
.end method

.method private static scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 9

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 142
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 143
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 144
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 145
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 146
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 147
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    return-object p1

    .line 150
    :cond_23
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public static takeBlurScreenShot(Landroid/app/Activity;Landroid/widget/ImageView;)V
    .registers 4

    .line 30
    :try_start_0
    invoke-static {}, Lcom/smarx/notchlib/NotchScreenManager;->getInstance()Lcom/smarx/notchlib/NotchScreenManager;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/CreativeImageUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/utils/CreativeImageUtils$1;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p0, v1}, Lcom/smarx/notchlib/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/smarx/notchlib/INotchScreen$NotchScreenCallback;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    return-void
.end method
