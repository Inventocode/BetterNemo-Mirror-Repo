.class public Lcom/facebook/common/webp/WebpSupportStatus;
.super Ljava/lang/Object;
.source "WebpSupportStatus.java"


# static fields
.field private static final WEBP_NAME_BYTES:[B

.field private static final WEBP_RIFF_BYTES:[B

.field public static final sIsWebpSupportRequired:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Lcom/facebook/common/webp/WebpSupportStatus;->sIsWebpSupportRequired:Z

    .line 25
    invoke-static {}, Lcom/facebook/common/webp/WebpSupportStatus;->isExtendedWebpSupported()Z

    const-string v0, "RIFF"

    .line 83
    invoke-static {v0}, Lcom/facebook/common/webp/WebpSupportStatus;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/common/webp/WebpSupportStatus;->WEBP_RIFF_BYTES:[B

    const-string v0, "WEBP"

    .line 84
    invoke-static {v0}, Lcom/facebook/common/webp/WebpSupportStatus;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/common/webp/WebpSupportStatus;->WEBP_NAME_BYTES:[B

    const-string v0, "VP8 "

    .line 89
    invoke-static {v0}, Lcom/facebook/common/webp/WebpSupportStatus;->asciiBytes(Ljava/lang/String;)[B

    const-string v0, "VP8L"

    .line 90
    invoke-static {v0}, Lcom/facebook/common/webp/WebpSupportStatus;->asciiBytes(Ljava/lang/String;)[B

    const-string v0, "VP8X"

    .line 91
    invoke-static {v0}, Lcom/facebook/common/webp/WebpSupportStatus;->asciiBytes(Ljava/lang/String;)[B

    return-void
.end method

.method private static asciiBytes(Ljava/lang/String;)[B
    .registers 3

    :try_start_0
    const-string v0, "ASCII"

    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ASCII not found!"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static isExtendedWebpSupported()Z
    .registers 5

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const/4 v3, 0x1

    if-ne v0, v1, :cond_25

    const-string v0, "UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA=="

    .line 107
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 108
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 109
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 110
    array-length v4, v0

    invoke-static {v0, v2, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 116
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v0, v3, :cond_24

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v0, v3, :cond_25

    :cond_24
    return v2

    :cond_25
    return v3
.end method

.method public static isWebpHeader([BII)Z
    .registers 4

    const/16 v0, 0x14

    if-lt p2, v0, :cond_18

    .line 191
    sget-object p2, Lcom/facebook/common/webp/WebpSupportStatus;->WEBP_RIFF_BYTES:[B

    .line 192
    invoke-static {p0, p1, p2}, Lcom/facebook/common/webp/WebpSupportStatus;->matchBytePattern([BI[B)Z

    move-result p2

    if-eqz p2, :cond_18

    add-int/lit8 p1, p1, 0x8

    sget-object p2, Lcom/facebook/common/webp/WebpSupportStatus;->WEBP_NAME_BYTES:[B

    .line 193
    invoke-static {p0, p1, p2}, Lcom/facebook/common/webp/WebpSupportStatus;->matchBytePattern([BI[B)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private static matchBytePattern([BI[B)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_1e

    if-nez p0, :cond_6

    goto :goto_1e

    .line 203
    :cond_6
    array-length v1, p2

    add-int/2addr v1, p1

    array-length v2, p0

    if-le v1, v2, :cond_c

    return v0

    :cond_c
    const/4 v1, 0x0

    .line 207
    :goto_d
    array-length v2, p2

    if-ge v1, v2, :cond_1c

    add-int v2, v1, p1

    .line 208
    aget-byte v2, p0, v2

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_19

    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    :goto_1e
    return v0
.end method
