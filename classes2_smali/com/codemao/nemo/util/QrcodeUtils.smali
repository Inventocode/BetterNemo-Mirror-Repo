.class public Lcom/codemao/nemo/util/QrcodeUtils;
.super Ljava/lang/Object;
.source "QrcodeUtils.java"


# direct methods
.method private static createQRCode(Ljava/lang/String;ILjava/util/Map;)Landroid/graphics/Bitmap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 38
    :try_start_0
    sget-object v0, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-static {p0, v0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object p0

    .line 39
    invoke-static {p0, p1, p1}, Lcom/codemao/nemo/util/QrcodeUtils;->renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    mul-int p1, v7, v7

    .line 42
    new-array v1, p1, [I

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_14
    if-ge p2, v7, :cond_33

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v7, :cond_30

    .line 47
    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_27

    mul-int v2, p2, v7

    add-int/2addr v2, v0

    const/high16 v3, -0x1000000

    .line 48
    aput v3, v1, v2

    goto :goto_2d

    :cond_27
    mul-int v2, p2, v7

    add-int/2addr v2, v0

    const/4 v3, -0x1

    .line 50
    aput v3, v1, v2

    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_30
    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    .line 56
    :cond_33
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v7

    move v6, v7

    .line 57
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    return-object p0

    :catch_43
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createQRCodeWithNoPadding(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 5

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->H:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {p0, p1, v0}, Lcom/codemao/nemo/util/QrcodeUtils;->createQRCode(Ljava/lang/String;ILjava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;II)Lcom/google/zxing/common/BitMatrix;
    .registers 12

    .line 67
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object p0

    if-eqz p0, :cond_47

    .line 71
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    .line 72
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    if-le p1, v0, :cond_16

    .line 75
    div-int/2addr p1, v0

    .line 76
    div-int/2addr p2, v1

    mul-int p1, p1, v0

    mul-int p2, p2, v1

    .line 80
    :cond_16
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 81
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 82
    div-int v2, p1, v0

    div-int v3, p2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 83
    new-instance v3, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v3, p1, p2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v4, 0x0

    :goto_2e
    if-ge p2, v1, :cond_46

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_32
    if-ge v5, v0, :cond_42

    .line 88
    invoke-virtual {p0, v5, p2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3e

    .line 89
    invoke-virtual {v3, v6, v4, v2, v2}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_3e
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v2

    goto :goto_32

    :cond_42
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v4, v2

    goto :goto_2e

    :cond_46
    return-object v3

    .line 69
    :cond_47
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
