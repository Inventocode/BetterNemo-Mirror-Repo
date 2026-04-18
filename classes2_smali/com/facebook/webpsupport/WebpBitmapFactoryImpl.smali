.class public Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;
.super Ljava/lang/Object;
.source "WebpBitmapFactoryImpl.java"


# annotations
.annotation build Lcom/facebook/common/internal/DoNotStrip;
.end annotation


# static fields
.field public static final IN_BITMAP_SUPPORTED:Z

.field private static mBitmapCreator:Lcom/facebook/common/webp/BitmapCreator;

.field private static mWebpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->IN_BITMAP_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBitmap(IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 472
    sget-boolean v0, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->IN_BITMAP_SUPPORTED:Z

    if-eqz v0, :cond_13

    if-eqz p2, :cond_13

    iget-object v0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    .line 475
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 476
    iget-object p0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    return-object p0

    .line 478
    :cond_13
    sget-object p2, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->mBitmapCreator:Lcom/facebook/common/webp/BitmapCreator;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-interface {p2, p0, p1, v0}, Lcom/facebook/common/webp/BitmapCreator;->createNakedBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getInTempStorageFromOptions(Landroid/graphics/BitmapFactory$Options;)[B
    .registers 1
    .param p0  # Landroid/graphics/BitmapFactory$Options;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    if-eqz p0, :cond_7

    .line 502
    iget-object p0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/16 p0, 0x2000

    new-array p0, p0, [B

    return-object p0
.end method

.method private static getScaleFromOptions(Landroid/graphics/BitmapFactory$Options;)F
    .registers 4
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p0, :cond_1f

    .line 513
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_b

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 517
    :cond_b
    iget-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz v1, :cond_1f

    .line 518
    iget v1, p0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 519
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 520
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eqz v1, :cond_1f

    if-eqz v2, :cond_1f

    if-eq v1, p0, :cond_1f

    int-to-float p0, v2

    int-to-float v0, v1

    div-float v0, p0, v0

    :cond_1f
    return v0
.end method

.method private static getWebpHeader(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)[B
    .registers 4

    const/16 v0, 0x14

    .line 62
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    if-eqz p1, :cond_f

    .line 66
    iget-object p1, p1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    if-eqz p1, :cond_f

    array-length v1, p1

    if-lt v1, v0, :cond_f

    goto :goto_11

    :cond_f
    new-array p1, v0, [B

    :goto_11
    const/4 v1, 0x0

    .line 72
    :try_start_12
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    .line 73
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hookDecodeByteArray([BII)Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    const/4 v0, 0x0

    .line 183
    invoke-static {p0, p1, p2, v0}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->hookDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static hookDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 11
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 145
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/StaticWebpNativeLoader;->ensure()V

    .line 147
    sget-boolean v0, Lcom/facebook/common/webp/WebpSupportStatus;->sIsWebpSupportRequired:Z

    if-eqz v0, :cond_28

    invoke-static {p0, p1, p2}, Lcom/facebook/common/webp/WebpSupportStatus;->isWebpHeader([BII)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 153
    invoke-static {p3}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->getScaleFromOptions(Landroid/graphics/BitmapFactory$Options;)F

    move-result v5

    .line 154
    invoke-static {p3}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->getInTempStorageFromOptions(Landroid/graphics/BitmapFactory$Options;)[B

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    .line 148
    invoke-static/range {v1 .. v6}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_24

    const-string p1, "webp_direct_decode_array"

    .line 157
    invoke-static {p1}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->sendWebpErrorLog(Ljava/lang/String;)V

    .line 159
    :cond_24
    invoke-static {p0, p3}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->setWebpBitmapOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V

    goto :goto_33

    .line 161
    :cond_28
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->originalDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_33

    const-string p1, "webp_direct_decode_array_failed_on_no_webp"

    .line 163
    invoke-static {p1}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->sendWebpErrorLog(Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-object p0
.end method

.method public static hookDecodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    const/4 v0, 0x0

    .line 261
    invoke-static {p0, v0}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->hookDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static hookDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    const/4 v0, 0x0

    .line 251
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1a

    .line 252
    :try_start_6
    invoke-static {v1, v0, p1}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->hookDecodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_e

    .line 253
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_1a

    goto :goto_1a

    :catchall_e
    move-exception p0

    .line 251
    :try_start_f
    throw p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_10

    :catchall_10
    move-exception p1

    .line 253
    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_19

    :catchall_15
    move-exception v1

    :try_start_16
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_1a

    :catch_1a
    :goto_1a
    return-object v0
.end method

.method public static hookDecodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 2
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    const/4 v0, 0x0

    .line 446
    invoke-static {p0, v0, v0}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->hookDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static hookDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 9
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 395
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/StaticWebpNativeLoader;->ensure()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 398
    invoke-static {p0, v0, v1, v2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->nativeSeek(Ljava/io/FileDescriptor;JZ)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_5b

    .line 400
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v3}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->wrapToMarkSupportedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 402
    :try_start_19
    invoke-static {v3, p2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->getWebpHeader(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)[B

    move-result-object v4

    .line 403
    sget-boolean v5, Lcom/facebook/common/webp/WebpSupportStatus;->sIsWebpSupportRequired:Z

    if-eqz v5, :cond_43

    const/16 v5, 0x14

    invoke-static {v4, v2, v5}, Lcom/facebook/common/webp/WebpSupportStatus;->isWebpHeader([BII)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 407
    invoke-static {p2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->getScaleFromOptions(Landroid/graphics/BitmapFactory$Options;)F

    move-result p0

    .line 408
    invoke-static {p2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->getInTempStorageFromOptions(Landroid/graphics/BitmapFactory$Options;)[B

    move-result-object v0

    .line 404
    invoke-static {v3, p2, p0, v0}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->nativeDecodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_3c

    const-string v0, "webp_direct_decode_fd"

    .line 411
    invoke-static {v0}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->sendWebpErrorLog(Ljava/lang/String;)V

    .line 413
    :cond_3c
    invoke-static {p1}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->setPaddingDefaultValues(Landroid/graphics/Rect;)V

    .line 414
    invoke-static {p0, p2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->setWebpBitmapOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V

    goto :goto_52

    :cond_43
    const/4 v2, 0x1

    .line 416
    invoke-static {p0, v0, v1, v2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->nativeSeek(Ljava/io/FileDescriptor;JZ)J

    .line 417
    invoke-static {p0, p1, p2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->originalDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_52

    const-string p1, "webp_direct_decode_fd_failed_on_no_webp"

    .line 419
    invoke-static {p1}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->sendWebpErrorLog(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_19 .. :try_end_52} :catchall_56

    .line 424
    :cond_52
    :goto_52
    :try_start_52
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_67

    goto :goto_67

    :catchall_56
    move-exception p0

    :try_start_57
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5a

    .line 427
    :catchall_5a
    throw p0

    .line 430
    :cond_5b
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v0, p1, p2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->hookDecodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 431
    invoke-static {p1}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->setPaddingDefaultValues(Landroid/graphics/Rect;)V

    :catchall_67
    :goto_67
    return-object p0
.end method

.method public static hookDecodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    const/4 v0, 0x0

    .line 334
    invoke-static {p0, p1, v0}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->hookDecodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static hookDecodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 307
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x0

    .line 309
    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_22

    .line 310
    :try_start_a
    invoke-static {p0, v0, p1, v1, p2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->hookDecodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_14

    if-eqz p1, :cond_23

    .line 311
    :try_start_10
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_22

    goto :goto_23

    :catchall_14
    move-exception p0

    .line 309
    :try_start_15
    throw p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    if-eqz p1, :cond_21

    .line 311
    :try_start_19
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception p1

    :try_start_1e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    throw v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_22

    :catch_22
    nop

    .line 315
    :cond_23
    :goto_23
    sget-boolean p0, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->IN_BITMAP_SUPPORTED:Z

    if-eqz p0, :cond_38

    if-nez v1, :cond_38

    if-eqz p2, :cond_38

    iget-object p0, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez p0, :cond_30

    goto :goto_38

    .line 316
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Problem decoding into existing bitmap"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    :goto_38
    return-object v1
.end method

.method public static hookDecodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    if-nez p4, :cond_7

    .line 272
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 275
    :cond_7
    iget v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v0, :cond_1d

    if-eqz p1, :cond_1d

    .line 276
    iget p1, p1, Landroid/util/TypedValue;->density:I

    if-nez p1, :cond_16

    const/16 p1, 0xa0

    .line 278
    iput p1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_1d

    :cond_16
    const v0, 0xffff

    if-eq p1, v0, :cond_1d

    .line 280
    iput p1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 284
    :cond_1d
    :goto_1d
    iget p1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez p1, :cond_2b

    if-eqz p0, :cond_2b

    .line 285
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p0, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 288
    :cond_2b
    invoke-static {p2, p3, p4}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->hookDecodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static hookDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 2
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    const/4 v0, 0x0

    .line 237
    invoke-static {p0, v0, v0}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->hookDecodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static hookDecodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 199
    invoke-static {}, Lcom/facebook/imagepipeline/nativecode/StaticWebpNativeLoader;->ensure()V

    .line 200
    invoke-static {p0}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->wrapToMarkSupportedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    .line 204
    invoke-static {p0, p2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->getWebpHeader(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)[B

    move-result-object v0

    .line 205
    sget-boolean v1, Lcom/facebook/common/webp/WebpSupportStatus;->sIsWebpSupportRequired:Z

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lcom/facebook/common/webp/WebpSupportStatus;->isWebpHeader([BII)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 209
    invoke-static {p2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->getScaleFromOptions(Landroid/graphics/BitmapFactory$Options;)F

    move-result v0

    .line 210
    invoke-static {p2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->getInTempStorageFromOptions(Landroid/graphics/BitmapFactory$Options;)[B

    move-result-object v1

    .line 206
    invoke-static {p0, p2, v0, v1}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->nativeDecodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_2b

    const-string v0, "webp_direct_decode_stream"

    .line 213
    invoke-static {v0}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->sendWebpErrorLog(Ljava/lang/String;)V

    .line 215
    :cond_2b
    invoke-static {p0, p2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->setWebpBitmapOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V

    .line 216
    invoke-static {p1}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->setPaddingDefaultValues(Landroid/graphics/Rect;)V

    goto :goto_3d

    .line 218
    :cond_32
    invoke-static {p0, p1, p2}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->originalDecodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_3d

    const-string p1, "webp_direct_decode_stream_failed_on_no_webp"

    .line 220
    invoke-static {p1}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->sendWebpErrorLog(Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-object p0
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;F[B)Landroid/graphics/Bitmap;
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private static native nativeSeek(Ljava/io/FileDescriptor;JZ)J
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation
.end method

.method private static originalDecodeByteArray([BII)Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 191
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static originalDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 175
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static originalDecodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 1
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 387
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static originalDecodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 2
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 382
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static originalDecodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 1
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 451
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static originalDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 441
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static originalDecodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 2
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 341
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static originalDecodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 327
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static originalDecodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 5
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 298
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static originalDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 1
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 243
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static originalDecodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 231
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static sendWebpErrorLog(Ljava/lang/String;)V
    .registers 3

    .line 531
    sget-object v0, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->mWebpErrorLogger:Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;

    if-eqz v0, :cond_9

    const-string v1, "decoding_failure"

    .line 532
    invoke-interface {v0, p0, v1}, Lcom/facebook/common/webp/WebpBitmapFactory$WebpErrorLogger;->onWebpErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static setBitmapSize(Landroid/graphics/BitmapFactory$Options;II)V
    .registers 3
    .param p0  # Landroid/graphics/BitmapFactory$Options;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    if-eqz p0, :cond_6

    .line 373
    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 374
    iput p2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :cond_6
    return-void
.end method

.method private static setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .registers 5

    if-eqz p0, :cond_2d

    if-nez p1, :cond_5

    goto :goto_2d

    .line 85
    :cond_5
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eqz v0, :cond_20

    .line 87
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 88
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-eqz v1, :cond_1f

    if-eq v0, v1, :cond_1f

    .line 89
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-ne v0, v2, :cond_17

    goto :goto_1f

    .line 93
    :cond_17
    iget-boolean p1, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz p1, :cond_2d

    .line 94
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_2d

    :cond_1f
    :goto_1f
    return-void

    .line 96
    :cond_20
    sget-boolean v0, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->IN_BITMAP_SUPPORTED:Z

    if-eqz v0, :cond_2d

    iget-object p1, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2d

    const/16 p1, 0xa0

    .line 98
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method private static setOutDimensions(Landroid/graphics/BitmapFactory$Options;II)Z
    .registers 4
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    if-eqz p0, :cond_c

    .line 349
    iget-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_c

    .line 350
    iput p1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 351
    iput p2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private static setPaddingDefaultValues(Landroid/graphics/Rect;)V
    .registers 2
    .param p0  # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    if-eqz p0, :cond_b

    const/4 v0, -0x1

    .line 360
    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 361
    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 362
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 363
    iput v0, p0, Landroid/graphics/Rect;->right:I

    :cond_b
    return-void
.end method

.method private static setWebpBitmapOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V
    .registers 2

    .line 455
    invoke-static {p0, p1}, Lcom/facebook/webpsupport/WebpBitmapFactoryImpl;->setDensityFromOptions(Landroid/graphics/Bitmap;Landroid/graphics/BitmapFactory$Options;)V

    if-eqz p1, :cond_9

    const-string p0, "image/webp"

    .line 457
    iput-object p0, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :cond_9
    return-void
.end method

.method private static shouldPremultiply(Landroid/graphics/BitmapFactory$Options;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lcom/facebook/common/internal/DoNotStrip;
    .end annotation

    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    if-eqz p0, :cond_b

    .line 465
    iget-boolean p0, p0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    return p0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method private static wrapToMarkSupportedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3

    .line 55
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_e

    .line 56
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    :cond_e
    return-object p0
.end method
