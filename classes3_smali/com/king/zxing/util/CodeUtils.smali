.class public final Lcom/king/zxing/util/CodeUtils;
.super Ljava/lang/Object;
.source "CodeUtils.java"


# direct methods
.method private static addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 11

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-nez p1, :cond_7

    return-object p0

    .line 213
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 214
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eqz v1, :cond_5b

    if-nez v2, :cond_1c

    goto :goto_5b

    :cond_1c
    if-eqz v3, :cond_5a

    if-nez v4, :cond_21

    goto :goto_5a

    :cond_21
    int-to-float v5, v1

    mul-float v5, v5, p2

    int-to-float p2, v3

    div-float/2addr v5, p2

    .line 228
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 230
    :try_start_2c
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    .line 231
    invoke-virtual {v6, p0, v7, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 232
    div-int/lit8 p0, v1, 0x2

    int-to-float p0, p0

    div-int/lit8 v7, v2, 0x2

    int-to-float v7, v7

    invoke-virtual {v6, v5, v5, p0, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    sub-int/2addr v1, v3

    .line 233
    div-int/lit8 v1, v1, 0x2

    int-to-float p0, v1

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    invoke-virtual {v6, p1, p0, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 234
    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 235
    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4f} :catch_51

    move-object v0, p2

    goto :goto_59

    :catch_51
    move-exception p0

    .line 238
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    :goto_59
    return-object v0

    :cond_5a
    :goto_5a
    return-object p0

    :cond_5b
    :goto_5b
    return-object v0
.end method

.method private static compressBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 8

    .line 463
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 465
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 466
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 467
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    .line 468
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    int-to-float p1, p1

    cmpl-float v4, v2, p1

    if-lez v4, :cond_19

    div-float/2addr v2, p1

    float-to-int p1, v2

    goto :goto_1a

    :cond_19
    const/4 p1, 0x1

    :goto_1a
    int-to-float p2, p2

    cmpl-float v2, v3, p2

    if-lez v2, :cond_22

    div-float/2addr v3, p2

    float-to-int p2, v3

    goto :goto_23

    :cond_22
    const/4 p2, 0x1

    .line 478
    :goto_23
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-gtz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, p1

    .line 481
    :goto_2b
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 483
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 484
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    const/high16 v0, -0x1000000

    .line 94
    invoke-static {p0, p1, p2, v0}, Lcom/king/zxing/util/CodeUtils;->createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .registers 11

    .line 139
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 140
    sget-object v0, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v1, "utf-8"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .line 145
    invoke-static/range {v0 .. v5}, Lcom/king/zxing/util/CodeUtils;->createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;FLjava/util/Map;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;FLjava/util/Map;I)Landroid/graphics/Bitmap;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/graphics/Bitmap;",
            "F",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;I)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 166
    :try_start_0
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    move-object v1, p0

    move v3, p1

    move v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    mul-int p4, p1, p1

    .line 167
    new-array v1, p4, [I

    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_15
    if-ge v0, p1, :cond_32

    const/4 v2, 0x0

    :goto_18
    if-ge v2, p1, :cond_2f

    .line 172
    invoke-virtual {p0, v2, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_26

    mul-int v3, v0, p1

    add-int/2addr v3, v2

    .line 173
    aput p5, v1, v3

    goto :goto_2c

    :cond_26
    mul-int v3, v0, p1

    add-int/2addr v3, v2

    const/4 v4, -0x1

    .line 175
    aput v4, v1, v3

    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 181
    :cond_32
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v6, p1

    move v7, p1

    .line 182
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    if-eqz p2, :cond_48

    .line 185
    invoke-static {p0, p2, p3}, Lcom/king/zxing/util/CodeUtils;->addLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_48
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_48} :catch_49

    :cond_48
    return-object p0

    :catch_49
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5

    const v0, 0x3e4ccccd  # 0.2f

    .line 106
    invoke-static {p0, p1, p2, v0, p3}, Lcom/king/zxing/util/CodeUtils;->createQRCode(Ljava/lang/String;ILandroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getRGBLuminanceSource(Landroid/graphics/Bitmap;)Lcom/google/zxing/RGBLuminanceSource;
    .registers 12

    .line 494
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 495
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    .line 497
    new-array v2, v2, [I

    .line 498
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 499
    new-instance p0, Lcom/google/zxing/RGBLuminanceSource;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/zxing/RGBLuminanceSource;-><init>(II[I)V

    return-object p0
.end method

.method public static parseQRCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 251
    sget-object v1, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    const-string v2, "utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v1, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-static {p0, v0}, Lcom/king/zxing/util/CodeUtils;->parseQRCode(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseQRCode(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 263
    invoke-static {p0, p1}, Lcom/king/zxing/util/CodeUtils;->parseQRCodeResult(Ljava/lang/String;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 265
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseQRCodeResult(Ljava/lang/String;IILjava/util/Map;)Lcom/google/zxing/Result;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 291
    :try_start_1
    new-instance v1, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    .line 293
    invoke-static {p0, p1, p2}, Lcom/king/zxing/util/CodeUtils;->compressBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/king/zxing/util/CodeUtils;->getRGBLuminanceSource(Landroid/graphics/Bitmap;)Lcom/google/zxing/RGBLuminanceSource;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_6e

    if-eqz p0, :cond_76

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 298
    :try_start_12
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v3, p0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 299
    invoke-virtual {v1, v2, p3}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_22

    const/4 v2, 0x0

    goto :goto_23

    :catch_22
    const/4 v2, 0x1

    :goto_23
    if-eqz v2, :cond_3a

    .line 307
    :try_start_25
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 308
    invoke-virtual {v1, v2, p3}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_37} :catch_39

    const/4 v2, 0x0

    goto :goto_3a

    :catch_39
    const/4 v2, 0x1

    :cond_3a
    :goto_3a
    if-eqz v2, :cond_4e

    .line 317
    :try_start_3c
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v3, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    invoke-direct {v3, p0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 318
    invoke-virtual {v1, v2, p3}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p2
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4a} :catch_4c

    move-object v0, p2

    goto :goto_4f

    :catch_4c
    const/4 p1, 0x1

    goto :goto_4f

    :cond_4e
    move p1, v2

    :goto_4f
    if-eqz p1, :cond_6a

    .line 325
    :try_start_51
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->isRotateSupported()Z

    move-result p1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_55} :catch_6e

    if-eqz p1, :cond_6a

    .line 327
    :try_start_57
    new-instance p1, Lcom/google/zxing/BinaryBitmap;

    new-instance p2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p1, p2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 328
    invoke-virtual {v1, p1, p3}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_69} :catch_6a

    move-object v0, p0

    .line 334
    :catch_6a
    :cond_6a
    :try_start_6a
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/QRCodeReader;->reset()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_76

    :catch_6e
    move-exception p0

    .line 338
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    :cond_76
    :goto_76
    return-object v0
.end method

.method public static parseQRCodeResult(Ljava/lang/String;Ljava/util/Map;)Lcom/google/zxing/Result;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    const/16 v0, 0x1c2

    const/16 v1, 0x320

    .line 277
    invoke-static {p0, v0, v1, p1}, Lcom/king/zxing/util/CodeUtils;->parseQRCodeResult(Ljava/lang/String;IILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method
