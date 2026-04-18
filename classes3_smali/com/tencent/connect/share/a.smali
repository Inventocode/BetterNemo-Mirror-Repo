.class public Lcom/tencent/connect/share/a;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static final a(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 3

    .line 411
    invoke-static {p0, p1, p2}, Lcom/tencent/connect/share/a;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_e

    const/4 p1, 0x1

    :goto_9
    if-ge p1, p0, :cond_13

    shl-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 p0, p0, 0x7

    .line 421
    div-int/2addr p0, p1

    mul-int/lit8 p1, p0, 0x8

    :cond_13
    return p1
.end method

.method private static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9

    .line 259
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 260
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 261
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_10

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 264
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 265
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 8

    const-string v0, "openSDK_LOG.AsynScaleCompressImage"

    .line 347
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return-object v2

    .line 350
    :cond_a
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 351
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 353
    :try_start_12
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception v3

    const-string v4, "scaleBitmap exception1:"

    .line 355
    invoke-static {v0, v4, v3}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    :goto_1c
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 358
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 359
    iget-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v5, :cond_69

    const/4 v5, -0x1

    if-eq v3, v5, :cond_69

    if-ne v4, v5, :cond_2a

    goto :goto_69

    :cond_2a
    if-le v3, v4, :cond_2d

    goto :goto_2e

    :cond_2d
    move v3, v4

    .line 364
    :goto_2e
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-le v3, p1, :cond_3c

    mul-int v3, p1, p1

    .line 366
    invoke-static {v1, v5, v3}, Lcom/tencent/connect/share/a;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_3c
    const/4 v3, 0x0

    .line 369
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 372
    :try_start_3f
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_4b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3f .. :try_end_43} :catch_44

    goto :goto_52

    :catch_44
    move-exception p0

    const-string v3, "scaleBitmap OutOfMemoryError:"

    .line 376
    invoke-static {v0, v3, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_51

    :catch_4b
    move-exception p0

    const-string v3, "scaleBitmap exception2:"

    .line 374
    invoke-static {v0, v3, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_51
    move-object p0, v2

    :goto_52
    if-nez p0, :cond_5a

    const-string p0, "scaleBitmap return null"

    .line 379
    invoke-static {v0, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 382
    :cond_5a
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 383
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v0, v1, :cond_61

    goto :goto_62

    :cond_61
    move v0, v1

    :goto_62
    if-le v0, p1, :cond_68

    .line 386
    invoke-static {p0, p1}, Lcom/tencent/connect/share/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_68
    return-object p0

    :cond_69
    :goto_69
    return-object v2
.end method

.method protected static final a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 277
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 281
    :cond_e
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 283
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 285
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_28
    if-eqz p0, :cond_49

    .line 290
    :try_start_2a
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 291
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    invoke-virtual {p0, p2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 292
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 293
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 294
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_3f} :catch_45
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_3f} :catch_40

    return-object p1

    :catch_40
    move-exception p0

    .line 302
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :catch_45
    move-exception p0

    .line 299
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_49
    :goto_49
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/open/utils/d;)V
    .registers 5

    const-string v0, "openSDK_LOG.AsynScaleCompressImage"

    const-string v1, "scaleCompressImage()"

    .line 51
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const/4 p0, 0x1

    .line 54
    invoke-interface {p2, p0, v1}, Lcom/tencent/open/utils/d;->a(ILjava/lang/String;)V

    return-void

    .line 57
    :cond_13
    invoke-static {}, Lcom/tencent/open/utils/m;->a()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 p0, 0x2

    .line 59
    invoke-interface {p2, p0, v1}, Lcom/tencent/open/utils/d;->a(ILjava/lang/String;)V

    return-void

    .line 62
    :cond_1e
    new-instance v0, Lcom/tencent/connect/share/a$1;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/tencent/connect/share/a$1;-><init>(Landroid/os/Looper;Lcom/tencent/open/utils/d;)V

    .line 80
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/connect/share/a$2;

    invoke-direct {v1, p1, v0, p0}, Lcom/tencent/connect/share/a$2;-><init>(Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;II)Z
    .registers 3

    .line 35
    invoke-static {p0, p1, p2}, Lcom/tencent/connect/share/a;->b(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 12

    .line 429
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    .line 430
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    const/4 p0, 0x1

    const/4 v4, -0x1

    if-ne p2, v4, :cond_c

    const/4 v5, 0x1

    goto :goto_19

    :cond_c
    mul-double v5, v0, v2

    int-to-double v7, p2

    div-double/2addr v5, v7

    .line 433
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    :goto_19
    if-ne p1, v4, :cond_1e

    const/16 v0, 0x80

    goto :goto_2e

    :cond_1e
    int-to-double v6, p1

    div-double/2addr v0, v6

    .line 435
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v2, v6

    .line 436
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 435
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_2e
    if-ge v0, v5, :cond_31

    return v5

    :cond_31
    if-ne p2, v4, :cond_36

    if-ne p1, v4, :cond_36

    return p0

    :cond_36
    if-ne p1, v4, :cond_39

    return v5

    :cond_39
    return v0
.end method

.method private static final b(Ljava/lang/String;II)Z
    .registers 10

    const-string v0, "openSDK_LOG.AsynScaleCompressImage"

    .line 314
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    .line 317
    :cond_a
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 318
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 320
    :try_start_12
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception p0

    const-string v4, "isBitMapNeedToCompress exception:"

    .line 322
    invoke-static {v0, v4, p0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    :goto_1c
    iget p0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 325
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 326
    iget-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v5, :cond_5a

    const/4 v5, -0x1

    if-eq p0, v5, :cond_5a

    if-ne v4, v5, :cond_2a

    goto :goto_5a

    :cond_2a
    if-le p0, v4, :cond_2e

    move v5, p0

    goto :goto_2f

    :cond_2e
    move v5, v4

    :goto_2f
    if-ge p0, v4, :cond_32

    goto :goto_33

    :cond_32
    move p0, v4

    .line 332
    :goto_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "longSide="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "shortSide="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-gt v5, p2, :cond_59

    if-le p0, p1, :cond_58

    goto :goto_59

    :cond_58
    return v2

    :cond_59
    :goto_59
    return v3

    :cond_5a
    :goto_5a
    return v2
.end method
