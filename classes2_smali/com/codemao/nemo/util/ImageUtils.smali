.class public Lcom/codemao/nemo/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 4

    .line 411
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 412
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_b

    if-le p0, p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x1

    goto :goto_1d

    :cond_b
    :goto_b
    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 416
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 417
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 420
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_1d
    return p0
.end method

.method public static createBitmap(Landroid/view/ViewGroup;II)Landroid/graphics/Bitmap;
    .registers 5

    const/high16 v0, 0x40000000  # 2.0f

    .line 374
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 375
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 376
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measure(II)V

    .line 378
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 380
    :goto_1b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_2d

    .line 381
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr p2, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 384
    :cond_2d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 385
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 389
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 390
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 397
    :cond_4
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_f

    .line 398
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 400
    :cond_f
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 401
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 400
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 403
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 404
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static saveImg(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 330
    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 333
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 336
    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 337
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 340
    :cond_25
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v0, ".jpg"

    .line 341
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v2, 0x4b

    if-eqz v0, :cond_3a

    .line 342
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_4f

    :cond_3a
    const-string v0, ".webp"

    .line 343
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 344
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->WEBP:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_4f

    .line 346
    :cond_48
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 348
    :goto_4f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 349
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 350
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 351
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5e} :catch_5f

    :cond_5e
    return-object p1

    :catch_5f
    move-exception p0

    .line 355
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method
