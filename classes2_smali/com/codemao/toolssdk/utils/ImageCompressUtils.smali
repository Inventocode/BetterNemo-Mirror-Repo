.class public final Lcom/codemao/toolssdk/utils/ImageCompressUtils;
.super Ljava/lang/Object;
.source "ImageCompressUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;,
        Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;,
        Lcom/codemao/toolssdk/utils/ImageCompressUtils$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/ImageCompressUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/ImageCompressUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/ImageCompressUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/ImageCompressUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final bitmapToBase64(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Ljava/lang/String;
    .registers 6

    .line 270
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getQuality()I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 273
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 274
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const/4 v0, 0x0

    .line 276
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object p2

    sget-object v0, Lcom/codemao/toolssdk/utils/ImageCompressUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-string v1, "data:image/jpeg;base64,"

    if-eq p2, v0, :cond_67

    const/4 v0, 0x2

    if-eq p2, v0, :cond_55

    const/4 v0, 0x3

    if-eq p2, v0, :cond_43

    .line 283
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_76

    .line 282
    :cond_43
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data:image/webp;base64,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_76

    .line 281
    :cond_55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data:image/png;base64,"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_76

    .line 280
    :cond_67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_76
    return-object p1
.end method

.method private final compressQuality(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Landroid/graphics/Bitmap;
    .registers 7

    .line 236
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 239
    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getQuality()I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 242
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    .line 243
    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getMaxFileSize()I

    move-result v2

    if-gt v1, v2, :cond_1e

    .line 245
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1

    .line 250
    :cond_1e
    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getQuality()I

    move-result v2

    .line 252
    :goto_22
    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getMaxFileSize()I

    move-result v3

    if-le v1, v3, :cond_3d

    const/16 v1, 0xa

    if-le v2, v1, :cond_3d

    .line 253
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v2, v2, -0xa

    .line 255
    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 256
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    goto :goto_22

    .line 259
    :cond_3d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 261
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "质量压缩: 质量从"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getQuality()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "调整到"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic saveCompressedImage$default(Lcom/codemao/toolssdk/utils/ImageCompressUtils;Landroid/graphics/Bitmap;Ljava/io/File;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;ILjava/lang/Object;)Z
    .registers 15

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_13

    .line 129
    new-instance p3, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v8}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;-><init>(IIIIZLandroid/graphics/Bitmap$CompressFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    :cond_13
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->saveCompressedImage(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Z

    move-result p0

    return p0
.end method

.method private final scaleBitmap(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Landroid/graphics/Bitmap;
    .registers 12

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 157
    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getMaxWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getMaxHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v3

    int-to-float v2, v4

    div-float v5, v1, v2

    .line 160
    sget-object v6, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "原始图片比例: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", 目标比例: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getMaxWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 164
    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getMaxHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    const/high16 v5, 0x3f800000  # 1.0f

    .line 167
    invoke-static {p2, v5}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    cmpl-float v0, p2, v5

    if-ltz v0, :cond_50

    return-object p1

    :cond_50
    mul-float v1, v1, p2

    float-to-int v0, v1

    mul-float v2, v2, p2

    float-to-int v1, v2

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "尺寸压缩: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x78

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 181
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 182
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    .line 184
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "scaledBitmap"

    .line 186
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final scaleBitmapNew(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Landroid/graphics/Bitmap;
    .registers 13

    .line 190
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 193
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "原始图片尺寸: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", 目标尺寸: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getMaxWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getMaxHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getMaxWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getMaxHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v0

    int-to-float v5, v1

    div-float v6, v4, v5

    .line 199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "原始图片比例: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", 目标比例: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    const/4 v7, 0x0

    cmpl-float v8, v6, v3

    if-lez v8, :cond_75

    mul-float v5, v5, v3

    float-to-int v3, v5

    sub-int/2addr v0, v3

    .line 209
    div-int/lit8 v0, v0, 0x2

    move v7, v0

    move v0, v3

    goto :goto_82

    :cond_75
    cmpg-float v5, v6, v3

    if-gez v5, :cond_82

    div-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v1, v3

    .line 213
    div-int/lit8 v1, v1, 0x2

    move v9, v3

    move v3, v1

    move v1, v9

    goto :goto_83

    :cond_82
    :goto_82
    const/4 v3, 0x0

    .line 216
    :goto_83
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "裁剪区域: x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 219
    invoke-static {p1, v7, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getMaxWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getMaxHeight()I

    move-result p2

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 225
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c9

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c9
    const-string p1, "scaledBitmap"

    .line 229
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public final compressBitmap(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;
    .registers 15

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    :try_start_a
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "开始压缩图片，原始尺寸: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getKeepAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->scaleBitmap(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_3f

    :cond_3b
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->scaleBitmapNew(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 61
    :goto_3f
    invoke-direct {p0, v1, p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->compressQuality(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 63
    invoke-direct {p0, v5, p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->bitmapToBase64(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 v7, p2, 0x4

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "压缩完成，最终尺寸: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 文件大小: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "字节"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 69
    new-instance p2, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;

    const/4 v4, 0x1

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int v0, v0, p1

    mul-int/lit8 v8, v0, 0x4

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v3, p2

    .line 69
    invoke-direct/range {v3 .. v11}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;-><init>(ZLandroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_95} :catch_96

    goto :goto_d2

    :catch_96
    move-exception p1

    .line 78
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "压缩图片失败: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 79
    new-instance p2, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1e

    const/4 v10, 0x0

    move-object v2, p2

    .line 79
    invoke-direct/range {v2 .. v10}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;-><init>(ZLandroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_d2
    return-object p2
.end method

.method public final compressFile(Ljava/io/File;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;
    .registers 14

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    :try_start_a
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_25

    .line 98
    new-instance p1, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "无法解码图片文件"

    const/16 v8, 0x1e

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;-><init>(ZLandroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 105
    :cond_25
    invoke-virtual {p0, v0, p2}, Lcom/codemao/toolssdk/utils/ImageCompressUtils;->compressBitmap(Landroid/graphics/Bitmap;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    long-to-int v5, p1

    const/4 v6, 0x0

    const/16 v7, 0x2f

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;->copy$default(Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;ZLandroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;

    move-result-object p1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3a} :catch_3b

    goto :goto_78

    :catch_3b
    move-exception p1

    .line 111
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "压缩文件图片失败: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 112
    new-instance p2, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1e

    const/4 v10, 0x0

    move-object v2, p2

    .line 112
    invoke-direct/range {v2 .. v10}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressResult;-><init>(ZLandroid/graphics/Bitmap;Ljava/lang/String;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, p2

    :goto_78
    return-object p1
.end method

.method public final createQuickCompressConfig()Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;
    .registers 9

    .line 307
    new-instance v7, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;

    .line 313
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x500

    const/16 v2, 0x400

    const/16 v3, 0x50

    const/high16 v4, 0x80000

    const/4 v5, 0x0

    move-object v0, v7

    .line 307
    invoke-direct/range {v0 .. v6}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;-><init>(IIIIZLandroid/graphics/Bitmap$CompressFormat;)V

    return-object v7
.end method

.method public final saveCompressedImage(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;)Z
    .registers 6

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputFile"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    :try_start_f
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 133
    invoke-virtual {p3}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getFormat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    invoke-virtual {p3}, Lcom/codemao/toolssdk/utils/ImageCompressUtils$CompressConfig;->getQuality()I

    move-result p3

    invoke-virtual {p1, v1, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    .line 134
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    if-eqz p1, :cond_40

    .line 137
    sget-object p3, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "保存压缩图片成功: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    goto :goto_64

    .line 139
    :cond_40
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p3, "保存压缩图片失败"

    invoke-virtual {p2, p3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_47} :catch_48

    goto :goto_64

    :catch_48
    move-exception p1

    .line 144
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "保存压缩图片异常: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_64
    return p1
.end method
